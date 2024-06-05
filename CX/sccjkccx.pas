unit sccjkccx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  Tfm_sccjkccx = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    EdCode: TEdit;
    Panel1: TPanel;
    DBGrid_XYZB: TDBGrid;
    BBtn_quit: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure EdCodeEnter(Sender: TObject);
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_XYZBDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBtn_quitClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_sccjkccx: Tfm_sccjkccx;

implementation

uses data;

{$R *.DFM}

procedure Tfm_sccjkccx.FormShow(Sender: TObject);
begin
dm.Q_comm.close;
edcode.setfocus;
end;

procedure Tfm_sccjkccx.EdCodeEnter(Sender: TObject);
begin
DBGrid_XYZB.Visible:=false;
edcode.Clear;
end;

procedure Tfm_sccjkccx.EdCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if key<>#13 then exit;
  with dm.Q_MedStore do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select a.*,b.mc  from sccj a,cjxz b where a.xz=b.xzbm and a.pym like :pym or a.xz=b.xzbm and a.cm like :mcmc ');
    parambyname('mcmc').AsString := '%'+EdCode.Text+'%';
    parambyname('pym').AsString := '%'+EdCode.Text+'%';
    open;
    if recordcount>0 then
    begin
      if recordcount=1 then DBGrid_XYZBDblClick(sender)
      else begin DBGrid_XYZB.Visible:=true; DBGrid_XYZB.SetFocus; end;
    end
    else
    begin
      application.MessageBox('无此生产厂家!','错误提示',0+mb_iconstop);
    end;
  end;
end;

procedure Tfm_sccjkccx.DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_XYZBDblClick(Sender);
end;

procedure Tfm_sccjkccx.DBGrid_XYZBDblClick(Sender: TObject);
var code:string;
begin
  code:= dm.Q_MedStore['cjbm'];
  EdCode.Text:=dm.Q_MedStore['cm'];
  DBGrid_XYZB.Visible:=false;
  with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('select 药名=a.ym,规格=a.gg,库存量=b.kcl,单位=a.jldw,零售价=ylsj,金额=b.kcl*a.ylsj,入库时间=c.rkrq,失效日期=b.sxrq');
    sql.add('from xyzb a,xykcun b,xykr c,sccj d where d.cjbm=:inc_code and b.ypbh=a.ypbh and b.rkxh=c.rkxh and b.kcl>0 and d.cjbm=c.cjbm order by a.ym,b.sxrq');
    parambyname('inc_code').asstring:=code;
    open;    //失效日期=convert(char(12),b.sxrq,102)
    if RecordCount=0 then
    begin
    application.messagebox('此生产厂家无库存，请再试！','提示',48);
    edcode.SetFocus;
    end
    else
    dbgrid1.SetFocus;
  end;
end;


procedure Tfm_sccjkccx.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure Tfm_sccjkccx.BBtn_quitClick(Sender: TObject);
begin
close;
end;

procedure Tfm_sccjkccx.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var i:integer;
begin
   for i:=0 to DBGrid1.Columns.Count -1 do
   begin
     DBGrid1.Columns[i].Title.Alignment :=tacenter;
   end;
end;

end.
