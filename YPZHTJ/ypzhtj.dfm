object fm_ypzhtj: Tfm_ypzhtj
  Left = 149
  Top = 136
  Width = 493
  Height = 323
  Caption = #33647#21697#32508#21512#32479#35745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -1
    Top = 0
    Width = 485
    Height = 49
    Caption = #33647#21697#32508#21512#32479#35745
    Color = clTeal
    Font.Charset = GB2312_CHARSET
    Font.Color = clYellow
    Font.Height = -24
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 52
    Width = 483
    Height = 4
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 143
    Width = 485
    Height = 146
    TabOrder = 2
    object BitBtn7: TBitBtn
      Left = 76
      Top = 33
      Width = 99
      Height = 25
      Caption = #36141#20837#33647#21697#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 190
      Top = 33
      Width = 100
      Height = 25
      Caption = #21378#23478#37329#39069#32479#35745
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 305
      Top = 33
      Width = 104
      Height = 25
      Caption = #33647#29702#20998#31867#32479#35745
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn9Click
    end
    object BitBtn12: TBitBtn
      Left = 305
      Top = 89
      Width = 104
      Height = 25
      Caption = #36864#20986'(&Q)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn12Click
    end
    object BitBtn11: TBitBtn
      Left = 190
      Top = 89
      Width = 100
      Height = 25
      Caption = #36864#21307#33647#20844#21496
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn11Click
    end
    object BitBtn10: TBitBtn
      Left = 76
      Top = 89
      Width = 99
      Height = 25
      Caption = #29305#27530#33647#21697#31649#29702
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn10Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 59
    Width = 484
    Height = 70
    TabOrder = 3
    object Label1: TLabel
      Left = 80
      Top = 16
      Width = 60
      Height = 12
      Caption = #36215#22987#26085#26399#65306
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 273
      Top = 15
      Width = 60
      Height = 12
      Caption = #32456#27490#26085#26399#65306
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object datefrom: TDateTimePicker
      Left = 80
      Top = 37
      Width = 136
      Height = 20
      Date = 37071.000000000000000000
      Time = 37071.000000000000000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = datefromKeyPress
    end
    object dateto: TDateTimePicker
      Left = 273
      Top = 36
      Width = 136
      Height = 20
      Date = 37071.000000000000000000
      Time = 37071.000000000000000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = datetoKeyPress
    end
  end
  object Panel5: TPanel
    Left = 1
    Top = 135
    Width = 481
    Height = 4
    TabOrder = 4
  end
end