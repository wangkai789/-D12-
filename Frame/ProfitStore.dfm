object Frame_ProfitStore: TFrame_ProfitStore
  Left = 0
  Top = 0
  Width = 1172
  Height = 587
  Align = alClient
  TabOrder = 0
  inline Frame_base1: TFrame_base
    Left = 0
    Top = 0
    Width = 1172
    Height = 587
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1172
    ExplicitHeight = 587
    inherited GroupBox3: TGroupBox
      Width = 1172
      ExplicitWidth = 1172
      inherited Label15: TLabel
        Left = 369
        Top = 15
        ExplicitLeft = 369
        ExplicitTop = 15
      end
      inherited Label7: TLabel
        Left = 369
        Top = 39
        ExplicitLeft = 369
        ExplicitTop = 39
      end
      inherited Label18: TLabel
        Left = 511
        Top = 35
        Visible = False
        ExplicitLeft = 511
        ExplicitTop = 35
      end
      inherited lbl_MedName: TLabel
        Left = 544
        Top = 11
        Visible = False
        ExplicitLeft = 544
        ExplicitTop = 11
      end
      inherited btn_Search: TBitBtn
        Left = 639
        Top = 24
        OnClick = Frame_base1btn_SearchClick
        ExplicitLeft = 639
        ExplicitTop = 24
      end
      inherited DT_from: TDateTimePicker
        Left = 392
        Top = 11
        Width = 96
        ExplicitLeft = 392
        ExplicitTop = 11
        ExplicitWidth = 96
      end
      inherited DT_to: TDateTimePicker
        Left = 391
        Top = 35
        Width = 97
        ExplicitLeft = 391
        ExplicitTop = 35
        ExplicitWidth = 97
      end
      inherited edt_SearchCondition: TEdit
        Left = 544
        Top = 30
        Visible = False
        ExplicitLeft = 544
        ExplicitTop = 30
      end
      inherited btn_ExportXls: TBitBtn
        Left = 794
        Top = 23
        ExplicitLeft = 794
        ExplicitTop = 23
      end
      inherited BitBtn11: TBitBtn
        Left = 872
        Top = 23
        ExplicitLeft = 872
        ExplicitTop = 23
      end
      inherited rg1: TRadioGroup
        Left = 233
        Top = 4
        Height = 51
        ExplicitLeft = 233
        ExplicitTop = 4
        ExplicitHeight = 51
      end
      inherited btn_SearchInStoreTotal: TBitBtn
        Left = 716
        Top = 23
        Enabled = False
        ExplicitLeft = 716
        ExplicitTop = 23
      end
    end
    inherited cxgrd: TcxGrid
      Width = 1172
      Height = 528
      ExplicitWidth = 1172
      ExplicitHeight = 528
    end
    inherited DBGrid_xyzb: TDBGrid
      Left = 456
      Top = 56
    end
    inherited cxStyleRepository: TcxStyleRepository
      PixelsPerInch = 96
      inherited GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
        BuiltIn = True
      end
      inherited GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
        BuiltIn = True
      end
    end
  end
  object rg_kind_sell: TRadioGroup
    Left = 155
    Top = 4
    Width = 78
    Height = 50
    Ctl3D = True
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #33647#21697
      #31185#23460)
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
end
