object Frame_ReturnStore: TFrame_ReturnStore
  Left = 0
  Top = 0
  Width = 1163
  Height = 529
  TabOrder = 0
  inline Frame_base1: TFrame_base
    Left = 0
    Top = 0
    Width = 1163
    Height = 529
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1163
    ExplicitHeight = 529
    inherited GroupBox3: TGroupBox
      Width = 1163
      ExplicitWidth = 1163
      inherited Label15: TLabel
        Left = 386
        Top = 15
        ExplicitLeft = 386
        ExplicitTop = 15
      end
      inherited Label7: TLabel
        Left = 385
        Top = 39
        ExplicitLeft = 385
        ExplicitTop = 39
      end
      inherited btn_Search: TBitBtn
        OnClick = Frame_base1btn_SearchClick
      end
      inherited DT_from: TDateTimePicker
        Left = 406
        Top = 11
        ExplicitLeft = 406
        ExplicitTop = 11
      end
      inherited DT_to: TDateTimePicker
        Left = 405
        Top = 35
        ExplicitLeft = 405
        ExplicitTop = 35
      end
      inherited rg1: TRadioGroup
        Left = 265
        Top = 6
        Width = 112
        Height = 49
        Caption = #26085#26399#31867#22411
        Items.Strings = (
          #30003#35831
          #36864#36153)
        ExplicitLeft = 265
        ExplicitTop = 6
        ExplicitWidth = 112
        ExplicitHeight = 49
      end
      inherited btn_SearchInStoreTotal: TBitBtn
        Enabled = False
      end
    end
    inherited cxgrd: TcxGrid
      Width = 1163
      Height = 470
      ExplicitWidth = 1163
      ExplicitHeight = 470
    end
    inherited DBGrid_xyzb: TDBGrid
      Left = 256
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
  object rg_patclass: TRadioGroup
    Left = 137
    Top = 6
    Width = 126
    Height = 49
    Caption = #24739#32773#31867#22411
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      '0:'#20840#37096
      '1:'#38376#35786
      '2:'#20303#38498)
    TabOrder = 1
  end
end
