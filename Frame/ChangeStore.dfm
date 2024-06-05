object Frame_ChangeStore: TFrame_ChangeStore
  Left = 0
  Top = 0
  Width = 991
  Height = 413
  TabOrder = 0
  inline Frame_base1: TFrame_base
    Left = 0
    Top = 0
    Width = 991
    Height = 413
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 991
    ExplicitHeight = 413
    inherited GroupBox3: TGroupBox
      Width = 991
      ExplicitWidth = 991
      inherited Label15: TLabel
        Left = 289
        Top = 19
        ExplicitLeft = 289
        ExplicitTop = 19
      end
      inherited Label7: TLabel
        Left = 289
        Top = 38
        ExplicitLeft = 289
        ExplicitTop = 38
      end
      inherited Label18: TLabel
        Left = 437
        ExplicitLeft = 437
      end
      inherited lbl_MedName: TLabel
        Left = 574
        ExplicitLeft = 574
      end
      inherited btn_Search: TBitBtn
        Left = 679
        OnClick = Frame_base1btn_SearchClick
        ExplicitLeft = 679
      end
      inherited DT_from: TDateTimePicker
        Left = 308
        Top = 11
        ExplicitLeft = 308
        ExplicitTop = 11
      end
      inherited DT_to: TDateTimePicker
        Left = 308
        Top = 35
        ExplicitLeft = 308
        ExplicitTop = 35
      end
      inherited edt_SearchCondition: TEdit
        Left = 478
        ExplicitLeft = 478
      end
      inherited btn_ExportXls: TBitBtn
        Left = 834
        ExplicitLeft = 834
      end
      inherited BitBtn11: TBitBtn
        Left = 912
        ExplicitLeft = 912
      end
      inherited rg1: TRadioGroup
        Left = 137
        Top = 6
        Width = 137
        Height = 50
        ExplicitLeft = 137
        ExplicitTop = 6
        ExplicitWidth = 137
        ExplicitHeight = 50
      end
      inherited btn_SearchInStoreTotal: TBitBtn
        Left = 756
        Enabled = False
        ExplicitLeft = 756
      end
    end
    inherited cxgrd: TcxGrid
      Width = 991
      Height = 354
      ExplicitWidth = 991
      ExplicitHeight = 354
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
    inherited Q_Result: TUniQuery
      Left = 128
      Top = 160
    end
  end
end
