object SotrudForm: TSotrudForm
  Left = 232
  Top = 129
  Width = 1031
  Height = 731
  HorzScrollBar.Position = 218
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
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridSOTRUD: TDBGrid
    Left = -213
    Top = 56
    Width = 1000
    Height = 600
    DataSource = MainForm.DataSourceSOTRUD
    TabOrder = 0
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
      end
      item
        Expanded = False
        FieldName = 'UR_NAME'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIZ_NAME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_NAME'
        Visible = True
      end>
  end
  object CheckBoxFormSOTRUD: TCheckBox
    Left = 782
    Top = 610
    Width = 233
    Height = 17
    Caption = #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103#1084
    TabOrder = 1
    OnClick = CheckBoxFormSOTRUDClick
  end
  object EditFormSOTRUD: TEdit
    Left = 832
    Top = 584
    Width = 137
    Height = 21
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = -213
    Top = 10
    Width = 500
    Height = 18
    DataSource = MainForm.DataSourceSOTRUD
    TabOrder = 3
  end
  object btnZakrit: TButton
    Left = 846
    Top = 60
    Width = 120
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 4
    OnClick = btnZakritClick
  end
  object btnDobavitZapis: TButton
    Left = 846
    Top = 100
    Width = 120
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
    TabOrder = 5
    OnClick = btnDobavitZapisClick
  end
  object btnUdalitZapis: TButton
    Left = 846
    Top = 140
    Width = 107
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
    TabOrder = 6
    OnClick = btnUdalitZapisClick
  end
  object CB1: TDBLookupComboBox
    Left = 840
    Top = 248
    Width = 145
    Height = 21
    DataField = 'UR_NAME'
    DataSource = MainForm.DataSourceSOTRUD
    TabOrder = 7
  end
  object Button1: TButton
    Left = 840
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 832
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 9
    OnClick = Button2Click
  end
end
