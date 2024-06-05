object fm_seldate: Tfm_seldate
  Left = 436
  Top = 280
  Width = 372
  Height = 191
  Caption = #26085#26399#36873#25321
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object lbl1: TLabel
    Left = 40
    Top = 22
    Width = 75
    Height = 15
    Caption = #36215#22987#26085#26399#65306
  end
  object lbl2: TLabel
    Left = 40
    Top = 62
    Width = 75
    Height = 15
    Caption = #32456#27490#26085#26399#65306
  end
  object dtp_from: TDateTimePicker
    Left = 129
    Top = 20
    Width = 186
    Height = 23
    Date = 44297.445186990740000000
    Time = 44297.445186990740000000
    TabOrder = 0
  end
  object dtp_to: TDateTimePicker
    Left = 129
    Top = 60
    Width = 186
    Height = 23
    Date = 44297.445236643520000000
    Time = 44297.445236643520000000
    TabOrder = 1
  end
  object btn1: TBitBtn
    Left = 84
    Top = 104
    Width = 87
    Height = 27
    Caption = #30830#23450
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 195
    Top = 104
    Width = 87
    Height = 27
    Caption = #36864#20986
    TabOrder = 3
    OnClick = btn2Click
  end
end
