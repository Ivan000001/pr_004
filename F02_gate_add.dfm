object F_gate_add: TF_gate_add
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'F_gate_add'
  ClientHeight = 144
  ClientWidth = 215
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cb_type: TDBComboBoxEh
    Left = 24
    Top = 56
    Width = 177
    Height = 21
    DynProps = <>
    EditButtons = <>
    Items.Strings = (
      #1085#1077' '#1085#1072#1079#1085#1072#1095#1077#1085#1086
      #1043#1088#1091#1085#1090
      #1040#1089#1092#1072#1083#1100#1090#1086#1073#1077#1090#1086#1085
      #1043#1053#1041
      #1042#1051)
    KeyItems.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '')
    TabOrder = 0
    Visible = True
  end
  object e_v1: TEdit
    Left = 24
    Top = 16
    Width = 73
    Height = 21
    TabOrder = 1
    Text = 'e_v1'
  end
  object e_v2: TEdit
    Left = 112
    Top = 16
    Width = 89
    Height = 21
    TabOrder = 2
    Text = 'e_v2'
  end
  object B_OK: TBitBtn
    Left = 168
    Top = 96
    Width = 33
    Height = 33
    Cancel = True
    Caption = 'B_OK'
    Default = True
    TabOrder = 3
    OnClick = B_OKClick
  end
end
