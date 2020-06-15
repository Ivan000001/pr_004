object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'FMain'
  ClientHeight = 537
  ClientWidth = 951
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 8
    Width = 281
    Height = 513
    DataSource = DataSource1
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    OnDblClick = B_editClick
    Columns = <
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'n'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1087'/'#1087
        Width = 40
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'gps_lat'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'GPS, '#1096#1080#1088#1080#1085#1072
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'gps_long'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'GPS, '#1076#1086#1083#1075#1086#1090#1072
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object B_add: TBitBtn
    Left = 303
    Top = 8
    Width = 34
    Height = 33
    Caption = 'B_add'
    TabOrder = 1
    OnClick = B_addClick
  end
  object B_edit: TBitBtn
    Left = 303
    Top = 47
    Width = 34
    Height = 33
    Caption = 'B_edit'
    TabOrder = 2
    OnClick = B_editClick
  end
  object B_del: TBitBtn
    Left = 303
    Top = 86
    Width = 34
    Height = 35
    Caption = 'B_del'
    TabOrder = 3
    OnClick = B_delClick
  end
  object DBGridEh2: TDBGridEh
    Left = 343
    Top = 8
    Width = 273
    Height = 513
    DataSource = DataSource2
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    OnDblClick = B_s_editClick
    Columns = <
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'v1'
        Footers = <>
        Title.Alignment = taCenter
        Width = 40
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'v2'
        Footers = <>
        Title.Alignment = taCenter
        Width = 40
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'descr'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1058#1080#1087
        Width = 155
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object B_s_add: TBitBtn
    Left = 622
    Top = 8
    Width = 33
    Height = 33
    Caption = 'B_s_add'
    TabOrder = 5
    OnClick = B_s_addClick
  end
  object B_s_edit: TBitBtn
    Left = 623
    Top = 47
    Width = 33
    Height = 33
    Caption = 'B_s_edit'
    TabOrder = 6
    OnClick = B_s_editClick
  end
  object B_s_del: TBitBtn
    Left = 623
    Top = 87
    Width = 33
    Height = 33
    Caption = 'B_s_del'
    TabOrder = 7
    OnClick = B_s_delClick
  end
  object BitBtn1: TBitBtn
    Left = 622
    Top = 152
    Width = 34
    Height = 33
    Caption = 'B_Build'
    TabOrder = 8
  end
  object B_p_load: TBitBtn
    Left = 303
    Top = 160
    Width = 34
    Height = 33
    Caption = 'B_p_load'
    TabOrder = 9
    OnClick = B_p_loadClick
  end
  object B_show: TBitBtn
    Left = 622
    Top = 232
    Width = 34
    Height = 33
    Caption = 'B_show'
    TabOrder = 10
    OnClick = B_showClick
  end
  object MTE1: TMemTableEh
    Active = True
    FieldDefs = <
      item
        Name = 'n'
        DataType = ftSmallint
        Precision = 15
      end
      item
        Name = 'gps_lat'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'gps_long'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 304
    Top = 456
    object MTE1n: TSmallintField
      FieldName = 'n'
    end
    object MTE1gps_lat: TStringField
      FieldName = 'gps_lat'
    end
    object MTE1gps_long: TStringField
      FieldName = 'gps_long'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object n: TMTNumericDataFieldEh
          FieldName = 'n'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          currency = False
          Precision = 15
        end
        object gps_lat: TMTStringDataFieldEh
          FieldName = 'gps_lat'
          StringDataType = fdtStringEh
        end
        object gps_long: TMTStringDataFieldEh
          FieldName = 'gps_long'
          StringDataType = fdtStringEh
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = MTE1
    Left = 304
    Top = 488
  end
  object ActionList1: TActionList
    Left = 304
    Top = 328
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 45
      OnExecute = B_addClick
    end
  end
  object DataSource2: TDataSource
    DataSet = MTE2
    Left = 624
    Top = 488
  end
  object MTE2: TMemTableEh
    Active = True
    FieldDefs = <
      item
        Name = 'v1'
        DataType = ftSmallint
        Precision = 15
      end
      item
        Name = 'v2'
        DataType = ftSmallint
        Precision = 15
      end
      item
        Name = 'type'
        DataType = ftSmallint
        Precision = 15
      end
      item
        Name = 'descr'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    SortOrder = 'v1'
    StoreDefs = True
    Left = 624
    Top = 456
    object MTE2v1: TSmallintField
      FieldName = 'v1'
    end
    object MTE2v2: TSmallintField
      FieldName = 'v2'
    end
    object MTE2type: TSmallintField
      FieldName = 'type'
    end
    object MTE2descr: TStringField
      FieldName = 'descr'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object v1: TMTNumericDataFieldEh
          FieldName = 'v1'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          currency = False
          Precision = 15
        end
        object v2: TMTNumericDataFieldEh
          FieldName = 'v2'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          currency = False
          Precision = 15
        end
        object type: TMTNumericDataFieldEh
          FieldName = 'type'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          currency = False
          Precision = 15
        end
        object descr: TMTStringDataFieldEh
          FieldName = 'descr'
          StringDataType = fdtStringEh
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object OD1: TOpenTextFileDialog
    Left = 304
    Top = 416
  end
end
