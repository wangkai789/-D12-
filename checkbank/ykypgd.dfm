object Fm_ykyppd: TFm_ykyppd
  Left = 463
  Top = 285
  Caption = #33647#24211#33647#21697#30424#28857
  ClientHeight = 618
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 914
    Height = 618
    ActivePage = TabSheet3
    Align = alClient
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabHeight = 30
    TabOrder = 0
    ExplicitWidth = 910
    ExplicitHeight = 617
    object TabSheet1: TTabSheet
      Caption = #33647#24211#30424#28857
      object DBGrid2: TDBGrid
        Left = 0
        Top = 113
        Width = 906
        Height = 465
        Align = alClient
        DataSource = dm.DS_use
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'dh'
            Title.Caption = #30424#28857#21495
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ypbh'
            Title.Caption = #33647#21697#32534#21495
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ym'
            Title.Caption = #33647#21517
            Width = 173
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gg'
            Title.Caption = #35268#26684
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'produce'
            Title.Caption = #20135#22320
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'source'
            Title.Caption = #20462#25913#21069
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'change'
            Title.Caption = #20462#25913#37327
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jldw'
            Title.Caption = #33647#24211#21333#20301
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lsj'
            Title.Caption = #38646#21806#20215
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'memo'
            Title.Caption = #22791#27880
            Width = 75
            Visible = True
          end>
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 41
        Width = 906
        Height = 72
        Align = alTop
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 902
        object Label17: TLabel
          Left = 592
          Top = -30
          Width = 42
          Height = 14
          Caption = #21407#24211#23384
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 616
          Top = 17
          Width = 28
          Height = 14
          Caption = #21333#20215
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 752
          Top = 17
          Width = 56
          Height = 14
          Caption = #20837#24211#24207#21495
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 495
          Top = 17
          Width = 28
          Height = 14
          Caption = #20195#30721
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 11
          Top = 44
          Width = 56
          Height = 14
          Caption = #20837#24211#25968#37327
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 11
          Top = 17
          Width = 56
          Height = 14
          Caption = #33647#21697#21517#31216
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 603
          Top = 44
          Width = 56
          Height = 14
          Caption = #30424#28857#21333#21495
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 333
          Top = 19
          Width = 28
          Height = 14
          Caption = #35268#26684
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 480
          Top = 44
          Width = 42
          Height = 14
          Caption = #24211#31867#22411
        end
        object Label5: TLabel
          Left = 333
          Top = 44
          Width = 28
          Height = 14
          Caption = #22791#27880
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object ed_sl: TEdit
          Left = 653
          Top = -34
          Width = 84
          Height = 22
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = 'ed_sl'
          OnChange = ed_slChange
          OnKeyPress = ed_slKeyPress
        end
        object ed_jldw: TEdit
          Left = 245
          Top = 41
          Width = 84
          Height = 22
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = 'ed_jldw'
        end
        object ed_price: TEdit
          Left = 668
          Top = 14
          Width = 79
          Height = 22
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = 'ed_price'
        end
        object ed_xh: TEdit
          Left = 810
          Top = 14
          Width = 57
          Height = 22
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = 'ed_xh'
        end
        object ed_bm: TEdit
          Left = 531
          Top = 14
          Width = 77
          Height = 22
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Text = 'ed_bm'
        end
        object ed_change: TEdit
          Left = 80
          Top = 41
          Width = 162
          Height = 22
          Color = 16429549
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          Text = 'ed_change'
          OnKeyPress = ed_changeKeyPress
        end
        object Com_kind: TComboBox
          Left = 367
          Top = 41
          Width = 112
          Height = 22
          TabOrder = 6
          Text = 'Com_kind'
          OnKeyPress = Com_kindKeyPress
        end
        object ed_yp: TEdit
          Left = 79
          Top = 14
          Width = 249
          Height = 22
          TabOrder = 7
          OnEnter = ed_ypEnter
          OnKeyPress = ed_ypKeyPress
        end
        object Ed_dh: TEdit
          Left = 667
          Top = 41
          Width = 82
          Height = 22
          TabOrder = 8
        end
        object edt_gg: TEdit
          Left = 367
          Top = 14
          Width = 110
          Height = 22
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          Text = 'ed_bm'
        end
        object cmbx_storetype: TComboBox
          Left = 532
          Top = 41
          Width = 73
          Height = 22
          TabOrder = 10
          Text = 'A'#24211
          Items.Strings = (
            'A'#24211
            'B'#24211
            #20840#37096)
        end
      end
      object DBGrid1: TDBGrid
        Left = 31
        Top = 131
        Width = 607
        Height = 184
        DataSource = dm.DS_comm
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #23435#20307
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Visible = False
        OnDblClick = dbgrid1DblClick
        OnExit = DBGrid1Exit
        OnKeyPress = dbgrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'ym'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Caption = #33647#21517
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'produce'
            Title.Caption = #20135#22320
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kcl'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Caption = #24211#23384#37327
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ylsj'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Caption = #33647#24211#20215#26684
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gg'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Caption = #35268#26684
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ypbh'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Caption = #33647#21697#32534#21495
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rkxh'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            Title.Caption = #20837#24211#24207#21495
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jldw'
            Title.Caption = #21253#35013#21333#20301
            Visible = True
          end>
      end
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 906
        Height = 41
        Align = alTop
        TabOrder = 3
        ExplicitWidth = 902
        object bbtn_add: TBitBtn
          Left = 7
          Top = 3
          Width = 95
          Height = 30
          Caption = #26032#22686'(&A)'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BBtn_addClick
        end
        object BitBtn1: TBitBtn
          Left = 103
          Top = 3
          Width = 95
          Height = 30
          Caption = #20445#23384'(&S)'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object bbtn_print: TBitBtn
          Left = 199
          Top = 3
          Width = 95
          Height = 30
          Caption = #25171#21360'(&P)'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = bbtn_printClick
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #30424#28857#26597#35810
      ImageIndex = 2
      object Label8: TLabel
        Left = 319
        Top = 21
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
      object lab_kc: TLabel
        Left = 319
        Top = 39
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
      object bbtn_kc: TBitBtn
        Left = 518
        Top = 14
        Width = 87
        Height = 31
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
        TabOrder = 0
      end
      object bitprint: TBitBtn
        Left = 609
        Top = 14
        Width = 87
        Height = 31
        Caption = #25171#21360
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
      end
      object bbtn_out1: TBitBtn
        Left = 700
        Top = 14
        Width = 87
        Height = 31
        Caption = #23548#20837'excel'
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
        TabOrder = 2
      end
      object Ed_yznr_kc: TEdit
        Left = 349
        Top = 17
        Width = 85
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ImeMode = imClose
        ParentFont = False
        TabOrder = 3
        Text = 'Ed_yznr'
      end
      object GroupBox3: TGroupBox
        Left = 7
        Top = 5
        Width = 985
        Height = 58
        Caption = #36873#25321#26597#35810#26102#38388
        TabOrder = 4
        object Label15: TLabel
          Left = 10
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
        object Label14: TLabel
          Left = 141
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
          Left = 271
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
        object Label19: TLabel
          Left = 298
          Top = 41
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
        object Label12: TLabel
          Left = 396
          Top = 23
          Width = 24
          Height = 12
          Caption = #22791#27880
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object bbtn_search2: TBitBtn
          Left = 536
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
          OnClick = bbtn_search2Click
        end
        object datefrom3: TDateTimePicker
          Left = 26
          Top = 19
          Width = 110
          Height = 20
          Date = 36266.000000000000000000
          Time = 0.671265740740636800
          DateFormat = dfLong
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 1
        end
        object dateto3: TDateTimePicker
          Left = 157
          Top = 19
          Width = 111
          Height = 20
          Date = 36266.000000000000000000
          Time = 0.671236458343628300
          DateFormat = dfLong
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 2
        end
        object Ed_yznr1: TEdit
          Left = 300
          Top = 19
          Width = 85
          Height = 20
          ImeMode = imClose
          TabOrder = 3
          Text = 'Ed_yznr1'
          OnKeyPress = Ed_yznr1KeyPress
        end
        object BitBtn2: TBitBtn
          Left = 612
          Top = 16
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
          OnClick = BitBtn2Click
        end
        object Com_kind1: TComboBox
          Left = 425
          Top = 19
          Width = 94
          Height = 20
          TabOrder = 5
          Text = 'Com_kind'
        end
      end
      object DBGrid_xyzb1: TDBGrid
        Left = 92
        Top = 57
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
        TabOrder = 5
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -12
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Visible = False
        OnDblClick = DBGrid_xyzb1DblClick
        OnExit = DBGrid_xyzb1Exit
        OnKeyPress = DBGrid_xyzb1KeyPress
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
            FieldName = 'cfzxdw'
            Title.Caption = #21307#22065#21333#20301
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
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 968
    Top = 64
  end
end
