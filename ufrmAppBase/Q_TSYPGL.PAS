unit q_tsypgl;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  Tqr_tsypgl = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape5: TQRShape;
    SummaryBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    qr_datefrom: TQRLabel;
    fromtodate: TQRLabel;
    QRLabel10: TQRLabel;
    qr_dateto: TQRLabel;
  private

  public

  end;

var
  qr_tsypgl: Tqr_tsypgl;

implementation

{$R *.DFM}

end.
