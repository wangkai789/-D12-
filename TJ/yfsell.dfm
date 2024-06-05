object fm_yfsell: Tfm_yfsell
  Left = 209
  Top = 412
  Width = 794
  Height = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrid1: TDBGrid
    Left = 0
    Top = 75
    Width = 786
    Height = 414
    Align = alClient
    DataSource = dm.DS_comm
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'zl'
        Title.Alignment = taCenter
        Title.Caption = #31867#21035
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cfs'
        Title.Alignment = taCenter
        Title.Caption = #22788#26041#25968
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qe'
        Title.Alignment = taCenter
        Title.Caption = #37329#39069
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Visible = True
      end>
  end
  object TPanel
    Left = 0
    Top = 31
    Width = 786
    Height = 44
    Align = alTop
    BevelInner = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 414
      Top = 16
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
      Left = 223
      Top = 16
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
      Left = 286
      Top = 12
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
    end
    object dateto: TDateTimePicker
      Left = 465
      Top = 12
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
    end
    object Rad_kskind: TRadioGroup
      Left = 1
      Top = -1
      Width = 213
      Height = 44
      Columns = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        #20303#38498#33647#25151
        #38376#35786#33647#25151
        #24613#35786#33647#25151)
      ParentFont = False
      TabOrder = 2
    end
    object btn_cx: TBitBtn
      Left = 597
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
      TabOrder = 3
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
      Left = 684
      Top = 5
      Width = 87
      Height = 31
      Caption = #25171#21360
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 31
    Align = alTop
    Caption = #33647#25151#38144#21806#26597#35810#32479#35745
    Color = clTeal
    Font.Charset = GB2312_CHARSET
    Font.Color = clYellow
    Font.Height = -29
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
