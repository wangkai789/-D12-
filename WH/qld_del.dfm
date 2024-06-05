object fm_qld_del: Tfm_qld_del
  Left = 248
  Top = 151
  Width = 756
  Height = 417
  Caption = #29305#27530#22788#29702
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
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 740
    Height = 379
    ActivePage = ts1
    Align = alClient
    TabOrder = 0
    object ts1: TTabSheet
      Caption = #35831#39046#21333#20316#24223
      object grp1: TGroupBox
        Left = 6
        Top = 1
        Width = 734
        Height = 48
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lbl1: TLabel
          Left = 138
          Top = 21
          Width = 48
          Height = 12
          Caption = #35831#39046#21333#21495
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object edt_qldh: TEdit
          Left = 195
          Top = 16
          Width = 122
          Height = 20
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 3
          Text = 'edt_qldh'
          OnChange = edt_qldhChange
          OnEnter = edt_qldhEnter
          OnKeyPress = edt_qldhKeyPress
        end
        object btn_search: TButton
          Left = 327
          Top = 12
          Width = 76
          Height = 25
          Caption = #26597#35810'(&S)'
          TabOrder = 0
          OnClick = btn_searchClick
        end
        object btn_del: TButton
          Left = 415
          Top = 12
          Width = 76
          Height = 25
          Caption = #21024#38500'(&D)'
          TabOrder = 1
          OnClick = btn_delClick
        end
        object btn_exit: TButton
          Left = 503
          Top = 12
          Width = 76
          Height = 25
          Caption = #36864#20986'(&E)'
          TabOrder = 2
          OnClick = btn_exitClick
        end
        object rb_yf: TRadioButton
          Left = 8
          Top = 18
          Width = 65
          Height = 17
          Caption = #33647#25151
          Checked = True
          TabOrder = 4
          TabStop = True
          OnClick = rb_yfClick
        end
        object rb_bm: TRadioButton
          Left = 72
          Top = 18
          Width = 53
          Height = 17
          Caption = #31185#23460
          TabOrder = 5
          OnClick = rb_bmClick
        end
      end
      object dbgrd1: TDBGrid
        Left = 6
        Top = 52
        Width = 734
        Height = 307
        DataSource = dm.DS_use
        ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'qldh'
            Title.Caption = #35831#39046#21333
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ym'
            Title.Caption = #21517#31216
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gg'
            Title.Caption = #35268#26684
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qll'
            Title.Caption = #35831#39046#37327
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jldw'
            Title.Caption = #21333#20301
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sfl'
            Title.Caption = #23454#21457#37327
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jg'
            Title.Caption = #21333#20215
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qlr'
            Title.Caption = #35831#39046#20154
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qlrq'
            Title.Caption = #35831#39046#26085#26399
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ypbh'
            Title.Caption = #32534#30721
            Width = 63
            Visible = True
          end>
      end
    end
    object ts2: TTabSheet
      Caption = #26080#20986#24211#21495#20986#24211#21333#22788#29702
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 6
        Top = 1
        Width = 734
        Height = 48
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 347
          Top = 19
          Width = 48
          Height = 12
          Caption = #20986' '#24211' '#21495
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object btn_search_ckh: TButton
          Left = 30
          Top = 12
          Width = 76
          Height = 25
          Caption = #26597#35810'(&S)'
          TabOrder = 0
          OnClick = btn_search_ckhClick
        end
        object Button3: TButton
          Left = 215
          Top = 12
          Width = 76
          Height = 25
          Caption = #36864#20986'(&E)'
          TabOrder = 1
          OnClick = Button3Click
        end
        object BBtn_bmly_db: TBitBtn
          Left = 122
          Top = 12
          Width = 76
          Height = 25
          Caption = #20986#24211
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BBtn_bmly_dbClick
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
        end
        object ed_ckh: TEdit
          Left = 405
          Top = 14
          Width = 86
          Height = 20
          TabStop = False
          Color = clWhite
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ImeMode = imClose
          ParentFont = False
          TabOrder = 3
        end
      end
      object dbgrd2: TDBGrid
        Left = 6
        Top = 52
        Width = 734
        Height = 304
        DataSource = dm.DS_use
        ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'qldh'
            Title.Caption = #35831#39046#21333
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ym'
            Title.Caption = #21517#31216
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gg'
            Title.Caption = #35268#26684
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lsj'
            Title.Caption = #38646#21806#20215
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cksl'
            Title.Caption = #20986#24211#25968#37327
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jldw'
            Title.Caption = #21333#20301
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ckrq'
            Title.Caption = #20986#24211#26085#26399
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ksbm'
            Title.Caption = #35831#39046#31185#23460
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ckr'
            Title.Caption = #20986#24211#20154
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ypbh'
            Title.Caption = #32534#30721
            Width = 63
            Visible = True
          end>
      end
    end
  end
end
