object fm_ackdcxtj: Tfm_ackdcxtj
  Left = 240
  Top = 228
  Width = 726
  Height = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 718
    Height = 31
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = #20986#24211#21333#26597#35810#32479#35745
    Color = clTeal
    Font.Charset = GB2312_CHARSET
    Font.Color = clYellow
    Font.Height = -29
    Font.Name = #26999#20307'_GB2312'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid_xzghdw: TDBGrid
    Left = 0
    Top = 73
    Width = 717
    Height = 419
    DataSource = dm.DS_comm
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clMaroon
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ksmc'
        Title.Alignment = taCenter
        Title.Caption = #31185#23460#21517#31216
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'aa'
        Title.Alignment = taCenter
        Title.Caption = #35199#33647
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bb'
        Title.Alignment = taCenter
        Title.Caption = #20013#33609#33647
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cc'
        Title.Alignment = taCenter
        Title.Caption = #20013#25104#33647
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qe'
        Title.Alignment = taCenter
        Title.Caption = #24635#37329#39069
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Visible = True
      end>
  end
  object dad: TPanel
    Left = -15
    Top = 29
    Width = 733
    Height = 44
    BevelInner = bvLowered
    Caption = 'dad'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label4: TLabel
      Left = 277
      Top = 17
      Width = 48
      Height = 12
      Caption = #25130#33267#26085#26399
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 55
      Top = 17
      Width = 48
      Height = 12
      Caption = #36215#22987#26085#26399
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object datefrom: TDateTimePicker
      Left = 126
      Top = 13
      Width = 124
      Height = 20
      Date = 37341.000000000000000000
      Time = 37341.000000000000000000
      DateFormat = dfLong
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = datefromKeyPress
    end
    object dateto: TDateTimePicker
      Left = 352
      Top = 13
      Width = 124
      Height = 20
      Date = 37341.000000000000000000
      Time = 37341.000000000000000000
      DateFormat = dfLong
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = datetoKeyPress
    end
    object btn_cx: TBitBtn
      Left = 505
      Top = 7
      Width = 87
      Height = 31
      Caption = #26597#35810
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn_cxClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btn_print: TBitBtn
      Left = 610
      Top = 7
      Width = 87
      Height = 31
      Caption = #25171#21360
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn_printClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
end
