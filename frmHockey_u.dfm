object frmHockey: TfrmHockey
  Left = 284
  Top = 260
  Width = 737
  Height = 323
  Caption = 'Hockey results'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblOutput: TLabel
    Left = 8
    Top = 184
    Width = 3
    Height = 13
  end
  object stgResults: TStringGrid
    Left = 8
    Top = 16
    Width = 545
    Height = 145
    ColCount = 8
    TabOrder = 3
  end
  object btnReadInData: TButton
    Left = 576
    Top = 16
    Width = 81
    Height = 49
    Caption = '&Enter Data'
    TabOrder = 0
    OnClick = btnReadInDataClick
  end
  object btnDisplay: TButton
    Left = 576
    Top = 72
    Width = 81
    Height = 49
    Caption = '&Display'
    TabOrder = 1
    OnClick = btnDisplayClick
  end
  object bmbClose: TBitBtn
    Left = 576
    Top = 136
    Width = 81
    Height = 41
    TabOrder = 2
    Kind = bkClose
  end
end
