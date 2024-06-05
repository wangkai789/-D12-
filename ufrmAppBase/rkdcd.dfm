object fm_rkdcd: Tfm_rkdcd
  Left = 225
  Top = 159
  Width = 511
  Height = 134
  Caption = #20837#24211#21333#34917#25171
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 495
    Height = 54
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 22
      Top = 27
      Width = 42
      Height = 14
      Caption = #27969#27700#21495
      FocusControl = EdCode
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 201
      Top = 25
      Width = 14
      Height = 14
      Caption = #24180
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 274
      Top = 25
      Width = 14
      Height = 14
      Caption = #26376
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object EdCode: TEdit
      Left = 72
      Top = 22
      Width = 48
      Height = 20
      Ctl3D = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = '0'
      OnEnter = EdCodeEnter
      OnKeyPress = EdCodeKeyPress
    end
    object Ed_year: TEdit
      Left = 146
      Top = 22
      Width = 48
      Height = 20
      Ctl3D = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      MaxLength = 4
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object ed_month: TEdit
      Left = 228
      Top = 21
      Width = 37
      Height = 20
      Ctl3D = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      MaxLength = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnKeyPress = ed_monthKeyPress
    end
    object btn_cx: TBitBtn
      Left = 316
      Top = 19
      Width = 80
      Height = 26
      Caption = #25171#21360
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn_cxClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000A1A1A1007A7A
        7A0058585800C7956100F9F7F600F9F1EC00F9F1EB00F8F0E900F7EDE600F4EA
        E100F2E8DE00FAF8F600C7946100242424004B4B4B00969696006B6B6B00A7A7
        A700B5B5B50081818100AFACAA00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0
        BD00C5C0BD00ADAAA8002C2C2C00B5B5B5009B9B9B002323230070707000B5B5
        B500B5B5B500959595008181810081818100797979006E6E6E00616161005252
        520043434300424242006E6E6E00B5B5B500B5B5B5002525250075757500BBBB
        BB00BBBBBB008D8D8D00D4D4D400B9B9B900B9B9B900B9B9B900B9B9B900B9B9
        B900B9B9B900D3D3D30083838300BBBBBB00BBBBBB002A2A2A007A7A7A00D7D7
        D700D7D7D70097979700D8D8D800BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
        BF00BFBFBF00D7D7D7008E8E8E00D7D7D700D7D7D7003F3F3F007E7E7E00F9F9
        F900F9F9F900ABABAB00DFDFDF00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
        CB00CBCBCB00DFDFDF00A3A3A300F9F9F900F9F9F9006161610084848400FCFC
        FC00FCFCFC00CBCBCB00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
        F200F2F2F200F2F2F200C6C6C600FCFCFC00FCFCFC007171710097979700D2D2
        D200E8E8E8007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D
        7D007D7D7D007D7D7D007D7D7D00E8E8E800C4C4C4006D6D6D00DDDDDD009A9A
        9A00CCCCCC00C78B4E00F9F4ED00FEE8D800FEE8D700FDE5D300FCE4D100FAE0
        C700F9DDC300FAF4ED00C7854A00C3C3C30074747400CDCDCD00FFFFFF00CECE
        CE0087878700C5894C00F9F4EF00FEE7D700FDE7D500FCE6D200FBE1CC00F8DC
        C200F6DABD00FAF4EF00C483480061616100BCBCBC00FFFFFF00FFFFFF00FFFF
        FF00FBFBFB00C68C4F00F9F4F000FCE6D300FDE7D300FBE3CD00FAE0C800F5D6
        BB00F3D4B500F8F4F000C4854A00F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C88D5100F9F5F100FCE3CF00FCE4CF00FAE1CA00F9DDC400F4E9
        DF00F7F2EC00F5EFE900C3804800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C88D5200F9F5F100FCE3CD00FBE3CD00F9E0C800F8DCC200FDFB
        F800FCE6CD00E2B68400D5A88400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C5884D00F7F2EC00F8F4EE00F8F3ED00F8F3ED00F8F2EC00F2E6
        D700E2B27D00DB956900FDFBFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E8CEB900D7AA7C00C88C5000C88C4F00CA915500CB905500C589
        4D00DDAF8D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
    object Btn_quit: TBitBtn
      Left = 407
      Top = 19
      Width = 77
      Height = 26
      Caption = #36864#20986'(&X)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Btn_quitClick
      Kind = bkClose
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 495
    Height = 41
    Align = alTop
    Caption = #25171#21360#31867#22411
    Color = clSkyBlue
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #20837#24211#21333
      #20316#24223#21333)
    ParentColor = False
    TabOrder = 1
  end
end
