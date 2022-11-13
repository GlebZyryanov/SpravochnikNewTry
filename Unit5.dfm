object DoljnostiForm: TDoljnostiForm
  Left = 324
  Top = 183
  Width = 648
  Height = 600
  Align = alClient
  Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridFormDolj: TDBGrid
    Left = -3
    Top = 30
    Width = 1000
    Height = 1000
    Align = alCustom
    DataSource = MainForm.DataSourceDoljnosti
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnZakrit: TButton
    Left = 1100
    Top = 10
    Width = 120
    Height = 18
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = btnZakritClick
  end
  object btnDobavitZapis: TButton
    Left = 1100
    Top = 48
    Width = 120
    Height = 18
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 2
    OnClick = btnDobavitZapisClick
  end
  object btnUdalitZapis: TButton
    Left = 1100
    Top = 80
    Width = 120
    Height = 18
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 3
    OnClick = btnUdalitZapisClick
  end
end
