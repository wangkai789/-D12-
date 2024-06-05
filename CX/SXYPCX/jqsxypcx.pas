unit jqsxypcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  Tfm_jqsxypcx = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    EdCode: TEdit;
    Panel1: TPanel;
    BBtn_quit: TBitBtn;
    Label2: TLabel;
    ed_je: TEdit;
    procedure EdCodeEnter(Sender: TObject);
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_jqsxypcx: Tfm_jqsxypcx;

implementation

uses data, Factory;

{$R *.DFM}

procedure Tfm_jqsxypcx.EdCodeEnter(Sender: TObject);
begin
edcode.clear;
end;

procedure Tfm_jqsxypcx.EdCodeKeyPress(Sender: TObject; var Key: Char);
var je:currency;
begin
ISDIGIT(KEY);
je:=0;
if key<>#13 then exit;
with dm.q_comm do
begin
  close;
  sql.clear;
  sql.add('select  a.ypbh,b.ym, d.cjbm, sccj=d.cm, ');
  sql.add('ghbm=e.inc_code, ghdw=e.inc_name, f.jx, b.gg,dw=b.jldw, sl=a.kcl,');
  sql.add('je=a.kcl*b.ylsj, c.scrq, c.rkrq, c.sxrq,ylsj=b.ylsj from xykcun a, xyzb b,');
  sql.add('xykr c, sccj d, ghdw e, ypjx f where a.kcl<>0 and a.rkxh=c.rkxh and');
  sql.add('a.ypbh=b.ypbh AND b.lb in(1,3) and c.cjbm=d.cjbm and');
  sql.add('c.ghdw=e.inc_code and b.jxbm=f.jxbm and datediff(day,c.sxrq,getdate())<=:ts and datediff(day,c.sxrq,getdate())>0');
  ParamByName('ts').asinteger:=strtoint(trim(edcode.text));
  open;
  if RecordCount=0 then
    begin
    application.messagebox('此时间段内无失效药品！','提示',48);
    edcode.SetFocus;
    end
    else
    begin
    while not dm.q_comm.eof do begin  je:=je+dm.q_comm['je'];dm.Q_comm.next; end;
    ed_je.text:=currtostr(je);
    dbgrid1.SetFocus;
    end;
end;
end;

procedure Tfm_jqsxypcx.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.q_comm.close; action:=cafree;
end;

procedure Tfm_jqsxypcx.FormShow(Sender: TObject);
begin
dm.q_comm.close; edcode.SetFocus;
end;

end.
