object fm_aqldcx: Tfm_aqldcx
  Left = -4
  Top = -4
  Width = 808
  Height = 580
  Caption = '�����쵥��ѯ'
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
    Caption = '���쵥��:'
    FocusControl = EdCode
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '����'
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
    Font.Name = '����'
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
    Caption = '�����쵥��ѯ'
    Color = 8421440
    Ctl3D = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clYellow
    Font.Height = -24
    Font.Name = '����_GB2312'
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
    Caption = '�˳�(&X)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '����'
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
    Font.Name = '����'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = '����'
    TitleFont.Style = []
    OnKeyUp = DBGrid_qlypKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'ypbh'
        Title.Caption = 'ҩƷ���'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ym'
        Title.Caption = 'ҩ��'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gg'
        Title.Caption = '���'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jx'
        Title.Caption = '����'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qll'
        Title.Caption = '������'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jldw'
        Title.Caption = '��λ'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sfl'
        Title.Caption = 'ʵ����'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qlrq'
        Title.Caption = '��������'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fyrq'
        Title.Caption = '��ҩ����'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fyr'
        Title.Caption = '��ҩ��'
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
    Font.Name = '����'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = '����'
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid_XYZBDblClick
    OnKeyPress = DBGrid_XYZBKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'qldh'
        Title.Alignment = taCenter
        Title.Caption = '���쵥��'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ksmc'
        Title.Alignment = taCenter
        Title.Caption = '��������'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fyrq'
        Title.Alignment = taCenter
        Title.Caption = '��ҩ����'
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qlrq'
        Title.Alignment = taCenter
        Title.Caption = '��������'
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
    Font.Name = '����'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = '����'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
end
