object Frame_Medbank: TFrame_Medbank
  Left = 0
  Top = 0
  Width = 1006
  Height = 687
  TabOrder = 0
  object GroupBox8: TGroupBox
    Left = 0
    Top = 0
    Width = 1006
    Height = 49
    Align = alTop
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = #23435#20307
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object lab_kc: TLabel
      Left = 329
      Top = 36
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
    object Label8: TLabel
      Left = 285
      Top = 20
      Width = 36
      Height = 12
      Caption = #25340#38899#30721
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 403
      Top = 19
      Width = 24
      Height = 12
      Caption = #38480#37327
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object RGp_Medlb: TRadioGroup
      Left = 6
      Top = 6
      Width = 235
      Height = 41
      Caption = #31867#21035
      Columns = 4
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        #20840#37096
        #35199#33647
        #20013#33609#33647
        #20013#25104#33647
        #26448#26009)
      ParentFont = False
      TabOrder = 0
    end
    object bbtn_kc: TBitBtn
      Left = 596
      Top = 11
      Width = 75
      Height = 25
      Caption = #26597#35810
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
      TabOrder = 4
      OnClick = bbtn_kcClick
    end
    object bbtn_out1: TBitBtn
      Left = 672
      Top = 11
      Width = 75
      Height = 25
      Caption = #23548#20986'excel'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
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
      ParentFont = False
      TabOrder = 5
      OnClick = bbtn_out1Click
    end
    object Ed_yznr_kc: TEdit
      Left = 327
      Top = 15
      Width = 73
      Height = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ImeMode = imClose
      ParentFont = False
      TabOrder = 3
      OnChange = Ed_yznr_kcChange
      OnKeyPress = Ed_yznr_kcKeyPress
    end
    object Ed_max: TEdit
      Left = 430
      Top = 14
      Width = 55
      Height = 20
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '999999'
    end
    object ComBox_kind: TComboBox
      Left = 492
      Top = 13
      Width = 88
      Height = 21
      Style = csDropDownList
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = '0:'#20840#37096
      Items.Strings = (
        '0:'#20840#37096
        '1:'#28082#20307
        '2:'#25239#29983#32032
        '3:'#20854#20182
        '4:'#21333#21058#37327
        '99:'#19981#21487#25286#20998
        '100:'#20302#20110#25253#35686#37327)
    end
    object btn_outnum: TBitBtn
      Left = 892
      Top = 18
      Width = 75
      Height = 25
      Caption = #29992#37327#35774#32622
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnClick = btn_outnumClick
    end
    object ChckBx_zero: TCheckBox
      Left = 247
      Top = 13
      Width = 50
      Height = 30
      Caption = #26174#31034'0'#24211#23384
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      WordWrap = True
    end
    object BitBtn11: TBitBtn
      Left = 749
      Top = 10
      Width = 75
      Height = 25
      Caption = #36864#20986
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      Kind = bkClose
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 8
    end
  end
  object DBG_kc: TDBGrid
    Left = 400
    Top = 257
    Width = 665
    Height = 263
    DataSource = dm.DS_xyzb
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBG_kcDblClick
    OnExit = DBG_kcExit
    OnKeyPress = DBG_kcKeyPress
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
        Width = 179
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gg'
        Title.Caption = #35268#26684
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YLSJ'
        Title.Caption = #38646#21806#20215
        Width = 44
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
        FieldName = 'cfhsb'
        Title.Caption = #25442#31639#27604
        Width = 42
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 384
    Top = 192
    Width = 265
    Height = 129
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnExit = Panel1Exit
    object Label1: TLabel
      Left = 16
      Top = 42
      Width = 48
      Height = 12
      Caption = #24320#22987#26085#26399
    end
    object Label2: TLabel
      Left = 17
      Top = 70
      Width = 48
      Height = 12
      Caption = #32467#26463#26085#26399
    end
    object dt_datefrom: TDateTimePicker
      Left = 88
      Top = 39
      Width = 125
      Height = 20
      Date = 40765.000000000000000000
      Time = 0.656263518518244400
      TabOrder = 1
    end
    object dt_dateto: TDateTimePicker
      Left = 88
      Top = 63
      Width = 124
      Height = 20
      Date = 40765.000000000000000000
      Time = 0.656291365739889400
      TabOrder = 2
    end
    object btn_save: TBitBtn
      Left = 86
      Top = 94
      Width = 75
      Height = 25
      Caption = #20445#23384
      TabOrder = 3
      OnClick = btn_saveClick
    end
    object btn_close: TBitBtn
      Left = 160
      Top = 94
      Width = 75
      Height = 25
      Caption = #36864#20986
      TabOrder = 4
      OnClick = btn_closeClick
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 263
      Height = 26
      Align = alTop
      Caption = #35774#32622#20986#24211#25968#37327
      Color = clBackground
      Font.Charset = GB2312_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object cxgrd: TcxGrid
    Left = 0
    Top = 49
    Width = 1006
    Height = 638
    Align = alClient
    BorderWidth = 1
    TabOrder = 3
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
      OptionsView.DataRowHeight = 25
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 35
      Styles.Header = cxStyle15
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      Caption = #26126#32454#25968#25454
      GridView = cxgrdbtblvw
    end
  end
  object cxStyleRepository: TcxStyleRepository
    Left = 352
    Top = 192
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
    object cxstyl1: TcxStyle
      AssignedValues = [svColor]
      Color = 8421631
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
  object SaveDialog1: TSaveDialog
    Left = 920
    Top = 264
  end
  object DS_Result: TDataSource
    DataSet = Q_Result
    Left = 119
    Top = 128
  end
  object Q_Result: TUniQuery
    Connection = dm.con1
    Left = 88
    Top = 128
  end
end
