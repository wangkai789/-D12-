object fm_ykpd: Tfm_ykpd
  Left = 239
  Top = 232
  Caption = #33647#24211#24211#23384#30424#28857#31649#29702
  ClientHeight = 541
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 48
    Align = alTop
    Caption = #30424#28857#31649#29702
    Color = clTeal
    Font.Charset = GB2312_CHARSET
    Font.Color = clYellow
    Font.Height = -29
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 800
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 109
    Width = 792
    Height = 432
    Align = alBottom
    DataSource = dm.DS_comm
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bh'
        Title.Alignment = taCenter
        Title.Caption = #33647#21697#32534#21495
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
        FieldName = 'kcl'
        Title.Alignment = taCenter
        Title.Caption = #24211#23384#37327
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dw'
        Title.Alignment = taCenter
        Title.Caption = #21333#20301
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dj'
        Title.Alignment = taCenter
        Title.Caption = #21333#20215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jx'
        Title.Alignment = taCenter
        Title.Caption = #21058#22411
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'je'
        Title.Alignment = taCenter
        Title.Caption = #37329#39069
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 46
    Top = 62
    Width = 363
    Height = 48
    Caption = #33647#21697#31181#31867
    Columns = 4
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #20840#37096
      #35199#33647
      #20013#33647
      #25104#33647)
    ParentFont = False
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 472
    Top = 73
    Width = 87
    Height = 31
    Caption = #30424' '#28857
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
      73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
      0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
      0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
      0333337F777777737F333308888888880333337F333333337F33330888888888
      03333373FFFFFFFF733333700000000073333337777777773333}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object bitprint: TBitBtn
    Left = 559
    Top = 73
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
    TabOrder = 4
    OnClick = bitprintClick
  end
  object BitBtn2: TBitBtn
    Left = 645
    Top = 73
    Width = 87
    Height = 31
    Caption = #36864' '#20986
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
  end
end
