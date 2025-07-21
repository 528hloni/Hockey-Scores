unit frmHockey_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Buttons;

type
  TfrmHockey = class(TForm)
    stgResults: TStringGrid;
    btnReadInData: TButton;
    btnDisplay: TButton;
    lblOutput: TLabel;
    bmbClose: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnReadInDataClick(Sender: TObject);
    procedure btnDisplayClick(Sender: TObject);
  private
    ar2Results: array[1..4,1..7] of integer;
  public
    { Public declarations }
  end;

var
  frmHockey: TfrmHockey;

implementation

{$R *.dfm}

///////////////////////////////////////////////////// //////////
procedure TfrmHockey.FormShow(Sender: TObject);
var
 iRow :integer;
begin
  for iRow := 1 to 4 do
    stgResults.Cells[0,iRow] := 'Team ' + intToStr(iRow);

  stgResults.Cells[1,0] := 'Game 1';
  stgResults.Cells[2,0] := 'Game 2';
  stgResults.Cells[3,0] := 'Game 3';
  stgResults.Cells[4,0] := 'Game 4';
  stgResults.Cells[5,0] := 'Game 5';
  stgResults.Cells[6,0] := 'TOTAL';
  stgResults.Cells[7,0] := 'AVERAGE';
end;
///////////////////////////////////////////////////// //////////
procedure TfrmHockey.btnReadInDataClick(Sender: TObject);
var
  iRow, iCol :integer;
begin
for iRow := 1 to 4 do
  for iCol := 1 to 5 do
      ar2Results[iRow , iCol] := StrToInt(InputBox('Enter point scored for',
                   ' Team ' + IntToStr(iRow) + ' Game ' + IntToStr(iCol) ,'')) ;
end;
///////////////////////////////////////////////////// //////////
procedure TfrmHockey.btnDisplayClick(Sender: TObject);
var
  iRow, iCol, iLargest,  iTotal :integer;
  sWinner :string;
begin
  iLargest := 0;
  for iRow := 1 to 4 do
    begin
      iTotal := 0;
      for iCol := 1 to 5 do
        begin
           stgResults.Cells[iCol,iRow] := IntToStr(ar2Results[iRow,iCol]);
           iTotal := iTotal + ar2Results[iRow,iCol];
        end;
      stgResults.Cells[6,iRow] := IntToStr(iTotal);
      stgResults.Cells[7,iRow] := FloatToStrf(iTotal/5,ffFixed,5,1);
      if iTotal > iLargest then
         iLargest := iTotal;
    end;

  sWinner := 'Winning team(s): ' ;
  for iRow := 1 to 4 do
    if StrToInt(stgResults.Cells[6,iRow]) = iLargest then
       sWinner := sWinner + #13 + IntToStr(iRow) ;

  lblOutput.Caption := sWinner;
end;
///////////////////////////////////////////////////// //////////
end.
