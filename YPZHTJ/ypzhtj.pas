unit ypzhtj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  Tfm_ypzhtj = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn10: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    datefrom: TDateTimePicker;
    dateto: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure datefromKeyPress(Sender: TObject; var Key: Char);
    procedure datetoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_ypzhtj: Tfm_ypzhtj;

implementation

uses data, q_tyygs, q_ypjetj, q_ylfltj, q_tsypgl, q_cjjetj;

{$R *.DFM}

procedure Tfm_ypzhtj.BitBtn11Click(Sender: TObject);
begin
if datefrom.Date>dateto.Date then
begin
  application.MessageBox('起始日期不能大于截止日期！','提示',48);
  exit;
end;
qr_tyygs.qr_datefrom.caption:=datetostr(datefrom.date);
qr_tyygs.qr_dateto.caption:=datetostr(dateto.date);
with dm.q_comm do
begin
  close;
  sql.clear;
  sql.add('select  ghdwbm= d.inc_code, ghdw=d.inc_name,'+
' ypmc=c.ym, e.jx, c.gg,dw=c.jldw, sl=sum(a.sl), je=sum(a.sl*c.ylsj)'+
' from tyygsxb a, xykr b, xyzb c, ghdw d, ypjx e where '+
' datediff(day,:aadate,a.tyrq)>=0 and '+
' datediff(day,a.tyrq,:zzdate)>=0  and a.rkxh=b.rkxh and '+
' b.ypbh=c.ypbh AND  b.ghdw=d.inc_code and '+
' c.jxbm=e.jxbm group by d.inc_code, b.ypbh, d.inc_name, c.ym,'+
' e.jx, c.gg, c.jldw order by d.inc_code, je');
ParamByName('aadate').asdate:=datefrom.Date;
ParamByName('zzdate').asdate:=dateto.Date+1;
  open;
end;
qr_tyygs.preview;
end;

procedure Tfm_ypzhtj.BitBtn12Click(Sender: TObject);
begin
close;
end;

procedure Tfm_ypzhtj.BitBtn7Click(Sender: TObject);
begin
if datefrom.Date>dateto.Date then
begin
  application.MessageBox('起始日期不能大于截止日期！','提示',48);
  exit;
end;
qr_ypjetj.zbrq.caption:=datetostr(date());
qr_ypjetj.qr_datefrom.caption:=datetostr(datefrom.date);
qr_ypjetj.qr_dateto.caption:=datetostr(dateto.date);
with dm.q_comm do
begin
  close;
  sql.clear;
  sql.add('select * from xykr a,xyzb b,ypjx c');
  sql.add('where a.ypbh=b.ypbh and b.jxbm=c.jxbm and datediff(day,a.rkrq,:zzdate)>=0 and datediff(day,:aadate,a.rkrq)>=0');
  ParamByName('aadate').asdate:=datefrom.Date;
  ParamByName('zzdate').asdate:=dateto.Date+1;
  open;
end;
qr_ypjetj.preview;
end;

procedure Tfm_ypzhtj.BitBtn9Click(Sender: TObject);
begin
if datefrom.Date>dateto.Date then
begin
  application.MessageBox('起始日期不能大于截止日期！','提示',48);
  exit;
end;
qr_ylfltj.qr_datefrom.caption:=datetostr(datefrom.date);
qr_ylfltj.qr_dateto.caption:=datetostr(dateto.date);
with dm.q_comm do
begin
  close;
  sql.clear;
  sql.add('select a.yyjh, a.yyjm, b.ym, c.jx, b.gg,');
  sql.add('dw=b.jldw, sl=d.rksl,je=d.rksl*d.lsj, d.rkrq, d.sxrq from');
  sql.add('xyyj a, xyzb b, ypjx c, xykr d where  datediff(day,:aadate,d.rkrq)>=0 ');
  sql.add('and datediff(day,d.rkrq,:zzdate)>=0  and d.ypbh=b.ypbh AND  ');
  sql.add('substring(b.ypbh,1,2)=a.yyjh and b.jxbm=c.jxbm ');
  sql.add('order by a.yyjh, je');
  ParamByName('aadate').asdate:=datefrom.Date;
  ParamByName('zzdate').asdate:=dateto.Date+1;
  open;
end;
qr_ylfltj.preview;
end;

procedure Tfm_ypzhtj.BitBtn10Click(Sender: TObject);
begin
if datefrom.Date>dateto.Date then
begin
  application.MessageBox('起始日期不能大于截止日期！','提示',48);
  exit;
end;
qr_tsypgl.qr_datefrom.caption:=datetostr(datefrom.date);
qr_tsypgl.qr_dateto.caption:=datetostr(dateto.date);
with dm.q_comm do
begin
  close;
  sql.clear;
  sql.add('select d.*,ckje=c.lsj*c.cksl,b.*,c.* from xyzb a,ypzl b,xykchu c,ks_zyks d,xykcun e ');
  sql.add('where d.ksbh=c.ksbm and b.zlbm=a.zlbm and e.ypbh=a.ypbh and b.zlbm<>1 and ');
  sql.add('c.rkxh=e.rkxh and datediff(day,c.ckrq,:zzdate)>=0 and datediff(day,:aadate,c.ckrq)>=0');
  ParamByName('aadate').asdate:=datefrom.Date;
  ParamByName('zzdate').asdate:=dateto.Date+1;
  open;
end;
qr_tsypgl.preview;
end;

procedure Tfm_ypzhtj.BitBtn8Click(Sender: TObject);
begin
if datefrom.Date>dateto.Date then
begin
  application.MessageBox('起始日期不能大于截止日期！','提示',48);
  exit;
end;
qr_cjjetj.qr_datefrom.caption:=datetostr(datefrom.date);
qr_cjjetj.qr_dateto.caption:=datetostr(dateto.date);
with dm.q_comm do
begin
  close;
  sql.clear;
  sql.add('select  d.cm, b.ym, c.jx, b.gg, dw=b.jldw,'+
  ' sl=a.rksl, je=a.rksl*a.lsj from xykr a, xyzb b, ypjx c, sccj d'+
  ' where datediff(day,:aadate,rkrq)>=0  and '+
  ' datediff(day,rkrq,:zzdate)>=0 and '+
  ' a.cjbm=d.cjbm and a.ypbh=b.ypbh  and b.jxbm=c.jxbm order by d.cm');
  ParamByName('aadate').asdate:=datefrom.Date;
  ParamByName('zzdate').asdate:=dateto.Date+1;
  open;
end;
qr_cjjetj.preview;
end;

procedure Tfm_ypzhtj.FormShow(Sender: TObject);
begin
datefrom.date:=now;
dateto.date:=now;
datefrom.setfocus;
end;

procedure Tfm_ypzhtj.datefromKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then dateto.setfocus;
end;

procedure Tfm_ypzhtj.datetoKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then   BitBtn7.setfocus;
end;

procedure Tfm_ypzhtj.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
