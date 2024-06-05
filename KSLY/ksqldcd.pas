unit ksqldcd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  Tfm_ksqldcd = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EdCode: TEdit;
    BBtn_quit: TBitBtn;
    btn_cx: TBitBtn;
    Panel2: TPanel;
    procedure BBtn_quitClick(Sender: TObject);
    procedure EdCodeEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure btn_cxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_ksqldcd: Tfm_ksqldcd;

implementation

uses data, q_qld, main, Factory;

{$R *.DFM}

procedure Tfm_ksqldcd.BBtn_quitClick(Sender: TObject);
begin
close;
end;

procedure Tfm_ksqldcd.EdCodeEnter(Sender: TObject);
begin
edcode.Clear;
end;

procedure Tfm_ksqldcd.FormShow(Sender: TObject);
begin
dm.q_comm.close;edcode.SetFocus;
end;

procedure Tfm_ksqldcd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.q_comm.close;
end;

procedure Tfm_ksqldcd.EdCodeKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then btn_cx.SetFocus;
end;

procedure Tfm_ksqldcd.btn_cxClick(Sender: TObject);
begin
with dm.Q_comm do
begin
  close;
  sql.Clear;
  sql.Add('select distinct a.*,b.ckh,b.lsj,d.ksmc,e.fyr,f.ym,f.gg,f.jldw,e.qlrq, '
         +' e.fyrq,je=b.lsj*a.sfl '
         +' from depqldb a,xykchu b,xykcun c,jgxx d,depqlyf e,xyzb f '
         +' where a.qldh=b.qldh and a.ypbh=c.ypbh and c.rkxh=b.rkxh '
         +' and d.ksbm=b.ksbm and a.qldh=e.qldh and a.ypbh=f.ypbh and a.qldh=:mqldh '
         +' ORDER BY a.ypbh');
  ParamByName('mqldh').AsInteger:=strtoint(trim(edcode.text));
  try
  open;
  except
  showmessage('系统发生意外错误 ！');
  exit;
  end;
end;
with qr_qld do
begin
  QRLabel1.caption:=fm_main.Label_hospital.caption+dm.q_comm.fieldbyname('ksmc').asstring+'药品请领单';
  case dm.Q_comm.fieldbyname('zlbm').asinteger of
  1:  qr_yplb.caption:='西药 字';
  2:  qr_yplb.caption:='中草药 字';
  3:  qr_yplb.caption:='中成药 字';
  end;
  qr_ckh.caption:=dm.q_comm.fieldbyname('ckh').asstring;
  prepare;
  pagecount:=qr_qld.pagenumber;
  QRLabel16.Caption :='合计：'+formatcurr('0.00',strtocurr(temp));
  pagesetting(101,210);
  preview;
end;

end;

end.
