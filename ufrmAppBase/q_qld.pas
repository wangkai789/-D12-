unit q_qld;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  Tqr_qld = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape7: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape8: TQRShape;
    QRDBText7: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QR_yplb: TQRLabel;
    QR_ckh: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel16: TQRLabel;
    QRExpr1: TQRExpr;
    procedure QRSysData1Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private

  public
    pagecount:integer;
    temp:string;
  end;

var  qr_qld: Tqr_qld;


implementation

{$R *.DFM}

procedure Tqr_qld.QRSysData1Print(sender: TObject; var Value: String);
begin
value:='µÚ'+value+'Ò³'+'(¹²'+inttostr(pagecount)+'Ò³)';
end;

procedure Tqr_qld.QRExpr1Print(sender: TObject; var Value: String);
begin
  temp:=value;
  value:='';
end;

end.
