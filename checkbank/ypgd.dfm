object Fm_yppd: TFm_yppd
  Left = 672
  Top = 283
  Caption = #33647#25151#33647#21697#30424#28857
  ClientHeight = 495
  ClientWidth = 879
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 12
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 879
    Height = 495
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
    ExplicitWidth = 875
    ExplicitHeight = 494
    object TabSheet1: TTabSheet
      Caption = #33647#25151#30424#28857
      object GroupBox1: TGroupBox
        Left = 0
        Top = 35
        Width = 871
        Height = 126
        Align = alTop
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 867
        object Label1: TLabel
          Left = 5
          Top = 46
          Width = 28
          Height = 14
          Caption = #33647#21697
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 3
          Top = 101
          Width = 56
          Height = 14
          Caption = #21253#35013#25968#37327
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 5
          Top = 72
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
        object Label7: TLabel
          Left = 511
          Top = 71
          Width = 56
          Height = 14
          Caption = #21253#35013#25968#37327
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 355
          Top = 46
          Width = 56
          Height = 14
          Caption = #33647#21697#32534#21495
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 355
          Top = 72
          Width = 42
          Height = 14
          Caption = #38646#21806#20215
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 517
          Top = 44
          Width = 56
          Height = 14
          Caption = #29616#26377#24211#23384
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 533
          Top = 101
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
        object Label16: TLabel
          Left = 188
          Top = 14
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
        object Label17: TLabel
          Left = 183
          Top = 70
          Width = 28
          Height = 14
          Caption = #20135#22320
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 977
          Top = 30
          Width = 42
          Height = 14
          Caption = #24211#31867#22411
          Visible = False
        end
        object Label21: TLabel
          Left = 5
          Top = 17
          Width = 28
          Height = 14
          Caption = #33647#25151
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 180
          Top = 101
          Width = 56
          Height = 14
          Caption = #26368#23567#25968#37327
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 356
          Top = 101
          Width = 56
          Height = 14
          Caption = #20837#24211#25968#37327
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object ed_yp: TEdit
          Left = 64
          Top = 38
          Width = 275
          Height = 22
          TabOrder = 0
          OnEnter = ed_ypEnter
          OnKeyPress = ed_ypKeyPress
        end
        object ed_xkcl: TEdit
          Left = 420
          Top = 95
          Width = 59
          Height = 24
          Color = 16429549
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = ed_xkclExit
          OnKeyPress = ed_xkclKeyPress
        end
        object ed_ypbh: TEdit
          Left = 419
          Top = 38
          Width = 90
          Height = 22
          MaxLength = 16
          TabOrder = 2
        end
        object Ed_oldkc: TEdit
          Left = 579
          Top = 37
          Width = 78
          Height = 22
          TabOrder = 3
        end
        object Ed_ylsj: TEdit
          Left = 419
          Top = 64
          Width = 88
          Height = 22
          TabOrder = 4
        end
        object Com_kind: TComboBox
          Left = 571
          Top = 97
          Width = 90
          Height = 22
          TabOrder = 5
          Text = 'Com_kind'
          OnKeyPress = Com_kindKeyPress
        end
        object Ed_dh: TEdit
          Left = 251
          Top = 9
          Width = 88
          Height = 22
          TabOrder = 6
        end
        object cmbx_storetype: TComboBox
          Left = 1039
          Top = 26
          Width = 90
          Height = 22
          TabOrder = 7
          Text = 'A'#24211
          Visible = False
          Items.Strings = (
            'A'#24211
            'B'#24211
            #20840#37096)
        end
        object edt_produce: TEdit
          Left = 221
          Top = 65
          Width = 119
          Height = 22
          TabOrder = 8
          Text = 'edt_produce'
        end
        object Cbb_yfbm: TComboBox
          Left = 64
          Top = 11
          Width = 114
          Height = 22
          TabOrder = 9
          Text = '502:'#20303#38498#33647#25151
          Items.Strings = (
            '502:'#20303#38498#33647#25151
            '503:'#31038#21306#33647#25151)
        end
        object edt_jldw_sl: TEdit
          Left = 65
          Top = 95
          Width = 70
          Height = 22
          MaxLength = 16
          TabOrder = 10
          OnKeyPress = edt_jldw_slKeyPress
        end
        object edt_zxdw_sl: TEdit
          Left = 240
          Top = 95
          Width = 60
          Height = 22
          MaxLength = 16
          TabOrder = 11
          OnKeyPress = edt_zxdw_slKeyPress
        end
        object edt_jldw: TEdit
          Left = 138
          Top = 95
          Width = 36
          Height = 22
          MaxLength = 16
          TabOrder = 12
        end
        object edt_zxdw1: TEdit
          Left = 481
          Top = 96
          Width = 27
          Height = 22
          MaxLength = 16
          TabOrder = 13
        end
        object edt_zxdw: TEdit
          Left = 305
          Top = 95
          Width = 33
          Height = 22
          MaxLength = 16
          TabOrder = 14
        end
        object edt_hsb: TEdit
          Left = 578
          Top = 67
          Width = 90
          Height = 22
          MaxLength = 16
          TabOrder = 15
          OnKeyPress = edt_jldw_slKeyPress
        end
        object edt_zxdw2: TEdit
          Left = 663
          Top = 36
          Width = 29
          Height = 22
          MaxLength = 16
          TabOrder = 16
        end
        object edt_gg: TEdit
          Left = 64
          Top = 63
          Width = 113
          Height = 22
          TabOrder = 17
          OnEnter = ed_ypEnter
          OnKeyPress = ed_ypKeyPress
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 161
        Width = 871
        Height = 294
        Align = alClient
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #23435#20307
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'dh'
            Title.Caption = #30424#28857#21495
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ypbh'
            Title.Caption = #33647#21697#32534#21495
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ym'
            Title.Caption = #33647#21517
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gg'
            Title.Caption = #35268#26684
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'source'
            Title.Caption = #20462#25913#21069
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'change'
            Title.Caption = #20462#25913#37327
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'zxdw'
            Title.Caption = #33647#25151#21333#20301
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lsj'
            Title.Caption = #38646#21806#20215
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'memo'
            Title.Caption = #22791#27880
            Width = 79
            Visible = True
          end>
      end
      object DBGrid1: TDBGrid
        Left = 64
        Top = 99
        Width = 753
        Height = 278
        DataSource = dm.DS_comm
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #23435#20307
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        OnDblClick = dbgrid1DblClick
        OnExit = dbgrid1Exit
        OnKeyPress = dbgrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'ypbh'
            Title.Caption = #32534#21495
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ym'
            Title.Caption = #33647#21517
            Width = 225
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'produce'
            Title.Caption = #21378#23478
            Width = 128
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gg'
            Title.Caption = #35268#26684
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jx'
            Title.Caption = #21058#22411
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ylsj'
            Title.Caption = #38646#21806#20215
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jldw'
            Title.Caption = #21253#35013#21333#20301
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'hsb'
            Title.Caption = #21253#35013#25968#37327
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'zxdw'
            Title.Caption = #26368#23567#21333#20301
            Width = 65
            Visible = True
          end>
      end
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 871
        Height = 35
        Align = alTop
        TabOrder = 3
        ExplicitWidth = 867
        object BBtn_add: TBitBtn
          Left = 9
          Top = 5
          Width = 79
          Height = 25
          Caption = #26032#22686'(&A)'
          Default = True
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
          OnClick = BBtn_addClick
        end
        object BitBtn1: TBitBtn
          Left = 88
          Top = 5
          Width = 79
          Height = 25
          Caption = #20445#23384'(&S)'
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object bbtn_print: TBitBtn
          Left = 169
          Top = 5
          Width = 79
          Height = 25
          Caption = #25171#21360'(&P)'
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -14
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = bbtn_printClick
        end
        object BBtn_quit: TBitBtn
          Left = 250
          Top = 5
          Width = 79
          Height = 25
          Caption = #36864#20986
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          Kind = bkClose
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 3
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
        Left = 0
        Top = 0
        Width = 871
        Height = 54
        Align = alTop
        Caption = #36873#25321#26597#35810#26102#38388
        TabOrder = 4
        object Label15: TLabel
          Left = 150
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
          Left = 281
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
          Left = 411
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
          Left = 440
          Top = 40
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
        object Label13: TLabel
          Left = 16
          Top = 23
          Width = 24
          Height = 12
          Caption = #33647#25151
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 524
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
          Left = 637
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
          Left = 166
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
          Left = 297
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
          Left = 440
          Top = 19
          Width = 85
          Height = 20
          ImeMode = imClose
          TabOrder = 3
          Text = 'Ed_yznr1'
          OnKeyPress = Ed_yznr1KeyPress
        end
        object BitBtn2: TBitBtn
          Left = 715
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
        end
        object Cbb_yfbm1: TComboBox
          Left = 47
          Top = 19
          Width = 94
          Height = 18
          Style = csOwnerDrawVariable
          ItemHeight = 12
          ItemIndex = 0
          TabOrder = 5
          Text = '502:'#20303#38498#33647#25151
          Items.Strings = (
            '502:'#20303#38498#33647#25151
            '503:'#31038#21306#33647#25151)
        end
        object Com_kind1: TComboBox
          Left = 553
          Top = 19
          Width = 73
          Height = 20
          TabOrder = 6
          Text = 'Com_kind'
          OnKeyPress = Com_kindKeyPress
        end
      end
      object DBGrid_xyzb1: TDBGrid
        Left = 31
        Top = 43
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
            FieldName = 'hsb'
            Title.Caption = #25442#31639#27604
            Width = 42
            Visible = True
          end>
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 920
    Top = 264
  end
end
