unit ypcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ExtCtrls, Buttons;

type
  TFm_ypcx = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EdCode: TEdit;
    DBGrid_XYZB: TDBGrid;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RBut_xy: TRadioButton;
    RBut_cy: TRadioButton;
    RBut_zcy: TRadioButton;
    BBtn_quit: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid_XYZBDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BBtn_quitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_ypcx: TFm_ypcx;

implementation

uses data;

{$R *.DFM}

procedure TFm_ypcx.FormShow(Sender: TObject);
begin
  DBGrid_XYZB.Left:=74;  DBGrid_XYZB.Top:=53;   dm.Q_comm.close;
end;

procedure TFm_ypcx.BitBtn1Click(Sender: TObject);
begin
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.add('select 药一级号=yyjh,药一级名=yyjm from xyyj');
    if RBut_xy.Checked then sql.add(' where lb=1')
    else
    if RBut_cy.Checked then sql.add(' where lb=3')
    else
    if RBut_zcy.Checked then sql.add(' where lb=2');
    open;
  end;
end;

procedure TFm_ypcx.BitBtn2Click(Sender: TObject);
begin
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.add('select 药二级号=yejh,药二级名=yejm from xyej');
    open;
  end;
end;

procedure TFm_ypcx.BitBtn3Click(Sender: TObject);
begin
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.add('select 药品编号=a.ypbh,药品名称=a.ym,规格=a.gg,计量单位=a.jldw, '
    +' 最小单位=a.zxdw,进价=a.pfj,零售价=a.ylsj,核算比=a.hsb,拼音码=a.pym,剂型=b.jx '
    +' from xyzb a , ypjx b where a.jxbm=b.jxbm and a.ylsj>0 and ');
    if RBut_xy.Checked then sql.add(' lb=1')
    else
    if RBut_cy.Checked then sql.add(' lb=3')
    else
    if RBut_zcy.Checked then sql.add(' lb=2');
    open;
  end;
end;

procedure TFm_ypcx.EdCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if key<>#13 then exit;
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.add('select 药品编号=a.ypbh,药品名称=a.ym,规格=a.gg,计量单位=a.jldw, '
    +' 最小单位=a.zxdw,进价=a.pfj,零售价=a.ylsj,核算比=a.hsb,拼音码=a.pym,剂型=b.jx '
    +' from xyzb a , ypjx b where a.jxbm=b.jxbm and pym like :pym and ylsj>0');
    parambyname('pym').AsString := '%'+EdCode.Text+'%';
    if RBut_xy.Checked then sql.add(' and lb=1')
    else
    if RBut_cy.Checked then sql.add(' and lb=3')
    else
    if RBut_zcy.Checked then sql.add(' and lb=2');
    open;
    if recordcount<0 then
      application.MessageBox('无此药品!','错误提示',0+mb_iconstop);
  end;
end;

procedure TFm_ypcx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFm_ypcx.DBGrid1DblClick(Sender: TObject);
begin
  try
    EdCode.text:=dm.Q_comm.Fields[0].AsString;
  except
    exit;
  end;
  case length(trim(edcode.text)) of
  2:with dm.Q_comm do
    begin
      close;
      sql.Clear;
      sql.add('select 药二级号=yejh,药二级名=yejm from xyej where yejh like :yejh');
      parambyname('yejh').asstring:=trim(edcode.text)+'%';
      open;
    end;
  3:with dm.Q_comm do
    begin
      close;
      sql.Clear;
      sql.add('select 药品编号=a.ypbh,药品名称=a.ym,规格=a.gg,计量单位=a.jldw, '
      +' 最小单位=a.zxdw,进价=a.pfj,零售价=a.ylsj,核算比=a.hsb,拼音码=a.pym,剂型=b.jx '
      +' from xyzb a , ypjx b where a.jxbm=b.jxbm and a.ylsj>0 and ypbh like :ypbh');
      parambyname('ypbh').asstring:=trim(edcode.text)+'%';
      open;
    end;
  end;
end;

procedure TFm_ypcx.DBGrid_XYZBDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var i:integer;
begin
   for i:=0 to DBGrid_XYZB.Columns.Count -1 do
   begin
     DBGrid_XYZB.Columns[i].Title.Alignment :=tacenter;
   end;

end;

procedure TFm_ypcx.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var i:integer;
begin
   for i:=0 to DBGrid1.Columns.Count -1 do
   begin
     DBGrid1.Columns[i].Title.Alignment :=tacenter;
   end;

end;

procedure TFm_ypcx.BBtn_quitClick(Sender: TObject);
begin
 close;
end;

end.
