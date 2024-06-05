object Fm_kccx: TFm_kccx
  Left = 170
  Top = 174
  Width = 670
  Height = 497
  Caption = #21333#19968#33647#21697#24211#23384#26597#35810
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 119
    Top = 52
    Width = 72
    Height = 12
    Caption = #35831#36755#20837#33647#21697#65306
    FocusControl = EdCode
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 364
    Top = 52
    Width = 48
    Height = 12
    Caption = #24211#23384#37327#65306
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label37: TLabel
    Left = 10
    Top = 51
    Width = 36
    Height = 12
    Caption = #24211#31867#22411
    Font.Charset = GB2312_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 650
    Height = 200
    Color = clWhite
    DataSource = dm.DS_comm
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
  end
  object EdCode: TEdit
    Left = 218
    Top = 46
    Width = 114
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 662
    Height = 37
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = #21333#19968#33647#21697#24211#23384#26597#35810
    Color = 8421440
    Ctl3D = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clYellow
    Font.Height = -20
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object ed_kcl: TEdit
    Left = 429
    Top = 45
    Width = 114
    Height = 20
    AutoSize = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBGrid_XYZB: TDBGrid
    Left = 29
    Top = 95
    Width = 570
    Height = 242
    DataSource = dm.DS_MedStore
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid_XYZBDblClick
    OnKeyPress = DBGrid_XYZBKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'lsm'
        Title.Alignment = taCenter
        Title.Caption = #27969#27700#30721
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ym'
        Title.Alignment = taCenter
        Title.Caption = #33647#21517
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gg'
        Title.Alignment = taCenter
        Title.Caption = #35268#26684
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pfj'
        Title.Alignment = taCenter
        Title.Caption = #25209#21457#20215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ylsj'
        Title.Alignment = taCenter
        Title.Caption = #21407#38646#21806#20215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jjyp'
        Title.Alignment = taCenter
        Title.Caption = #32039#24613#33647#21697
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gf'
        Title.Alignment = taCenter
        Title.Caption = #20844#36153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ypbh'
        Title.Alignment = taCenter
        Title.Caption = #33647#21697#32534#21495
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zxdw'
        Title.Alignment = taCenter
        Title.Caption = #26368#23567#21333#20301
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jldw'
        Title.Alignment = taCenter
        Title.Caption = #35745#37327#21333#20301
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hsb'
        Title.Alignment = taCenter
        Title.Caption = #25442#31639#27604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jx'
        Title.Alignment = taCenter
        Title.Caption = #21058#22411
        Visible = True
      end>
  end
  object DBGrid_tj: TDBGrid
    Left = 0
    Top = 277
    Width = 650
    Height = 172
    Color = clWhite
    DataSource = dm.DS_tj
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ym'
        Title.Caption = #33647#21517
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ylsj'
        Title.Caption = #21407#38646#21806#20215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'xlsj'
        Title.Caption = #29616#38646#21806#20215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zxrq'
        Title.Caption = #35843#20215#26085#26399
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tjyj'
        Title.Caption = #35843#20215#20381#25454
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'opid'
        Title.Caption = #35843#20215#20154
        Visible = True
      end>
  end
  object cmbx_storetype: TComboBox
    Left = 50
    Top = 47
    Width = 52
    Height = 20
    Font.Charset = GB2312_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ItemHeight = 12
    ItemIndex = 0
    ParentFont = False
    TabOrder = 6
    Text = 'A'#24211
    Items.Strings = (
      'A'#24211
      'B'#24211)
  end
end
