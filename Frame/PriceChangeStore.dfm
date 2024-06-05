object Frame_PriceChangeStore: TFrame_PriceChangeStore
  Left = 0
  Top = 0
  Width = 888
  Height = 550
  Align = alClient
  TabOrder = 0
  inline Frame_base1: TFrame_base
    Left = 0
    Top = 0
    Width = 888
    Height = 550
    Align = alClient
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 435
    ExplicitHeight = 265
    inherited GroupBox3: TGroupBox
      Width = 888
      ExplicitWidth = 435
      inherited Label15: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited Label7: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited Label18: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited lbl_MedName: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited Label39: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited btn_Search: TBitBtn
        OnClick = Frame_base1btn_SearchClick
      end
      inherited edt_SearchCondition: TEdit
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited btn_SearchInStoreTotal: TBitBtn
        Enabled = False
      end
      inherited cbb_yfbm: TComboBox
        StyleElements = [seFont, seClient, seBorder]
      end
    end
    inherited cxgrd: TcxGrid
      Width = 888
      Height = 491
      ExplicitWidth = 435
      ExplicitHeight = 206
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
end
