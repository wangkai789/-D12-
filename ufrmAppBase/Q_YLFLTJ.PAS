unit q_ylfltj;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  Tqr_ylfltj = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel19: TQRLabel;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText7: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape6: TQRShape;
    QRExpr1: TQRExpr;
    QRLabel10: TQRLabel;
    fromtodate: TQRLabel;
    qr_datefrom: TQRLabel;
    QRLabel11: TQRLabel;
    qr_dateto: TQRLabel;
  private

  public

  end;

var
  qr_ylfltj: Tqr_ylfltj;

implementation

{$R *.DFM}

end.
