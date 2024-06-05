object fm_sccjkccx: Tfm_sccjkccx
  Left = 129
  Top = 45
  Width = 830
  Height = 587
  Caption = #21333#19968#29983#20135#21378#23478#24211#23384#26597#35810
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
  object Label1: TLabel
    Left = 29
    Top = 71
    Width = 60
    Height = 12
    Caption = #29983#20135#21378#23478#65306
    FocusControl = EdCode
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 114
    Width = 818
    Height = 439
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
  object EdCode: TEdit
    Left = 116
    Top = 67
    Width = 242
    Height = 20
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnEnter = EdCodeEnter
    OnKeyPress = EdCodeKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 822
    Height = 46
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = #21333#19968#29983#20135#21378#23478#24211#23384#26597#35810
    Color = 8421440
    Ctl3D = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clYellow
    Font.Height = -24
    Font.Name = #26999#20307'_GB2312'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object DBGrid_XYZB: TDBGrid
    Left = 116
    Top = 87
    Width = 413
    Height = 175
    DataSource = dm.DS_MedStore
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
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
        FieldName = 'cjbm'
        Title.Alignment = taCenter
        Title.Caption = #32534#21495
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cm'
        Title.Alignment = taCenter
        Title.Caption = #29983#20135#21378#23478
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pym'
        Title.Alignment = taCenter
        Title.Caption = #25340#38899#30721
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'xz'
        Title.Alignment = taCenter
        Title.Caption = #24615#36136
        Visible = True
      end>
  end
  object BBtn_quit: TBitBtn
    Left = 541
    Top = 63
    Width = 87
    Height = 31
    Caption = #36864#20986'(&X)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BBtn_quitClick
    Kind = bkClose
  end
end
