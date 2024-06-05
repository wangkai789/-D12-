object Frame_base: TFrame_base
  Left = 0
  Top = 0
  Width = 1348
  Height = 687
  Color = clBtnFace
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 1348
    Height = 59
    Align = alTop
    TabOrder = 0
    object Label15: TLabel
      Left = 278
      Top = 23
      Width = 12
      Height = 12
      Caption = #20174
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 409
      Top = 23
      Width = 12
      Height = 12
      Caption = #21040
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 543
      Top = 23
      Width = 24
      Height = 12
      Caption = #33647#21697
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object lbl_MedName: TLabel
      Left = 680
      Top = 23
      Width = 48
      Height = 12
      Caption = #33647#21697#21517#31216
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label39: TLabel
      Left = 16
      Top = 11
      Width = 48
      Height = 12
      Caption = #24211#25151#31867#22411
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object btn_Search: TBitBtn
      Left = 743
      Top = 16
      Width = 75
      Height = 25
      Caption = #26597#35810
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      ParentFont = False
      TabOrder = 0
    end
    object DT_from: TDateTimePicker
      Left = 294
      Top = 19
      Width = 110
      Height = 20
      Date = 36266.000000000000000000
      Time = 0.671265740740636800
      DateFormat = dfLong
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      TabOrder = 1
    end
    object DT_to: TDateTimePicker
      Left = 425
      Top = 19
      Width = 111
      Height = 20
      Date = 36266.000000000000000000
      Time = 0.671236458343628300
      DateFormat = dfLong
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      TabOrder = 2
    end
    object edt_SearchCondition: TEdit
      Tag = 1
      Left = 576
      Top = 19
      Width = 85
      Height = 23
      ImeMode = imClose
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 3
      OnKeyPress = edt_SearchConditionKeyPress
    end
    object btn_ExportXls: TBitBtn
      Left = 898
      Top = 15
      Width = 75
      Height = 25
      Caption = #23548#20986'Excel'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FF3FFFFFFF3FFFF003000000030
        0000773777777737777703330030033300037FFF77F77FFF7773700007330000
        003377777733777777F3303003330030003337F77F3377F77733303073333030
        033337F77F3337F77F3337007333300003333777733337777333330033333000
        33333377F3333777F33333073333330033333377333333773333333333333333
        33333333FF333333FF33333973333337933333377FF333377F33333999333399
        93333337773333777F333339933333399333333773FF33377F33333939733793
        93333337377FF773733333333399993333333333337777333333}
      NumGlyphs = 2
      TabOrder = 4
      OnClick = btn_ExportXlsClick
    end
    object BitBtn11: TBitBtn
      Left = 976
      Top = 15
      Width = 75
      Height = 25
      Caption = #36864#20986
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 5
    end
    object rg1: TRadioGroup
      Left = 153
      Top = 1
      Width = 126
      Height = 55
      Caption = #33647#21697#31867#22411
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #20840#37096
        #35199#33647
        #20013#33609#33647
        #20013#25104#33647
        #26448#26009)
      TabOrder = 6
    end
    object btn_SearchInStoreTotal: TBitBtn
      Left = 820
      Top = 15
      Width = 75
      Height = 25
      Caption = #27719#24635
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      TabOrder = 7
    end
    object cbb_yfbm: TComboBox
      Left = 16
      Top = 30
      Width = 111
      Height = 23
      TabOrder = 8
    end
  end
  object cxgrd: TcxGrid
    Left = 0
    Top = 59
    Width = 1348
    Height = 628
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = #20154#25968':0'
          Kind = skCount
        end
        item
          Kind = skCount
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #35760#24405':0'
          Kind = skCount
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0.00'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.DataRowHeight = 20
      OptionsView.Footer = True
      OptionsView.HeaderHeight = 25
    end
    object cxgrdbtblvw: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DS_Result
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = #25968#37327#21512#35745':0.00'
          Kind = skSum
          FieldName = 'qty'
        end
        item
          Format = #37329#39069#21512#35745':0.00'
          Kind = skSum
          FieldName = 'qe'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #35760#24405#25968':0'
          Kind = skCount
        end
        item
          Format = #21512#35745':0.00'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.DataRowHeight = 20
      OptionsView.Footer = True
      OptionsView.HeaderHeight = 25
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle12
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      Caption = #26126#32454#25968#25454
      GridView = cxgrdbtblvw
    end
  end
  object DBGrid_xyzb: TDBGrid
    Left = 376
    Top = 65
    Width = 809
    Height = 263
    DataSource = DS_xyzb
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid_xyzbDblClick
    OnExit = DBGrid_xyzbExit
    OnKeyPress = DBGrid_xyzbKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'YPBH'
        Title.Caption = #33647#21697#32534#30721
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ym'
        Title.Caption = #33647#21517
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gg'
        Title.Caption = #35268#26684
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'produce'
        Title.Caption = #21378#21830
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pfj'
        Title.Caption = #36827#20215
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YLSJ'
        Title.Caption = #38646#21806#20215
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kcl'
        Title.Caption = #24211#23384#37327
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zxdw'
        Title.Caption = #33647#25151#21333#20301
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'yfbm'
        Title.Caption = #24211#25151#32534#30721
        Width = 53
        Visible = True
      end>
  end
  object cxStyleRepository: TcxStyleRepository
    Left = 72
    Top = 56
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14872561
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clActiveCaption
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16749885
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8421631
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.FilterBox = cxStyle5
      Styles.IncSearch = cxStyle11
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Inactive = cxStyle10
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      Styles.Selection = cxStyle14
      BuiltIn = True
    end
    object GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle15
      Styles.Content = cxStyle18
      Styles.ContentEven = cxStyle19
      Styles.ContentOdd = cxStyle20
      Styles.IncSearch = cxStyle22
      Styles.CaptionRow = cxStyle16
      Styles.CardBorder = cxStyle17
      Styles.Inactive = cxStyle21
      Styles.RowCaption = cxStyle23
      Styles.Selection = cxStyle24
      BuiltIn = True
    end
  end
  object Q_Result: TUniQuery
    Connection = dm.con1
    Left = 88
    Top = 128
  end
  object DS_Result: TDataSource
    DataSet = Q_Result
    Left = 47
    Top = 128
  end
  object DS_xyzb: TDataSource
    DataSet = Q_xyzb
    Left = 47
    Top = 168
  end
  object Q_xyzb: TUniQuery
    Connection = dm.con1
    Left = 88
    Top = 168
  end
end
