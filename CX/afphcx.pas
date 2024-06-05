unit afphcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  Tfm_afphcx = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    EdCode: TEdit;
    Panel1: TPanel;
    BBtn_quit: TBitBtn;
    procedure BBtn_quitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdCodeEnter(Sender: TObject);
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_afphcx: Tfm_afphcx;

implementation

uses data;

{$R *.DFM}

procedure Tfm_afphcx.BBtn_quitClick(Sender: TObject);
begin
close;
end;

procedure Tfm_afphcx.FormShow(Sender: TObject);
begin
dm.q_comm.close;
edcode.setfocus;
end;

procedure Tfm_afphcx.EdCodeEnter(Sender: TObject);
begin
edcode.clear;
end;

procedure Tfm_afphcx.EdCodeKeyPress(Sender: TObject; var Key: Char);
begin
if key<>#13 then exit;
with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('select 药名=a.ym,规格=a.gg,药品批号=c.ypph,发票号=c.rkdh,入库数量=c.rksl,单位=a.jldw,零售价=a.ylsj,生产厂家=d.cm,供货单位=e.inc_name,入库时间=c.rkrq ');
    sql.add('from xyzb a,xykr c,sccj d,ghdw e where d.cjbm=c.cjbm and e.inc_code=c.ghdw and c.rkdh=:fph and a.ypbh=c.ypbh    order by a.ym ');
    parambyname('fph').asstring:=edcode.text;
    open;
    if RecordCount=0 then
    begin
    application.messagebox('无此发票号,请重试!','提示',48);
    edcode.SetFocus;
    end;
  end;
end;

procedure Tfm_afphcx.DBGrid1DrawColumnCell(Sender: TObject;
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
