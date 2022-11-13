object FizicForm: TFizicForm
  Left = 460
  Top = 202
  Width = 648
  Height = 580
  Align = alClient
  Caption = #1060#1080#1079#1080#1095#1077#1089#1082#1080#1077' '#1083#1080#1094#1072
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
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 5
    Top = 30
    Width = 1000
    Height = 800
    DataSource = MainForm.DataSourceFiz
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FIZ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_BIRTH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBER_PERSONAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INN'
        Visible = True
      end>
  end
  object btnZakritFiz: TButton
    Left = 1100
    Top = 10
    Width = 115
    Height = 18
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = btnZakritFizClick
  end
  object DBNavigator1: TDBNavigator
    Left = 5
    Top = 10
    Width = 500
    Height = 18
    DataSource = MainForm.DataSourceFiz
    TabOrder = 2
  end
  object btnDobavitZapis: TButton
    Left = 1100
    Top = 48
    Width = 115
    Height = 18
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 3
    OnClick = btnDobavitZapisClick
  end
  object btnUdalitZapis: TButton
    Left = 1100
    Top = 80
    Width = 115
    Height = 18
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 4
    OnClick = btnUdalitZapisClick
  end
end
