object Fm_reprot1: TFm_reprot1
  Left = 183
  Top = 186
  Width = 696
  Height = 480
  Caption = 'Fm_reprot1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frReport1: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    Left = 120
    Top = 40
    ReportForm = {19000000}
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = dm.Q_public
    Left = 224
    Top = 8
  end
end
