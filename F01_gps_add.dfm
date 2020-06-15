object F_gps_add: TF_gps_add
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'F_gps_add'
  ClientHeight = 109
  ClientWidth = 268
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object B_OK: TBitBtn
    Left = 223
    Top = 60
    Width = 33
    Height = 33
    Cancel = True
    Caption = 'B_OK'
    Default = True
    TabOrder = 2
    OnClick = B_OKClick
  end
  object e_lat: TEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'e_lat'
  end
  object e_long: TEdit
    Left = 135
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'e_long'
  end
end
