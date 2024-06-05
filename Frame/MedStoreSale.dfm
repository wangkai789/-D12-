object Frame_MedStoreSale: TFrame_MedStoreSale
  Left = 0
  Top = 0
  Width = 1348
  Height = 687
  TabOrder = 0
  inline Frame_base1: TFrame_base
    Left = 0
    Top = 0
    Width = 1348
    Height = 687
    Align = alClient
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    inherited GroupBox3: TGroupBox
      Height = 67
      ExplicitHeight = 67
      inherited Label15: TLabel
        Left = 473
        Top = 19
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 473
        ExplicitTop = 19
      end
      inherited Label7: TLabel
        Left = 473
        Top = 42
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 473
        ExplicitTop = 42
      end
      inherited Label18: TLabel
        Left = 747
        Top = 39
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 747
        ExplicitTop = 39
      end
      inherited lbl_MedName: TLabel
        Left = 756
        Top = 17
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 756
        ExplicitTop = 17
      end
      inherited Label39: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited btn_Search: TBitBtn
        Left = 937
        Top = 28
        OnClick = Frame_base1btn_SearchClick
        ExplicitLeft = 937
        ExplicitTop = 28
      end
      inherited DT_from: TDateTimePicker
        Left = 487
        Top = 15
        Width = 101
        ExplicitLeft = 487
        ExplicitTop = 15
        ExplicitWidth = 101
      end
      inherited DT_to: TDateTimePicker
        Left = 487
        Top = 39
        Width = 101
        TabOrder = 7
        ExplicitLeft = 487
        ExplicitTop = 39
        ExplicitWidth = 101
      end
      inherited edt_SearchCondition: TEdit
        Left = 776
        Top = 35
        Width = 79
        TabOrder = 6
        StyleElements = [seFont, seClient, seBorder]
        OnKeyPress = Frame_base1edt_SearchConditionKeyPress
        ExplicitLeft = 776
        ExplicitTop = 35
        ExplicitWidth = 79
      end
      inherited btn_ExportXls: TBitBtn
        Left = 1012
        Top = 28
        TabOrder = 3
        ExplicitLeft = 1012
        ExplicitTop = 28
      end
      inherited BitBtn11: TBitBtn
        Left = 1240
        Top = 28
        TabOrder = 4
        ExplicitLeft = 1240
        ExplicitTop = 28
      end
      inherited rg1: TRadioGroup
        Left = 407
        Top = 7
        Width = 65
        Caption = #26085#26399
        Columns = 1
        Items.Strings = (
          #21457#33647
          #26085#32467
          #22788#26041)
        TabOrder = 5
        ExplicitLeft = 407
        ExplicitTop = 7
        ExplicitWidth = 65
      end
      inherited btn_SearchInStoreTotal: TBitBtn
        Left = 1318
        Top = 28
        TabOrder = 2
        Visible = False
        ExplicitLeft = 1318
        ExplicitTop = 28
      end
      inherited cbb_yfbm: TComboBox
        Left = 7
        Width = 83
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 7
        ExplicitWidth = 83
      end
    end
    inherited cxgrd: TcxGrid
      Top = 67
      Height = 620
      ExplicitTop = 67
      ExplicitHeight = 620
      inherited cxgrdbtblvw: TcxGridDBTableView
        Styles.FilterBox = Frame_base1.cxStyle5
        Styles.Footer = Frame_base1.cxStyle6
        Styles.Group = Frame_base1.cxStyle7
        Styles.Header = Frame_base1.cxStyle9
      end
    end
    inherited cxStyleRepository: TcxStyleRepository
      PixelsPerInch = 96
      inherited GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
        BuiltIn = True
      end
      inherited GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
        BuiltIn = True
      end
    end
  end
  object btn_cfdprint: TBitBtn
    Left = 1086
    Top = 27
    Width = 75
    Height = 26
    Caption = #22788#26041
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
      FFF07F3FF3FF3FFF3FF70F00F00F000F00F07F773773777377370FFFFFFFFFFF
      FFF07F3FF3FF33FFFFF70F00F00FF00000F07F773773377777F70FEEEEEFF0F9
      FCF07F33333337F7F7F70FFFFFFFF0F9FCF07F3FFFF337F737F70F0000FFF0FF
      FCF07F7777F337F337370F0000FFF0FFFFF07F777733373333370FFFFFFFFFFF
      FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
      C880733777777777733700000000000000007777777777777777333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    TabOrder = 7
    OnClick = btn_cfdprintClick
  end
  object btn_print: TBitBtn
    Left = 1164
    Top = 27
    Width = 75
    Height = 26
    Caption = #21457#33647#21333
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
      FFF07F3FF3FF3FFF3FF70F00F00F000F00F07F773773777377370FFFFFFFFFFF
      FFF07F3FF3FF33FFFFF70F00F00FF00000F07F773773377777F70FEEEEEFF0F9
      FCF07F33333337F7F7F70FFFFFFFF0F9FCF07F3FFFF337F737F70F0000FFF0FF
      FCF07F7777F337F337370F0000FFF0FFFFF07F777733373333370FFFFFFFFFFF
      FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
      C880733777777777733700000000000000007777777777777777333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    TabOrder = 6
    OnClick = btn_printClick
  end
  object rg_SearchClass: TRadioGroup
    Left = 671
    Top = 6
    Width = 74
    Height = 58
    Caption = #26597#35810#31867#22411
    ItemIndex = 0
    Items.Strings = (
      #32534#21495
      #25340#38899
      #24739#32773)
    TabOrder = 3
    OnClick = rg_SearchClassClick
  end
  object RG_PatientClass: TRadioGroup
    Left = 244
    Top = 5
    Width = 62
    Height = 58
    Caption = #24739#32773#31867#22411
    ItemIndex = 0
    Items.Strings = (
      #20840#37096
      #38376#35786
      #20303#38498)
    TabOrder = 2
  end
  object RG_TotalClass: TRadioGroup
    Left = 859
    Top = 13
    Width = 74
    Height = 46
    Caption = #27719#24635#31867#22411
    ItemIndex = 0
    Items.Strings = (
      #24050#21457#33647
      #26410#21457#33647)
    TabOrder = 4
    OnClick = rg_SearchClassClick
  end
  object RG_SearchClass1: TRadioGroup
    Left = 92
    Top = 6
    Width = 153
    Height = 58
    Caption = #26597#35810#31867#22411
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #26126#32454
      #27719#24635
      #21307#24072#27719#24635
      #25239#33740#33647#29289
      #31185#23460#27719#24635)
    ParentFont = False
    TabOrder = 5
    OnClick = rg_SearchClassClick
  end
  object RG_MedClass: TRadioGroup
    Left = 308
    Top = 7
    Width = 99
    Height = 56
    Caption = #33647#21697#31867#22411
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #20840#37096
      #35199#33647
      #20013#33647
      #25104#33647)
    TabOrder = 1
  end
  object dtpDT_from: TDateTimePicker
    Left = 593
    Top = 15
    Width = 74
    Height = 20
    Date = 36266.000000000000000000
    Time = 0.671265740740636800
    DateFormat = dfLong
    ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
    Kind = dtkTime
    TabOrder = 8
  end
  object dtpDT_to: TDateTimePicker
    Left = 592
    Top = 38
    Width = 74
    Height = 20
    Date = 36266.000000000000000000
    Time = 0.671265740740636800
    DateFormat = dfLong
    ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
    Kind = dtkTime
    TabOrder = 9
  end
end
