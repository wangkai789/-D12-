object Fm_arkdcx: TFm_arkdcx
  Left = 212
  Top = 259
  Caption = #20837#24211#21333#32479#35745
  ClientHeight = 481
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clFuchsia
  Font.Height = -14
  Font.Name = #23435#20307
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 14
  object DBGrid1: TDBGrid
    Left = 0
    Top = 79
    Width = 760
    Height = 402
    Align = alClient
    Color = clBtnHighlight
    DataSource = dm.DS_comm
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 760
    Height = 79
    Align = alTop
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -14
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 756
    object Label4: TLabel
      Left = 377
      Top = 40
      Width = 56
      Height = 14
      Caption = #25130#33267#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 177
      Top = 40
      Width = 56
      Height = 14
      Caption = #36215#22987#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object datefrom: TDateTimePicker
      Left = 232
      Top = 36
      Width = 137
      Height = 22
      Date = 37341.000000000000000000
      Time = 37341.000000000000000000
      DateFormat = dfLong
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = datefromKeyPress
    end
    object dateto: TDateTimePicker
      Left = 446
      Top = 36
      Width = 131
      Height = 22
      Date = 37341.000000000000000000
      Time = 37341.000000000000000000
      DateFormat = dfLong
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = datetoKeyPress
    end
    object btn_cx: TBitBtn
      Left = 580
      Top = 33
      Width = 82
      Height = 26
      Caption = #26597#35810
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
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
      ParentFont = False
      TabOrder = 2
      OnClick = btn_cxClick
    end
    object btn_print: TBitBtn
      Left = 665
      Top = 33
      Width = 81
      Height = 26
      Caption = #25171#21360
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
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
      ParentFont = False
      TabOrder = 3
      OnClick = btn_printClick
    end
    object RadioGroup1: TRadioGroup
      Left = 7
      Top = 8
      Width = 167
      Height = 67
      Caption = #26597#35810#26041#24335
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #26126#32454#35199
        #26126#32454#20013
        #26126#32454#33609
        #26126#32454#21512#35745
        #21512#35745)
      TabOrder = 4
    end
  end
end
