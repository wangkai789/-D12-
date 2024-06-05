unit aqldcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  Tfm_aqldcx = class(TForm)
    Label1: TLabel;
    EdCode: TEdit;
    Panel1: TPanel;
    BBtn_quit: TBitBtn;
    DBGrid_qlyp: TDBGrid;
    DBGrid_XYZB: TDBGrid;
    DBGrid1: TDBGrid;
    procedure EdCodeEnter(Sender: TObject);
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_XYZBDblClick(Sender: TObject);
    procedure DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_qlypKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure cx_mx();
  public
    { Public declarations }
  end;

var
  fm_aqldcx: Tfm_aqldcx;

implementation

uses data, Factory;

{$R *.DFM}
procedure Tfm_aqldcx.cx_mx();
begin
  with dm.q_public1 do
  begin
    close;
    sql.clear;
    sql.add('select 药名=a.ym,规格=a.gg,药品批号=c.ypph,单位=a.jldw,出库数量=b.cksl,生产厂家=d.cm,供货单位=e.inc_name');
    sql.add('from xyzb a,xykchu b,xykr c,sccj d,ghdw e where d.cjbm=c.cjbm and e.inc_code=c.ghdw and c.ypbh=:ypbh and b.qldh=:qldh and  c.ypbh=a.ypbh  and b.rkxh=c.rkxh  ');
    parambyname('ypbh').asstring:=DBGrid_qlyp.Fields[0].asstring;
    parambyname('qldh').asstring:=edcode.text;
    open;
  end;
end;

procedure Tfm_aqldcx.EdCodeEnter(Sender: TObject);
begin
dm.Q_public.close;dm.Q_public1.close; DBGrid_XYZB.visible:=false;
edcode.clear;
end;

procedure Tfm_aqldcx.EdCodeKeyPress(Sender: TObject; var Key: Char);
begin
  ISDIGIT(KEY);
 if key<>#13 then exit;
 with dm.q_comm do
 begin
    close;
    sql.Clear;
    sql.add('select qldh,b.ksmc,a.qlrq,a.fyrq from qlyf a,jgxx b ');
    sql.add('where a.yfbm=b.ksbm and fyrq is not null  ');
    if edcode.text<>'' then
    begin
      sql.add(' and qldh=:qldh');
      ParamByName('qldh').AsInteger:=strtoint(trim(edcode.text));
    end;
    Prepare;
    Open;
    case recordcount of
    0:begin
        Application.MessageBox('药库没有发药。','提示！',0+mb_iconinformation);
        exit;
      end;
    1: DBGrid_xyzbdblClick(Sender);
    else begin
            DBGrid_xyzb.Visible:=true; DBGrid_xyzb.SetFocus;
         end;
    end;
end;
end;

procedure Tfm_aqldcx.DBGrid_XYZBDblClick(Sender: TObject);
begin
 edcode.text:=dm.q_comm.Fields[0].asstring;
 DBGrid_xyzb.Visible:=false;
 with dm.Q_public do
  begin
    Close;
    SQL.Clear;
    sql.Add('select a.*,b.ym,b.gg,b.jldw,d.qlrq,d.fyrq,d.fyr,e.jx FROM qldb a, xyzb b, qlyf d,ypjx e');
    sql.Add('where  a.qldh=:mqldh AND b.ypbh=a.ypbh  and a.qldh=d.qldh and e.jxbm=b.jxbm  ORDER BY a.ypbh');
    ParamByName('mqldh').AsInteger:=strtoint(trim(edcode.text));
    Prepare;
    open;
  end;
  cx_mx;
  DBGrid_qlyp.Visible:=true;
  DBGrid_qlyp.SetFocus;
end;

procedure Tfm_aqldcx.DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_xyzbDblClick(Sender);
end;

procedure Tfm_aqldcx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.q_public.close;dm.q_public1.close;dm.q_comm.close;action:=cafree;
end;

procedure Tfm_aqldcx.FormShow(Sender: TObject);
begin
dm.q_public.close;dm.q_public1.close;dm.q_comm.close;edcode.setfocus;
end;

procedure Tfm_aqldcx.DBGrid_qlypKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=vk_up) or (key=vk_down) then  cx_mx;

end;

procedure Tfm_aqldcx.DBGrid1DrawColumnCell(Sender: TObject;
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
