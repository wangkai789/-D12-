object fm_jqsxypcx: Tfm_jqsxypcx
  Left = 87
  Top = -3
  Width = 896
  Height = 617
  Caption = #36817#26399#22833#25928#33647#21697#26597#35810
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
    Left = 20
    Top = 69
    Width = 96
    Height = 12
    Caption = #36317#29616#22312#22833#25928#30340#22825#25968
    FocusControl = EdCode
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 256
    Top = 69
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
  object DBGrid1: TDBGrid
    Left = 3
    Top = 106
    Width = 880
    Height = 478
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
    TitleFont.Height = -19
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ym'
        Title.Alignment = taCenter
        Title.Caption = #33647#21517
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gg'
        Title.Alignment = taCenter
        Title.Caption = #35268#26684
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jx'
        Title.Alignment = taCenter
        Title.Caption = #21058#22411
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sxrq'
        Title.Alignment = taCenter
        Title.Caption = #22833#25928#26085#26399
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dw'
        Title.Alignment = taCenter
        Title.Caption = #21333#20301
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sl'
        Title.Alignment = taCenter
        Title.Caption = #25968#37327
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ylsj'
        Title.Alignment = taCenter
        Title.Caption = #38646#21806#20215
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'je'
        Title.Alignment = taCenter
        Title.Caption = #37329#39069
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ghdw'
        Title.Alignment = taCenter
        Title.Caption = #20379#36135#21333#20301
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sccj'
        Title.Alignment = taCenter
        Title.Caption = #29983#20135#21378#23478
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 241
        Visible = True
      end>
  end
  object EdCode: TEdit
    Left = 139
    Top = 66
    Width = 77
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
    Width = 888
    Height = 46
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = #36817#26399#22833#25928#33647#21697#26597#35810
    Color = 8421440
    Ctl3D = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clYellow
    Font.Height = -24
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object BBtn_quit: TBitBtn
    Left = 620
    Top = 62
    Width = 87
    Height = 31
    Caption = #36864#20986'(&X)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Kind = bkClose
  end
  object ed_je: TEdit
    Left = 325
    Top = 66
    Width = 140
    Height = 20
    Color = clInfoBk
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
end
