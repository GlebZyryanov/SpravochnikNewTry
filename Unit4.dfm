object UrForm: TUrForm
  Left = 234
  Top = 177
  Width = 935
  Height = 599
  HorzScrollBar.Position = 302
  Align = alClient
  Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1077' '#1083#1080#1094#1072
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
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btnZakritUR: TButton
    Left = 798
    Top = 10
    Width = 120
    Height = 18
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 0
    OnClick = btnZakritURClick
  end
  object DBGrid2URFORM: TDBGrid
    Left = -297
    Top = 30
    Width = 1000
    Height = 800
    Align = alCustom
    DataSource = MainForm.DataSourceUR
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_UR'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_L'
        Title.Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_S'
        Title.Caption = #1057#1086#1082#1088'.'#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OGRN'
        Title.Caption = #1054#1043#1056#1053
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INN'
        Title.Caption = #1048#1053#1053
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KPP'
        Title.Caption = #1050#1055#1055
        Width = 80
        Visible = True
      end>
  end
  object DBNavigator2URFORM: TDBNavigator
    Left = -297
    Top = 10
    Width = 500
    Height = 18
    DataSource = MainForm.DataSourceUR
    TabOrder = 2
  end
  object btnDobavitZapis: TButton
    Left = 799
    Top = 48
    Width = 120
    Height = 18
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 3
    OnClick = btnDobavitZapisClick
  end
  object btnUdalitZapis: TButton
    Left = 799
    Top = 80
    Width = 120
    Height = 18
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 4
    OnClick = btnUdalitZapisClick
  end
end
