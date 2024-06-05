object Fm_bmly: TFm_bmly
  Left = -4
  Top = -4
  Caption = #31185#23460#39046#33647
  ClientHeight = 694
  ClientWidth = 1362
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 12
  object BitBtn1: TBitBtn
    Left = 49
    Top = 511
    Width = 87
    Height = 31
    Caption = #21333#31508'[&A]'
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
      0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
      00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
      00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
      F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
      F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
      FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
      0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
      00337777FFFF77FF7733EEEE0000000003337777777777777333}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 233
    Height = 694
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitHeight = 693
    object DBGrid_qld: TDBGrid
      Left = 1
      Top = 102
      Width = 231
      Height = 591
      Align = alClient
      DataSource = dm.DS_song
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ImeMode = imClose
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -12
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnCellClick = DBGrid_qldCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'qldh'
          Title.Alignment = taCenter
          Title.Caption = #35831#39046#21333#21495
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qlrq'
          Title.Alignment = taCenter
          Title.Caption = #35831#39046#26085#26399
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ksmc'
          Title.Alignment = taCenter
          Title.Caption = #31185#23460#21517#31216
          Width = 80
          Visible = True
        end>
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 231
      Height = 101
      Align = alTop
      Caption = #31867#22411
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        #26242#19981#29992
        #33647#25151#36864#33647
        #31185#23460#39046#33647
        #31185#23460#36864#33647)
      TabOrder = 1
      OnClick = RadioGroup1Click
    end
  end
  object Panel2: TPanel
    Left = 233
    Top = 0
    Width = 1129
    Height = 694
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    ExplicitWidth = 1125
    ExplicitHeight = 693
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 1127
      Height = 100
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 1123
      object Label2: TLabel
        Left = 20
        Top = 25
        Width = 48
        Height = 12
        Caption = #25805' '#20316' '#21592
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 182
        Top = 25
        Width = 48
        Height = 12
        Caption = #20986#24211#26085#26399
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 603
        Top = 47
        Width = 48
        Height = 12
        Caption = #39046' '#29992' '#20154
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 182
        Top = 50
        Width = 48
        Height = 12
        Caption = #31185#23460#32534#30721
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 380
        Top = 47
        Width = 48
        Height = 12
        Caption = #31185' '#23460' '#21517
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 20
        Top = 50
        Width = 48
        Height = 12
        Caption = #35831#39046#21333#21495
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 20
        Top = 75
        Width = 48
        Height = 12
        Caption = #33647#21697#32534#21495
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 182
        Top = 73
        Width = 48
        Height = 12
        Caption = #33647'    '#21517
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 380
        Top = 75
        Width = 48
        Height = 12
        Caption = #35268'    '#26684
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 603
        Top = 72
        Width = 48
        Height = 12
        Caption = #21058'    '#22411
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 380
        Top = 25
        Width = 48
        Height = 12
        Caption = #23454' '#21457' '#37327
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 603
        Top = 25
        Width = 48
        Height = 12
        Caption = #33647#21697#25209#21495
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 78
        Top = 22
        Width = 78
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ParentFont = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 245
        Top = 22
        Width = 108
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ParentFont = False
        TabOrder = 1
      end
      object Ed_lyr: TEdit
        Left = 667
        Top = 47
        Width = 63
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object Ed_ksbm: TEdit
        Left = 245
        Top = 47
        Width = 107
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object Edit5: TEdit
        Left = 443
        Top = 47
        Width = 120
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object Edit6: TEdit
        Left = 78
        Top = 47
        Width = 78
        Height = 20
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ParentFont = False
        TabOrder = 5
      end
      object Edit7: TEdit
        Left = 78
        Top = 72
        Width = 78
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ParentFont = False
        TabOrder = 6
      end
      object Edit8: TEdit
        Left = 245
        Top = 72
        Width = 108
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ParentFont = False
        TabOrder = 7
      end
      object Edit9: TEdit
        Left = 443
        Top = 72
        Width = 120
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ParentFont = False
        TabOrder = 8
      end
      object Edit10: TEdit
        Left = 667
        Top = 72
        Width = 63
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ParentFont = False
        TabOrder = 9
      end
      object Ed_sfl: TEdit
        Left = 443
        Top = 22
        Width = 83
        Height = 20
        TabStop = False
        Color = clInfoBk
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ParentFont = False
        TabOrder = 10
        OnExit = Ed_sflExit
        OnKeyPress = Ed_sflKeyPress
      end
      object Edit15: TEdit
        Left = 531
        Top = 22
        Width = 32
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ParentFont = False
        TabOrder = 11
      end
      object Edit16: TEdit
        Left = 667
        Top = 22
        Width = 63
        Height = 20
        TabStop = False
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
        OnChange = Edit16Change
      end
      object Edit17: TEdit
        Left = 736
        Top = 16
        Width = 120
        Height = 20
        TabStop = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ParentFont = False
        TabOrder = 13
        Text = 'Edit17'
        Visible = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 101
      Width = 1127
      Height = 545
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 1123
      ExplicitHeight = 544
      object Splitter1: TSplitter
        Left = 2
        Top = 365
        Width = 1123
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitWidth = 1127
      end
      object DBGrid_qlyp: TDBGrid
        Left = 2
        Top = 14
        Width = 1123
        Height = 351
        Align = alTop
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        OnCellClick = DBGrid_qlypCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ypbh'
            Title.Alignment = taCenter
            Title.Caption = #33647#21697#32534#21495
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ym'
            Title.Alignment = taCenter
            Title.Caption = #33647#21517
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gg'
            Title.Alignment = taCenter
            Title.Caption = #35268#26684
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jx'
            Title.Alignment = taCenter
            Title.Caption = #21058#22411
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qll'
            Title.Alignment = taCenter
            Title.Caption = #35831#39046#37327
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jldw'
            Title.Alignment = taCenter
            Title.Caption = #21333#20301
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sfl'
            Title.Alignment = taCenter
            Title.Caption = #23454#21457#37327
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lb'
            Title.Alignment = taCenter
            Title.Caption = #31867#21035
            Visible = True
          end>
      end
      object DBGrid_dbyp: TDBGrid
        Left = 2
        Top = 368
        Width = 1123
        Height = 175
        Align = alClient
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        OnDblClick = DBGrid_dbypDblClick
        OnKeyPress = DBGrid_dbypKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'rkxh'
            Title.Alignment = taCenter
            Title.Caption = #20837#24211#24207#21495
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ym'
            Title.Alignment = taCenter
            Title.Caption = #33647#21517
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cm'
            Title.Alignment = taCenter
            Title.Caption = #21378#23478
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ypph'
            Title.Alignment = taCenter
            Title.Caption = #33647#21697#25209#21495
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sxrq'
            Title.Alignment = taCenter
            Title.Caption = #22833#25928#26085#26399
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kcl'
            Title.Alignment = taCenter
            Title.Caption = #24211#23384#37327
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jldw'
            Title.Alignment = taCenter
            Title.Caption = #21333#20301
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ypbh'
            Title.Alignment = taCenter
            Title.Caption = #33647#21697#32534#21495
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 646
      Width = 1127
      Height = 47
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 645
      ExplicitWidth = 1123
      object BBtn_bmly_db: TBitBtn
        Left = 137
        Top = 6
        Width = 87
        Height = 31
        Caption = #20840#21457'[&V]'
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnClick = BBtn_bmly_dbClick
      end
      object BitBtn2: TBitBtn
        Left = 226
        Top = 6
        Width = 87
        Height = 31
        Caption = #25171#21360'[&P]'
        Enabled = False
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
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object BitBtn4: TBitBtn
        Left = 315
        Top = 6
        Width = 87
        Height = 31
        Caption = #25253#34920#35774#35745
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
          FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
          FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
          FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
          FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
          FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
          C8807FF7777777777FF700000000000000007777777777777777333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn4Click
      end
      object BBtn_new: TBitBtn
        Left = 404
        Top = 6
        Width = 87
        Height = 31
        Caption = #21047#26032
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333FFF3333333333333707333333333333F777F3333333333370
          9033333333F33F7737F33333373337090733333337F3F7737733333330037090
          73333333377F7737733333333090090733333333373773773333333309999073
          333333337F333773333333330999903333333333733337F33333333099999903
          33333337F3333F7FF33333309999900733333337333FF7773333330999900333
          3333337F3FF7733333333309900333333333337FF77333333333309003333333
          333337F773333333333330033333333333333773333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 3
        OnClick = BBtn_newClick
      end
      object BitBtn3: TBitBtn
        Left = 493
        Top = 6
        Width = 87
        Height = 31
        Caption = #36864#20986'[&X]'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn3Click
      end
    end
  end
end
