object fm_ypbjtzd: Tfm_ypbjtzd
  Left = 314
  Top = 247
  Width = 333
  Height = 223
  Caption = #33647#21697#21464#20215#35843#25972#21333
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 325
    Height = 38
    Align = alTop
    Caption = #33647#21697#21464#20215#35843#25972#21333
    Color = clTeal
    Font.Charset = GB2312_CHARSET
    Font.Color = clYellow
    Font.Height = -27
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object rg_type: TRadioGroup
    Left = 0
    Top = 38
    Width = 325
    Height = 32
    Align = alTop
    Columns = 3
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #35199#33647
      #20013#33647
      #25104#33647)
    ParentFont = False
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 70
    Width = 325
    Height = 119
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 92
      Top = 17
      Width = 60
      Height = 12
      Caption = #36215#22987#26102#38388#65306
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 94
      Top = 44
      Width = 60
      Height = 12
      Caption = #32456#27490#26102#38388#65306
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 17
      Top = 19
      Width = 36
      Height = 12
      Caption = #24211#31867#22411
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object datefrom: TDateTimePicker
      Left = 163
      Top = 13
      Width = 136
      Height = 20
      Date = 37068.000000000000000000
      Time = 37068.000000000000000000
      DateFormat = dfLong
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dateto: TDateTimePicker
      Left = 163
      Top = 37
      Width = 136
      Height = 20
      Date = 37068.999988425900000000
      Time = 37068.999988425900000000
      DateFormat = dfLong
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btn_dy: TBitBtn
      Left = 79
      Top = 79
      Width = 87
      Height = 26
      Caption = ' '#25171#21360
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn_dyClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object btn_exit: TBitBtn
      Left = 167
      Top = 79
      Width = 87
      Height = 26
      Caption = #36864#20986
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn_exitClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
    object cmbx_storetype: TComboBox
      Left = 17
      Top = 36
      Width = 52
      Height = 20
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 12
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'A'#24211
      Items.Strings = (
        'A'#24211
        'B'#24211)
    end
  end
end
