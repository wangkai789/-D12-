object Fm_Sqlist: TFm_Sqlist
  Left = 226
  Top = 211
  Width = 397
  Height = 209
  Caption = #31995#32479#21015#34920
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object GroupBox1: TGroupBox
    Left = 2
    Top = 6
    Width = 386
    Height = 135
    Caption = #36873#25321#30340#20449#24687
    TabOrder = 2
    object Label1: TLabel
      Left = 11
      Top = 35
      Width = 48
      Height = 12
      Caption = #25480#26435#20540#65306
    end
    object Label2: TLabel
      Left = 10
      Top = 86
      Width = 60
      Height = 12
      Caption = #31185#23460#32534#30721#65306
    end
    object Label3: TLabel
      Left = 203
      Top = 35
      Width = 36
      Height = 12
      Caption = #31995#32479#65306
    end
    object Label4: TLabel
      Left = 203
      Top = 86
      Width = 36
      Height = 12
      Caption = #31185#23460#65306
    end
    object Edt_Sq: TEdit
      Left = 68
      Top = 32
      Width = 121
      Height = 20
      Hint = #35831#25970#20987#22238#36710#38190#26597#35810
      Color = clInfoBk
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'Edt_Sq'
      OnKeyPress = Edt_SqKeyPress
    end
    object Edt_ksbm: TEdit
      Left = 69
      Top = 80
      Width = 121
      Height = 20
      Hint = #35831#36755#20837#25340#38899#30721#26597#35810
      Color = clInfoBk
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = 'Edit1'
      OnKeyPress = Edt_ksbmKeyPress
    end
    object Edt_sys: TEdit
      Left = 248
      Top = 32
      Width = 121
      Height = 20
      TabOrder = 2
      Text = 'Edt_Sq'
    end
    object Edt_ksmc: TEdit
      Left = 249
      Top = 80
      Width = 121
      Height = 20
      TabOrder = 3
      Text = 'Edit1'
    end
  end
  object DBGrd_sq: TDBGrid
    Left = 376
    Top = -6
    Width = 250
    Height = 175
    TabOrder = 0
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrd_sqDblClick
    OnExit = DBGrd_sqExit
    OnKeyPress = DBGrd_sqKeyPress
    Columns = <
      item
        Color = 11794687
        Expanded = False
        FieldName = 'bh'
        Title.Caption = #32534#21495
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sq'
        Title.Caption = #31995#32479
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sqmc'
        Title.Caption = #31995#32479#21517#31216
        Visible = True
      end>
  end
  object DBGrd_ks: TDBGrid
    Left = 356
    Top = -6
    Width = 254
    Height = 177
    TabOrder = 1
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrd_ksDblClick
    OnExit = DBGrd_ksExit
    OnKeyPress = DBGrd_ksKeyPress
    Columns = <
      item
        Color = 11794687
        Expanded = False
        FieldName = 'ksbm'
        Title.Caption = #31185#23460#32534#30721
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ksmc'
        Title.Caption = #31185#23460#21517#31216
        Visible = True
      end>
  end
end
