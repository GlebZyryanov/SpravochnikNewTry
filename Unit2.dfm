object SotrudForm: TSotrudForm
  Left = 300
  Top = 215
  Width = 970
  Height = 607
  Align = alClient
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
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
  object DBNavigator1: TDBNavigator
    Left = 5
    Top = 10
    Width = 500
    Height = 18
    DataSource = MainForm.DataSourceSOTRUD
    TabOrder = 0
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
  object DBGridSOTRUD: TDBGrid
    Left = 5
    Top = 30
    Width = 1000
    Height = 800
    DataSource = MainForm.DataSourceSOTRUD
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_SOTR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ur'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fiz'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dolj'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_WORK_START'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_WORK_END'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WORKPHONE_NUMBER'
        Visible = True
      end>
  end
end
