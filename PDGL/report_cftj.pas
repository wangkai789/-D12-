unit report_cftj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TF_report_cftj = class(TForm)
    Rep_pdgl: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel39: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRBand24: TQRBand;
    QRSysData7: TQRSysData;
    SummaryBand1: TQRBand;
    QRLabel52: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel57: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_report_cftj: TF_report_cftj;

implementation

uses data;

{$R *.DFM}

end.
