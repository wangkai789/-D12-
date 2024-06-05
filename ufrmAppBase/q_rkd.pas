unit q_rkd;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  Tqr_rkd = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape6: TQRShape;
    QRLabel10: TQRLabel;
    DetailBand1: TQRBand;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText2: TQRDBText;
    QRShape9: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape10: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape11: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel14: TQRLabel;
    QRLabel_kj: TQRLabel;
    QRLabel_cgy: TQRLabel;
    QRShape1: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel52: TQRLabel;
    QRLabel15: TQRLabel;
    QR_rkrq: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText8: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    procedure QRSysData1Print(sender: TObject; var Value: String);
  private

  public
     pagecount:integer;
  end;

var
  qr_rkd: Tqr_rkd;

implementation

{$R *.DFM}

procedure Tqr_rkd.QRSysData1Print(sender: TObject; var Value: String);
begin
        value:='µÚ'+value+'Ò³'+'(¹²'+inttostr(pagecount)+'Ò³)';
end;

end.
