unit sxypcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ComCtrls;

type
  Tfm_sxypcx = class(TForm)
    DBGrid1: TDBGrid;
    btn_cx: TBitBtn;
    btn_exit: TBitBtn;
    datefrom: TDateTimePicker;
    dateto: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_cxClick(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure datefromKeyPress(Sender: TObject; var Key: Char);
    procedure datetoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_sxypcx: Tfm_sxypcx;

implementation

uses data;

{$R *.DFM}

procedure Tfm_sxypcx.FormShow(Sender: TObject);
begin
dm.q_comm.close;
datefrom.date:=now;
dateto.date:=now;
datefrom.setfocus;
end;

procedure Tfm_sxypcx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.q_comm.close;action:=cafree;
end;

procedure Tfm_sxypcx.btn_cxClick(Sender: TObject);
begin
with dm.q_comm do
begin
  close;
  sql.clear;
  sql.add('select  a.ypbh,b.ym, d.cjbm, sccj=d.cm, ');
  sql.add('ghbm=e.inc_code, ghdw=e.inc_name, f.jx, b.gg,dw=b.jldw, sl=a.kcl,');
  sql.add('je=a.kcl*b.ylsj, c.scrq, c.rkrq, c.sxrq,ylsj=b.ylsj from xykcun a, xyzb b,');
  sql.add('xykr c, sccj d, ghdw e, ypjx f where a.kcl<>0 and a.rkxh=c.rkxh and');
  sql.add('a.ypbh=b.ypbh AND b.lb in(1,3) and c.cjbm=d.cjbm and');
  sql.add('c.ghdw=e.inc_code and b.jxbm=f.jxbm and datediff(day,:datefrom,c.sxrq)>=0 and datediff(day,:dateto,c.sxrq)<=0');
  ParamByName('datefrom').asdatetime:=datefrom.date;
  ParamByName('dateto').asdatetime:=dateto.date;
  open;
  if recordcount<1 then
  begin
   Application.MessageBox('此时间段内无失效药品！','提示!',0);
   exit;
  end;
end;
end;

procedure Tfm_sxypcx.btn_exitClick(Sender: TObject);
begin
close;
end;

procedure Tfm_sxypcx.datefromKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  dateto.setfocus;
end;

procedure Tfm_sxypcx.datetoKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  btn_cx.setfocus;
end;

end.
