unit zzy;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  Trpt_zzy = class(TQuickRep)
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRBand1: TQRBand;
    QRShape6: TQRShape;
    QRExpr2: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    qlb_date: TQRLabel;
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
  private

  public
    temp1,temp2:string;
  end;

var
  rpt_zzy: Trpt_zzy;

implementation
uses data;
{$R *.DFM}

procedure Trpt_zzy.QRDBText1Print(sender: TObject; var Value: String);
begin
if temp1=value then
   begin
     temp1:=value;
     value:='';
   end else temp1:=value;
end;

procedure Trpt_zzy.QRDBText2Print(sender: TObject; var Value: String);
begin
if temp2=value then
   begin
     temp2:=value;
     value:='';
   end else temp2:=value;
end;

end.
