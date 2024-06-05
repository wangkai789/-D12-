unit crkxxtj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Buttons;

type
  Tfm_ypcrkxxtj = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    datefrom: TDateTimePicker;
    dateto: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Panel5: TPanel;
    btn_rkxxdy: TBitBtn;
    btn_ckmlxx: TBitBtn;
    btn_exit: TBitBtn;
    Panel6: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    procedure btn_rkxxdyClick(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure btn_ckmlxxClick(Sender: TObject);
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
  fm_ypcrkxxtj: Tfm_ypcrkxxtj;

implementation

uses data, q_rkxxdy, q_ckmlxx;

{$R *.DFM}

procedure Tfm_ypcrkxxtj.btn_rkxxdyClick(Sender: TObject);
begin
qr_rkxxdy.qstime.caption:=datetostr(datefrom.date);
qr_rkxxdy.jztime.caption:=datetostr(dateto.date);
with dm.q_public do
begin
  close;
  sql.clear;
  sql.add('select * from xyzb a,xykr b,sccj c,ghdw d,ypjx e ');
  sql.add('where a.jxbm=e.jxbm and datediff(day,:aadate,rkrq)>=0  and ');
  sql.add(' datediff(day,rkrq,:zzdate)>=0 and  b.cjbm=c.cjbm and d.inc_code=b.ghdw and a.ypbh=b.ypbh');
  if  RadioButton1.checked then begin sql.add('and a.lb=1'); qr_rkxxdy.QRLabel1.caption:='入库信息表（按西药）'; end;
  if  RadioButton2.checked then begin sql.add('and a.lb=2'); qr_rkxxdy.QRLabel1.caption:='入库信息表（按中成药）'; end;
  if  RadioButton3.checked then begin sql.add('and a.lb=3'); qr_rkxxdy.QRLabel1.caption:='入库信息表（按中草药）'; end;
  if  RadioButton4.checked then begin sql.add(''); qr_rkxxdy.QRLabel1.caption:='入库信息表（综合统计）'; end;
  ParamByName('aadate').asdate:=datefrom.Date;
  ParamByName('zzdate').asdate:=dateto.Date+1;
  open;
  qr_rkxxdy.preview;
end;
end;

procedure Tfm_ypcrkxxtj.btn_exitClick(Sender: TObject);
begin
close;
end;

procedure Tfm_ypcrkxxtj.btn_ckmlxxClick(Sender: TObject);
begin
qr_ckmlxx.qstime.caption:=datetostr(datefrom.date);
qr_ckmlxx.jztime.caption:=datetostr(dateto.date);
with dm.q_public do
begin
  close;
  sql.clear;
  sql.add('select d.lsj,* from xyzb a,xykr b,sccj c,xykchu d,ypjx e,jgxx f');
  sql.add('where a.jxbm=e.jxbm and datediff(day,:aadate,ckrq)>=0  and ');
  sql.add(' datediff(day,ckrq,:zzdate)>=0 and  b.cjbm=c.cjbm and d.rkxh=b.rkxh and a.ypbh=b.ypbh and f.ksbm=d.ksbm');
  if  RadioButton1.checked then begin sql.add('and a.lb=1'); qr_ckmlxx.QRLabel11.caption:='出库目录信息表（按西药）'; end;
  if  RadioButton2.checked then begin sql.add('and a.lb=2'); qr_ckmlxx.QRLabel11.caption:='出库目录信息表（按中成药）'; end;
  if  RadioButton3.checked then  begin sql.add('and a.lb=3'); qr_ckmlxx.QRLabel11.caption:='出库目录信息表（按中草药）'; end;
  if  RadioButton4.checked then begin sql.add(''); qr_ckmlxx.QRLabel11.caption:='出库目录信息表（综合统计）'; end;
  ParamByName('aadate').asdate:=datefrom.Date;
  ParamByName('zzdate').asdate:=dateto.Date+1;
  open;
  qr_ckmlxx.preview;
  btn_rkxxdy.setfocus;
end;
end;

procedure Tfm_ypcrkxxtj.FormShow(Sender: TObject);
begin
RadioButton1.checked:=true;
datefrom.date:=now;
dateto.date:=now;
datefrom.setfocus;
end;

procedure Tfm_ypcrkxxtj.datefromKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then dateto.setfocus;
end;

procedure Tfm_ypcrkxxtj.datetoKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  btn_ckmlxx.setfocus;
end;

procedure Tfm_ypcrkxxtj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
