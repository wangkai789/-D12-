object Frame_Balance: TFrame_Balance
  Left = 0
  Top = 0
  Width = 1348
  Height = 687
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 0
    Top = 406
    Width = 1348
    Height = 7
    Cursor = crVSplit
    Align = alTop
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 1348
    Height = 59
    Align = alTop
    TabOrder = 0
    object Label15: TLabel
      Left = 281
      Top = 16
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
      Left = 284
      Top = 39
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
    object lbl_MedName: TLabel
      Left = 440
      Top = 11
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
    object Label2: TLabel
      Left = 12
      Top = 16
      Width = 52
      Height = 15
      Caption = #33647#25151#31867#22411
    end
    object btn_Search: TBitBtn
      Left = 611
      Top = 25
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
      OnClick = btn_SearchClick
    end
    object DT_from: TDateTimePicker
      Left = 308
      Top = 12
      Width = 107
      Height = 21
      Date = 36266.000000000000000000
      Time = 0.671265740740636800
      DateFormat = dfLong
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      TabOrder = 1
    end
    object DT_to: TDateTimePicker
      Left = 308
      Top = 35
      Width = 108
      Height = 21
      Date = 36266.000000000000000000
      Time = 0.671236458343628300
      DateFormat = dfLong
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      TabOrder = 2
    end
    object btn_ExportXls: TBitBtn
      Left = 685
      Top = 25
      Width = 75
      Height = 25
      Caption = #23548#20986
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
      TabOrder = 3
      OnClick = btn_ExportXlsClick
    end
    object BitBtn11: TBitBtn
      Left = 763
      Top = 24
      Width = 75
      Height = 25
      Caption = #36864#20986
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 4
    end
    object rg1: TRadioGroup
      Left = 134
      Top = 8
      Width = 143
      Height = 48
      Caption = #33647#21697#31867#22411
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #20840#37096
        #35199#33647
        #20013#33609#33647
        #20013#25104#33647)
      TabOrder = 5
    end
    object btn_SearchDetail: TBitBtn
      Left = 921
      Top = 23
      Width = 75
      Height = 25
      Caption = #26126#32454#26597#35810
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      TabOrder = 6
      Visible = False
      OnClick = btn_SearchDetailClick
    end
    object btn_print: TBitBtn
      Left = 847
      Top = 23
      Width = 75
      Height = 25
      Caption = #25171#21360
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000BFBFBF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000BFBFBF000000B8B8B8F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3FFFFFF000000000000969696
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8F3F3F300000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000DFDFDF
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8969696000000000000F3F3F3DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFB8B8B8000000000000FFFFFF
        F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3DFDFDF00000068686800000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000BFBFBFBFBFBF
        000000F3F3F3DFDFDFDFDFDFDFDFDFDFDFDFD0D0D0D0D0D0D0D0D0D0D0D0B8B8
        B82F2F2FBFBFBFBFBFBFBFBFBFBFBFBF000000F3F3F3DFDFDF656565656565DF
        DFDF656565656565D0D0D0D0D0D0B8B8B82F2F2FBFBFBFBFBFBFBFBFBFBFBFBF
        000000F3F3F3DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD0D0D0D0D0D0D0D0D0B8B8
        B82F2F2FBFBFBFBFBFBFBFBFBFBFBFBF000000F3F3F3DFDFDF656565DFDFDF65
        6565656565DFDFDF656565D0D0D0B8B8B82F2F2FBFBFBFBFBFBFBFBFBFBFBFBF
        000000F3F3F3DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD0D0D0B8B8
        B82F2F2FBFBFBFBFBFBFBFBFBFBFBFBF000000F3F3F3DFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFB8B8B82F2F2FBFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFFF3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3DFDF
        DF2F2F2FBFBFBFBFBFBFBFBFBFBFBFBF6868682F2F2F2F2F2F2F2F2F2F2F2F2F
        2F2F2F2F2F2F2F2F000000000000000000000000BFBFBFBFBFBF}
      TabOrder = 7
      Visible = False
    end
    object cbb_yfbm: TComboBox
      Left = 10
      Top = 34
      Width = 122
      Height = 21
      TabOrder = 8
      Text = 'cbb_yfbm'
    end
    object edt_SearchCondition: TEdit
      Tag = 1
      Left = 432
      Top = 31
      Width = 85
      Height = 21
      ImeMode = imClose
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 9
      OnKeyPress = edt_SearchConditionKeyPress
    end
  end
  object cxgrd: TcxGrid
    Left = 0
    Top = 59
    Width = 1348
    Height = 347
    Align = alTop
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
      OnCellClick = cxgrdbtblvwCellClick
      DataController.DataSource = DS_master
      DataController.Summary.DefaultGroupSummaryItems = <
        item
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
      Styles.FilterBox = cxStyle5
      Styles.IncSearch = cxStyle11
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Inactive = cxStyle10
      Styles.Indicator = cxStyle12
      Styles.Selection = cxStyle15
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      Caption = #26126#32454#25968#25454
      GridView = cxgrdbtblvw
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 413
    Width = 1348
    Height = 274
    Align = alClient
    BorderWidth = 1
    TabOrder = 2
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    object cxGridDBTableView3: TcxGridDBTableView
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
    object cxGridDBTableView4: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DS_detail
      DataController.Summary.DefaultGroupSummaryItems = <
        item
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
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 25
    end
    object cxGridLevel2: TcxGridLevel
      Caption = #26126#32454#25968#25454
      GridView = cxGridDBTableView4
    end
  end
  object DBGrid_xyzb: TDBGrid
    Left = 416
    Top = 57
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
    TabOrder = 3
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
  object Q_Master: TUniQuery
    Connection = dm.con1
    Left = 88
    Top = 128
  end
  object DS_master: TDataSource
    DataSet = Q_Master
    Left = 119
    Top = 128
  end
  object Q_detail: TUniQuery
    Connection = dm.con1
    Left = 88
    Top = 168
  end
  object DS_detail: TDataSource
    DataSet = Q_detail
    Left = 119
    Top = 168
  end
  object cxStyleRepository: TcxStyleRepository
    Left = 480
    Top = 504
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
  object Q_xyzb: TUniQuery
    Connection = dm.con1
    Left = 96
    Top = 256
  end
  object DS_xyzb: TDataSource
    DataSet = Q_xyzb
    Left = 127
    Top = 256
  end
end
