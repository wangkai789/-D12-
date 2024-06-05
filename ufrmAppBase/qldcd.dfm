object fm_qldcd: Tfm_qldcd
  Left = 686
  Top = 540
  Caption = #33647#25151#35831#39046#21333#37325#25171
  ClientHeight = 181
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 12
  object btn_cx: TBitBtn
    Left = 159
    Top = 142
    Width = 84
    Height = 26
    Caption = #25171#21360
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
    TabOrder = 0
    OnClick = btn_cxClick
  end
  object BBtn_quit: TBitBtn
    Left = 242
    Top = 142
    Width = 85
    Height = 26
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 48
    Width = 332
    Height = 90
    TabOrder = 2
    object Label2: TLabel
      Left = 6
      Top = 32
      Width = 56
      Height = 14
      Caption = #20986#24211#21333#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 145
      Top = 32
      Width = 28
      Height = 14
      Caption = #24180#20221
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 229
      Top = 32
      Width = 28
      Height = 14
      Caption = #26376#20221
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Ed_year: TEdit
      Left = 175
      Top = 27
      Width = 48
      Height = 22
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      Text = '2001'
    end
    object ed_month: TEdit
      Left = 263
      Top = 27
      Width = 37
      Height = 22
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 1
      Text = '9'
    end
    object UpDown2: TUpDown
      Left = 300
      Top = 27
      Width = 16
      Height = 22
      Associate = ed_month
      Max = 12
      Position = 9
      TabOrder = 2
    end
    object EdCode: TEdit
      Left = 65
      Top = 27
      Width = 75
      Height = 22
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyPress = EdCodeKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 354
    Height = 49
    Align = alTop
    Caption = #20986#24211#21333#34917#25171
    Color = clSkyBlue
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -29
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    ExplicitWidth = 350
  end
end
