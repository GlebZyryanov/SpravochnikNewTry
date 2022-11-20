object MainForm: TMainForm
  Left = 320
  Top = 205
  Width = 549
  Height = 461
  Align = alClient
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1092#1080#1079#1080#1095#1077#1089#1082#1080#1093' '#1080' '#1102#1088#1080#1076#1080#1095#1077#1089#1082#1080#1093' '#1083#1080#1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 32
    Top = 24
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object N2: TMenuItem
        Caption = #1060#1080#1079#1080#1095#1077#1089#1082#1080#1077' '#1083#1080#1094#1072
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1077' '#1083#1080#1094#1072
        OnClick = N3Click
      end
      object N5: TMenuItem
        Caption = #1057#1087#1080#1089#1086#1082' '#1076#1086#1083#1078#1085#1086#1089#1090#1077#1081
        OnClick = N5Click
      end
    end
    object N4: TMenuItem
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
      Visible = False
      OnClick = N4Click
    end
  end
  object MainDB: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\gleb\Desktop\NewTryInDataBase\DB3.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    Left = 296
    Top = 80
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = MainDB
    Left = 312
    Top = 168
  end
  object IBTableDoljnost: TIBTable
    Database = MainDB
    Transaction = IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'ID_DOLJ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME_DOLJ'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <
      item
        Name = 'PK_DOLJNOSTI'
        Fields = 'ID_DOLJ'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'DOLJNOSTI'
    Left = 224
    Top = 160
    object IBTableDoljnostID_DOLJ: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'ID_DOLJ'
      Required = True
    end
    object IBTableDoljnostNAME_DOLJ: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1083#1078#1085#1086#1089#1090#1080
      DisplayWidth = 20
      FieldName = 'NAME_DOLJ'
      Size = 80
    end
  end
  object DataSourceFiz: TDataSource
    DataSet = IBTableFiz
    Left = 240
    Top = 104
  end
  object IBTableFiz: TIBTable
    Database = MainDB
    Transaction = IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'ID_FIZ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FIO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DATE_BIRTH'
        Attributes = [faRequired]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NUMBER_PERSONAL'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'INN'
        DataType = ftString
        Size = 11
      end>
    IndexDefs = <
      item
        Name = 'PK_FIZ'
        Fields = 'ID_FIZ'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'FIZ'
    Left = 224
    Top = 216
    object IBTableFizID_FIZ: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'ID_FIZ'
      Required = True
    end
    object IBTableFizFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      DisplayWidth = 15
      FieldName = 'FIO'
      Size = 100
    end
    object IBTableFizDATE_BIRTH: TIBStringField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      DisplayWidth = 15
      FieldName = 'DATE_BIRTH'
      Required = True
      Size = 40
    end
    object IBTableFizNUMBER_PERSONAL: TIBStringField
      DisplayLabel = #1051#1080#1095#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
      DisplayWidth = 11
      FieldName = 'NUMBER_PERSONAL'
      Size = 80
    end
    object IBTableFizINN: TIBStringField
      DisplayLabel = #1048#1053#1053
      FieldName = 'INN'
      Size = 11
    end
  end
  object IBTableUR: TIBTable
    Database = MainDB
    Transaction = IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'ID_UR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME_L'
        Attributes = [faRequired]
        DataType = ftString
        Size = 80
      end
      item
        Name = 'NAME_S'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'OGRN'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'INN'
        Attributes = [faRequired]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'KPP'
        DataType = ftString
        Size = 11
      end>
    IndexDefs = <
      item
        Name = 'PK_TABLEUR'
        Fields = 'ID_UR'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'TABLEUR'
    Left = 224
    Top = 272
    object IBTableURID_UR: TIntegerField
      FieldName = 'ID_UR'
      Required = True
    end
    object IBTableURNAME_L: TIBStringField
      FieldName = 'NAME_L'
      Required = True
      Size = 80
    end
    object IBTableURNAME_S: TIBStringField
      FieldName = 'NAME_S'
      Size = 40
    end
    object IBTableUROGRN: TIBStringField
      FieldName = 'OGRN'
      Size = 11
    end
    object IBTableURINN: TIBStringField
      FieldName = 'INN'
      Required = True
      Size = 11
    end
    object IBTableURKPP: TIBStringField
      FieldName = 'KPP'
      Size = 11
    end
  end
  object DataSourceUR: TDataSource
    DataSet = IBTableUR
    Left = 352
    Top = 96
  end
  object DataSourceSOTRUD: TDataSource
    DataSet = IBTableSotrud
    Left = 432
    Top = 112
  end
  object DataSourceDoljnosti: TDataSource
    DataSet = IBTableDoljnost
    Left = 416
    Top = 176
  end
  object IBTableSotrud: TIBTable
    Database = MainDB
    Transaction = IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'ID_SOTR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'UR_NAME'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'FIZ_NAME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'D_NAME'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'IDUR'
        DataType = ftInteger
      end
      item
        Name = 'IDFIZ'
        DataType = ftInteger
      end
      item
        Name = 'IDDOLJ'
        DataType = ftInteger
      end
      item
        Name = 'DATE_WORK_START'
        Attributes = [faRequired]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DATE_WORK_END'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'WORKPHONE_NUMBER'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <
      item
        Name = 'PK_SOTRUD'
        Fields = 'ID_SOTR'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'SOTRUD'
    Left = 232
    Top = 336
    object IBTableSotrudID_SOTR: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 5
      FieldName = 'ID_SOTR'
      Required = True
    end
    object IBTableSotrudIDUR: TIntegerField
      FieldName = 'IDUR'
    end
    object IBTableSotrudIDFIZ: TIntegerField
      FieldName = 'IDFIZ'
    end
    object IBTableSotrudIDDOLJ: TIntegerField
      FieldName = 'IDDOLJ'
    end
    object IBTableSotrudDATE_WORK_START: TIBStringField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072' '#1085#1072' '#1088#1072#1073#1086#1090#1091
      DisplayWidth = 20
      FieldName = 'DATE_WORK_START'
      Required = True
      Size = 60
    end
    object IBTableSotrudDATE_WORK_END: TIBStringField
      DisplayLabel = #1044#1072#1090#1072' '#1091#1074#1086#1083#1100#1085#1077#1085#1080#1103
      DisplayWidth = 20
      FieldName = 'DATE_WORK_END'
      Size = 60
    end
    object IBTableSotrudWORKPHONE_NUMBER: TIBStringField
      DisplayLabel = #1056#1072#1073#1086#1095#1080#1081' '#1085#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
      DisplayWidth = 15
      FieldName = 'WORKPHONE_NUMBER'
      Size = 15
    end
    object IBTableSotrudUR_NAME: TIBStringField
      FieldKind = fkLookup
      FieldName = 'UR_NAME'
      LookupDataSet = IBTableUR
      LookupKeyFields = 'ID_UR'
      LookupResultField = 'NAME_L'
      KeyFields = 'IDUR'
      Size = 80
      Lookup = True
    end
    object IBTableSotrudFIZ_NAME: TIBStringField
      FieldKind = fkLookup
      FieldName = 'FIZ_NAME'
      LookupDataSet = IBTableFiz
      LookupKeyFields = 'ID_FIZ'
      LookupResultField = 'FIO'
      KeyFields = 'IDFIZ'
      Size = 100
      Lookup = True
    end
    object IBTableSotrudD_NAME: TIBStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'D_NAME'
      LookupDataSet = IBTableDoljnost
      LookupKeyFields = 'ID_DOLJ'
      LookupResultField = 'NAME_DOLJ'
      KeyFields = 'IDDOLJ'
      Size = 80
      Lookup = True
    end
  end
end
