object fm_testbalance: Tfm_testbalance
  Left = 391
  Top = 225
  Width = 467
  Height = 325
  Caption = #33647#24211#33647#21697#35797#31639#24179#34913
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object GroupBox1: TGroupBox
    Left = 4
    Top = 0
    Width = 451
    Height = 48
    Caption = #35831#36873#25321#26102#38388
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 20
      Width = 48
      Height = 12
      Caption = #24180'    '#20221
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 134
      Top = 20
      Width = 48
      Height = 12
      Caption = #26376'    '#20221
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object SpinEdit1: TSpinEdit
      Left = 70
      Top = 16
      Width = 57
      Height = 21
      MaxValue = 2099
      MinValue = 2001
      TabOrder = 0
      Value = 2001
    end
    object SpinEdit2: TSpinEdit
      Left = 188
      Top = 16
      Width = 57
      Height = 21
      MaxValue = 12
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object BitBtn1: TBitBtn
      Left = 271
      Top = 13
      Width = 75
      Height = 26
      Caption = #35797#31639
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
        0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
        0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
        CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
        CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
        CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
        CCC77777777777777377330333333333CCC3337F33333333737F370333333333
        0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 353
      Top = 13
      Width = 75
      Height = 26
      Caption = #36864#20986
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      NumGlyphs = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 52
    Width = 451
    Height = 239
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'lsh'
        Title.Caption = #20837#24211#21333#21495
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rkxh'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Title.Caption = #20837#24211#24207#21495
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ym'
        Title.Caption = #33647#21517
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gg'
        Title.Caption = #35268#26684
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lsj'
        Title.Caption = #33647#24211#38646#21806#20215
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ypbh'
        Title.Caption = #33647#21697#32534#30721
        Visible = True
      end>
  end
  object Animate1: TAnimate
    Left = 152
    Top = 102
    Width = 73
    Height = 94
    AutoSize = False
    CommonAVI = aviFindFile
    StopFrame = 8
  end
end
