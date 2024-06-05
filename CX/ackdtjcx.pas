unit ackdtjcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, ComCtrls;

type
  Tfm_ackdcxtj = class(TForm)
    Panel2: TPanel;
    DBGrid_xzghdw: TDBGrid;
    Label4: TLabel;
    Label3: TLabel;
    datefrom: TDateTimePicker;
    dateto: TDateTimePicker;
    btn_cx: TBitBtn;
    btn_print: TBitBtn;
    dad: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BBtn_quitClick(Sender: TObject);
    procedure btn_cxClick(Sender: TObject);
    procedure datefromKeyPress(Sender: TObject; var Key: Char);
    procedure datetoKeyPress(Sender: TObject; var Key: Char);
    procedure btn_printClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_ackdcxtj: Tfm_ackdcxtj;

implementation

uses data,main, czydl, qrckdtj;

{$R *.DFM}

procedure Tfm_ackdcxtj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.Q_comm.close;
end;

procedure Tfm_ackdcxtj.FormShow(Sender: TObject);
begin
dm.Q_comm.close;
datefrom.date:=date();
dateto.date:=date();
datefrom.setfocus;
end;

procedure Tfm_ackdcxtj.BBtn_quitClick(Sender: TObject);
begin
close;
end;

procedure Tfm_ackdcxtj.btn_cxClick(Sender: TObject);
begin
with dm.q_comm do
begin
  Close;
  SQL.Clear;
  SQL.Add('exec yk_ckdtjbb :datefrom,:dateto,:opid');
  parambyname('datefrom').asdate:=datefrom.date;
  parambyname('dateto').asdate:=dateto.date;
  parambyname('opid').assmallint:=strtoint(fm_czydl.ed_bh.text);
  Prepare;
  open;
  if RecordCount=0 then
  begin
    application.messagebox('不是本月出库号或此范围内无出库记录，请再试！','提示',48);
    datefrom.SetFocus;
  end;
  end;
end;

procedure Tfm_ackdcxtj.datefromKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then dateto.setfocus;
end;

procedure Tfm_ackdcxtj.datetoKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then btn_cx.setfocus;
end;

procedure Tfm_ackdcxtj.btn_printClick(Sender: TObject);
begin
  btn_cxClick(sender);
  qr_ckdtj.QRLabel3.caption:=datetostr(datefrom.date);
  qr_ckdtj.QRLabel5.caption:=datetostr(dateto.date);
  qr_ckdtj.QRLabel13.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('xy').ascurrency);
  qr_ckdtj.QRLabel14.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('zcy').ascurrency);
  qr_ckdtj.QRLabel15.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('cy').ascurrency);
  qr_ckdtj.QRLabel16.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('yfqe').ascurrency);
  qr_ckdtj.QRLabel17.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('qtxy').ascurrency);
  qr_ckdtj.QRLabel18.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('qtzcy').ascurrency);
  qr_ckdtj.QRLabel19.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('qtcy').ascurrency);
  qr_ckdtj.QRLabel20.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('qtqe').ascurrency);
  qr_ckdtj.QRLabel21.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('allxy').ascurrency);
  qr_ckdtj.QRLabel22.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('allzcy').ascurrency);
  qr_ckdtj.QRLabel23.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('allcy').ascurrency);
  qr_ckdtj.QRLabel24.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('allqe').ascurrency);
  qr_ckdtj.preview;
end;

end.
