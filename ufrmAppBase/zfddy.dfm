object fm_zfddy: Tfm_zfddy
  Left = 192
  Top = 107
  Caption = #20316#24223#21333#25171#21360
  ClientHeight = 202
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 368
    Height = 153
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 364
    ExplicitHeight = 152
    object Label1: TLabel
      Left = 25
      Top = 35
      Width = 48
      Height = 12
      Caption = #20837#24211#21333#21495
      FocusControl = EdCode
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 172
      Top = 36
      Width = 24
      Height = 12
      Caption = #24180#20221
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 266
      Top = 36
      Width = 24
      Height = 12
      Caption = #26376#20221
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object EdCode: TEdit
      Left = 85
      Top = 32
      Width = 80
      Height = 20
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnEnter = EdCodeEnter
      OnKeyPress = EdCodeKeyPress
    end
    object BBtn_quit: TBitBtn
      Left = 205
      Top = 105
      Width = 100
      Height = 34
      Caption = #36864#20986'(&X)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      Kind = bkClose
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BBtn_quitClick
    end
    object Ed_year: TEdit
      Left = 210
      Top = 32
      Width = 48
      Height = 20
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 2
      Text = '2001'
    end
    object ed_month: TEdit
      Left = 306
      Top = 32
      Width = 37
      Height = 20
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 3
      Text = '9'
      OnKeyPress = ed_monthKeyPress
    end
    object UpDown2: TUpDown
      Left = 343
      Top = 32
      Width = 15
      Height = 20
      Associate = ed_month
      Max = 12
      Position = 9
      TabOrder = 4
    end
    object btn_cx: TBitBtn
      Left = 95
      Top = 105
      Width = 100
      Height = 34
      Caption = #25171#21360'(&P)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
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
      ParentFont = False
      TabOrder = 5
      OnClick = btn_cxClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 368
    Height = 49
    Align = alTop
    Caption = #20837#24211#20316#24223#21333#25171#21360
    Color = clBackground
    Font.Charset = GB2312_CHARSET
    Font.Color = clYellow
    Font.Height = -29
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 364
  end
end
