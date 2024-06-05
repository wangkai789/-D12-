unit kccxdy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  Tfm_kccxdy = class(TForm)
    Label1: TLabel;
    btn_aym: TBitBtn;
    btn_acj: TBitBtn;
    btn_aghdw: TBitBtn;
    btn_exit: TBitBtn;
    btn_ayxq: TBitBtn;
    panel1: TPanel;
    panel3: TPanel;
    procedure btn_aymClick(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure btn_acjClick(Sender: TObject);
    procedure btn_aghdwClick(Sender: TObject);
    procedure btn_ayxqClick(Sender: TObject);

  private
    { Private declarations }
    procedure cx();
  public
    { Public declarations }
  end;

var
  fm_kccxdy: Tfm_kccxdy;

implementation

uses data, q_aym, q_acj, q_aghdw, q_ayxq;

{$R *.DFM}

procedure Tfm_kccxdy.cx();
begin
  with dm.q_comm do
begin
  close;
  sql.clear;
  sql.add('select  a.ypbh, b.ym, d.cjbm, sccj=d.cm,');
  sql.add('ghbm=e.inc_code, ghdw=e.inc_name, f.jx, b.gg,dw=b.jldw, sl=a.kcl,');
  sql.add('je=a.kcl*b.ylsj, c.scrq, c.rkrq, c.sxrq from xykcun a, xyzb b,');
  sql.add('xykr c, sccj d, ghdw e, ypjx f where a.kcl<>0 and a.rkxh=c.rkxh and');
  sql.add('a.ypbh=b.ypbh AND b.lb in(1,2,3) and c.cjbm=d.cjbm and');
  sql.add('c.ghdw=e.inc_code and b.jxbm=f.jxbm ');
  case  fm_kccxdy.tag of
  1: sql.add('order by b.ym');
  2: sql.add('order by d.cm');
  3: sql.add('order by e.inc_name');
  4: sql.add('order by c.sxrq');
  end;
  open;
end;
end;
procedure Tfm_kccxdy.btn_aymClick(Sender: TObject);
begin
fm_kccxdy.tag:=1;
cx();
qr_aym.preview;
end;

procedure Tfm_kccxdy.btn_exitClick(Sender: TObject);
begin
close;
end;

procedure Tfm_kccxdy.btn_acjClick(Sender: TObject);
begin
fm_kccxdy.tag:=2;
cx();
qr_acj.preview;
end;

procedure Tfm_kccxdy.btn_aghdwClick(Sender: TObject);
begin
fm_kccxdy.tag:=3;
cx();
qr_aghdw.preview;
end;

procedure Tfm_kccxdy.btn_ayxqClick(Sender: TObject);
begin
fm_kccxdy.tag:=4;
cx();
qr_ayxq.preview;
end;

end.
