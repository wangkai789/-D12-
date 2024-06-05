object frm_tempedit: Tfrm_tempedit
  Left = 102
  Top = 113
  Width = 633
  Height = 480
  Caption = '编辑修改'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = '宋体'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object DBG_Show: TDBGrid
    Left = 0
    Top = 0
    Width = 625
    Height = 400
    Align = alClient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = '宋体'
    TitleFont.Style = []
    OnDblClick = DBG_ShowDblClick
    OnKeyDown = DBG_ShowKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = '药品名称'
        Title.Alignment = taCenter
        Width = 263
        Visible = True
      end
      item
        Expanded = False
        FieldName = '入库数量'
        Title.Alignment = taCenter
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = '进货价格'
        Title.Alignment = taCenter
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rkxh'
        Visible = False
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 625
    Height = 53
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 240
      Top = 8
      Width = 97
      Height = 33
      Caption = '退出'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
  end
end
