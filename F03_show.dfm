object F_show: TF_show
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'F_show'
  ClientHeight = 558
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SB1: TScrollBox
    Left = 8
    Top = 8
    Width = 500
    Height = 500
    TabOrder = 0
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 496
      Height = 496
      Align = alClient
      ExplicitLeft = 160
      ExplicitTop = 24
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
  end
  object B_see_it: TBitBtn
    Left = 352
    Top = 520
    Width = 75
    Height = 25
    Caption = 'B_see_it'
    TabOrder = 1
    OnClick = B_see_itClick
  end
end
