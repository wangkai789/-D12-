object Frm_CheckScheme: TFrm_CheckScheme
  Left = 763
  Top = 375
  BorderStyle = bsDialog
  Caption = #30424#28857#34920#29983#25104#26041#26696
  ClientHeight = 214
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object OKBtn: TButton
    Left = 79
    Top = 180
    Width = 75
    Height = 25
    Caption = #30830#23450
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 157
    Top = 179
    Width = 75
    Height = 25
    Caption = #36864#20986
    TabOrder = 1
    OnClick = CancelBtnClick
  end
  object rg_MedClass: TRadioGroup
    Left = 11
    Top = 6
    Width = 286
    Height = 83
    Caption = #33647#21697#31867#22411
    ItemIndex = 0
    Items.Strings = (
      #20840#37096
      #35199#25104#33647
      #20013#33647)
    TabOrder = 2
  end
  object CB_zero: TCheckBox
    Left = 19
    Top = 99
    Width = 119
    Height = 17
    Caption = '0'#24211#23384
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
end
