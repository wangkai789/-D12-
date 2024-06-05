object Fm_power: TFm_power
  Left = 222
  Top = 225
  Width = 285
  Height = 139
  Caption = #35282#33394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 40
    Width = 24
    Height = 13
    Caption = #35282#33394
  end
  object ed_input: TEdit
    Left = 88
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'ed_input'
    OnKeyPress = ed_inputKeyPress
  end
  object btn_xg: TButton
    Left = 120
    Top = 77
    Width = 75
    Height = 25
    Caption = #30830#23450
    TabOrder = 1
    OnClick = btn_xgClick
  end
  object btn_exit: TButton
    Left = 194
    Top = 77
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 2
    OnClick = btn_exitClick
  end
end
