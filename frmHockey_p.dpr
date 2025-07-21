program frmHockey_p;

uses
  Forms,
  frmHockey_u in 'frmHockey_u.pas' {frmHockey};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmHockey, frmHockey);
  Application.Run;
end.
