object fm_ghdwkccx: Tfm_ghdwkccx
  Left = 330
  Top = 300
  Width = 758
  Height = 592
  Caption = #21333#19968#20379#36135#21333#20301#24211#23384#26597#35810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 46
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = #21333#19968#20379#36135#21333#20301#24211#23384#26597#35810
    Color = 8421440
    Ctl3D = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clYellow
    Font.Height = -24
    Font.Name = #26999#20307'_GB2312'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 46
    Width = 750
    Height = 512
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 748
      Height = 48
      Align = alTop
      TabOrder = 2
      object Label1: TLabel
        Left = 7
        Top = 18
        Width = 48
        Height = 12
        Caption = #20379#36135#21333#20301
        FocusControl = EdCode
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 338
        Top = 18
        Width = 36
        Height = 12
        Caption = #24635#37329#39069
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object EdCode: TEdit
        Left = 70
        Top = 14
        Width = 242
        Height = 20
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = EdCodeEnter
        OnKeyPress = EdCodeKeyPress
      end
      object ed_je: TEdit
        Left = 397
        Top = 14
        Width = 140
        Height = 20
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object BBtn_quit: TBitBtn
        Left = 566
        Top = 8
        Width = 100
        Height = 34
        Caption = #36864#20986'(&X)'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BBtn_quitClick
        Kind = bkClose
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 49
      Width = 748
      Height = 462
      Align = alClient
      Color = clWhite
      DataSource = dm.DS_comm
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
    end
    object DBGrid_XYZB: TDBGrid
      Left = 70
      Top = 35
      Width = 436
      Height = 241
      DataSource = dm.DS_MedStore
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Visible = False
      OnDblClick = DBGrid_XYZBDblClick
      OnKeyPress = DBGrid_XYZBKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'inc_code'
          Title.Alignment = taCenter
          Title.Caption = #24207#21495
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'inc_name'
          Title.Alignment = taCenter
          Title.Caption = #20379#36135#21333#20301
          Width = 329
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'inc_call'
          Title.Alignment = taCenter
          Title.Caption = #25340#38899#30721
          Visible = True
        end>
    end
  end
end
