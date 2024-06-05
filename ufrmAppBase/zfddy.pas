unit zfddy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  Tfm_zfddy = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EdCode: TEdit;
    BBtn_quit: TBitBtn;
    Ed_year: TEdit;
    ed_month: TEdit;
    UpDown2: TUpDown;
    btn_cx: TBitBtn;
    Panel2: TPanel;
    procedure BBtn_quitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodeEnter(Sender: TObject);
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure ed_monthKeyPress(Sender: TObject; var Key: Char);
    procedure btn_cxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_zfddy: Tfm_zfddy;

implementation

uses data,main;

{$R *.DFM}

procedure Tfm_zfddy.BBtn_quitClick(Sender: TObject);
begin
close;
end;

procedure Tfm_zfddy.FormShow(Sender: TObject);
begin
  ed_year.text:=inttostr(year);
  ed_month.text:=inttostr(month);
  dm.q_public.close;
  edcode.setfocus;
end;

procedure Tfm_zfddy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dm.q_public.close;
end;

procedure Tfm_zfddy.EdCodeEnter(Sender: TObject);
begin
edcode.clear;
end;

procedure Tfm_zfddy.EdCodeKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  ed_month.SetFocus;
end;

procedure Tfm_zfddy.ed_monthKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then btn_cx.SetFocus;
end;

procedure Tfm_zfddy.btn_cxClick(Sender: TObject);
begin
with dm.q_comm do
begin
  close;
  sql.clear;
  sql.add('select a.*,b.inc_name,b.bank,b.account,lsze=xy_j_je+cy_je+zcy_j_je,zs=a.zcy_j_fp_zs+a.xy_j_fp_zs+a.cy_fp_zs,plce=isnull(a.plce,0),ze=isnull(a.ze,0) ');
  sql.add('from xykr_zf_tzd a,ghdw b where a.ghdw=b.inc_code and a.lsh=:lsh and month(a.rkdate)=:mmonth and year(a.rkdate)=:myear');  
  parambyname('lsh').asinteger:=strtoint(trim(edcode.text));
  parambyname('myear').asinteger:=strtoint(trim(ed_year.text));
  parambyname('mmonth').asinteger:=strtoint(trim(ed_month.text));
  open;
end;
with dm.q_public do
begin
  close;
  sql.clear;
  sql.add('select 药品编号=a.ypbh,药名=b.ym,规格=b.gg,计量单位=a.jldw,入库数量=a.rksl,零售价=a.lsj,金额=a.rksl*a.lsj,gre=a.jhj*a.rksl,');
  sql.add('a.cgy,a.fhr,a.rkrq,c.inc_name from xykr_zf a,xyzb b,ghdw c where c.inc_code=a.ghdw and a.ypbh=b.ypbh and a.lsh=:lsh and month(a.rkrq)=:mmonth and year(a.rkrq)=:myear ');   //datediff(month,rkdate,getdate())=0
  parambyname('lsh').asinteger:=strtoint(trim(edcode.text));
  parambyname('myear').asinteger:=strtoint(trim(ed_year.text));
  parambyname('mmonth').asinteger:=strtoint(trim(ed_month.text));
  open;
  if recordcount=0 then begin application.MessageBox('此入库号没有作废,请重新输入入库号!','提示',0);exit;end;
with qr_rkd do
begin
QRLabel1.caption:=fm_main.Label_hospital.caption+'药品入库作废单';
QR_rkrq.caption:=dm.Q_public.fieldbyname('rkrq').asstring;
qrlabel15.caption:='第'+trim(edcode.text)+'号';
//QRLabel_kj.caption:=dm.Q_comm.fieldbyname('kj').asstring;
//QRLabel_cgy.caption:=dm.Q_comm.fieldbyname('cgy').asstring;
QRLabel_kj.caption:='';
QRLabel_cgy.caption:='';
QRLabel12.caption:='';
QRLabel13.caption:='';
QRLabel14.caption:='';
prepare;
pagecount:=qr_rkd.pagenumber;
preview;
end;
end;
with qr_rktzd do
begin
  QRLabel1.caption:=fm_main.Label_hospital.caption+'入库汇总作废单';
  qrlabel3.caption:='第'+dm.Q_comm.fieldbyname('lsh').asstring+'号';
  qrlabel31.caption:='采购：'+dm.Q_comm.fieldbyname('cgy').asstring;
  qrlabel32.caption:='保管：'+dm.Q_comm.fieldbyname('bgy').asstring;
  qrlabel33.caption:='会计：'+dm.Q_comm.fieldbyname('kj').asstring;
  qrlabel16.caption:='计帐价：'+dm.Q_comm.fieldbyname('ze').asstring;
  qrlabel17.caption:='购批差价：'+dm.Q_comm.fieldbyname('plce').asstring;
  qrlabel22.caption:='全称：'+dm.Q_comm.fieldbyname('inc_name').asstring;
  qrlabel23.caption:='开户银行：'+dm.Q_comm.fieldbyname('bank').asstring;
  qrlabel24.caption:='帐号：'+dm.Q_comm.fieldbyname('account').asstring;
  qrlabel36.caption:=dm.Q_comm.fieldbyname('lsze').asstring;
  qrlabel37.caption:=dm.Q_comm.fieldbyname('zs').asstring;
  qrlabel38.caption:=dm.Q_comm.fieldbyname('cy_je').asstring;
  qrlabel39.caption:=dm.Q_comm.fieldbyname('cy_fp_zs').asstring;
  qrlabel40.caption:=dm.Q_comm.fieldbyname('zcy_j_je').asstring;
  qrlabel41.caption:=dm.Q_comm.fieldbyname('zcy_j_fp_zs').asstring;
  qrlabel42.caption:=dm.Q_comm.fieldbyname('zcy_wg_je').asstring;
  qrlabel43.caption:=dm.Q_comm.fieldbyname('zcy_wg_fp_zs').asstring;
  qrlabel44.caption:=dm.Q_comm.fieldbyname('zcy_zz_je').asstring;
  qrlabel45.caption:=dm.Q_comm.fieldbyname('zcy_zz_fp_zs').asstring;
  qrlabel46.caption:=dm.Q_comm.fieldbyname('xy_j_je').asstring;
  qrlabel47.caption:=dm.Q_comm.fieldbyname('xy_j_fp_zs').asstring;
  qrlabel48.caption:=dm.Q_comm.fieldbyname('xy_wg_je').asstring;
  qrlabel49.caption:=dm.Q_comm.fieldbyname('xy_wg_fp_zs').asstring;
  qrlabel50.caption:=dm.Q_comm.fieldbyname('xy_zz_je').asstring;
  qrlabel51.caption:=dm.Q_comm.fieldbyname('xy_zz_fp_zs').asstring;
  preview;
end;
end;

end.
