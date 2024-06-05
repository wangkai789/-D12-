object fm_aqldcx: Tfm_aqldcx
  Left = -4
  Top = -4
  Width = 808
  Height = 580
  Caption = '按请领单查询'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 71
    Width = 54
    Height = 12
    Caption = '请领单号:'
    FocusControl = EdCode
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '宋体'
    Font.Style = []
    ParentFont = False
  end
  object EdCode: TEdit
    Left = 73
    Top = 68
    Width = 127
    Height = 20
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '宋体'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnEnter = EdCodeEnter
    OnKeyPress = EdCodeKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 46
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = '按请领单查询'
    Color = 8421440
    Ctl3D = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clYellow
    Font.Height = -24
    Font.Name = '楷体_GB2312'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object BBtn_quit: TBitBtn
    Left = 547
    Top = 66
    Width = 100
    Height = 34
    Caption = '退出(&X)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '宋体'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Kind = bkClose
  end
  object DBGrid_qlyp: TDBGrid
    Left = 5
    Top = 123
    Width = 780
    Height = 222
    DataSource = dm.DS_public
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '宋体'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = '宋体'
    TitleFont.Style = []
    OnKeyUp = DBGrid_qlypKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'ypbh'
        Title.Caption = '药品编号'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ym'
        Title.Caption = '药名'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gg'
        Title.Caption = '规格'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jx'
        Title.Caption = '剂型'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qll'
        Title.Caption = '请领量'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jldw'
        Title.Caption = '单位'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sfl'
        Title.Caption = '实发量'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qlrq'
        Title.Caption = '请领日期'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fyrq'
        Title.Caption = '发药日期'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fyr'
        Title.Caption = '发药人'
        Visible = True
      end>
  end
  object DBGrid_XYZB: TDBGrid
    Left = 74
    Top = 91
    Width = 351
    Height = 151
    DataSource = dm.DS_comm
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '宋体'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = '宋体'
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid_XYZBDblClick
    OnKeyPress = DBGrid_XYZBKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'qldh'
        Title.Alignment = taCenter
        Title.Caption = '请领单号'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ksmc'
        Title.Alignment = taCenter
        Title.Caption = '科室名称'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fyrq'
        Title.Alignment = taCenter
        Title.Caption = '发药日期'
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qlrq'
        Title.Alignment = taCenter
        Title.Caption = '请领日期'
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 2
    Top = 349
    Width = 783
    Height = 195
    Color = clWhite
    DataSource = dm.DS_public1
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '宋体'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = '宋体'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
end
