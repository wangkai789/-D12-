unit systempower;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  Tfm_systempower = class(TForm)
    DBGrid1: TDBGrid;
    BBtn_quit: TBitBtn;
    BBtn_ok: TBitBtn;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure BBtn_quitClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BBtn_okClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_systempower: Tfm_systempower;
  bh:integer;

implementation

uses data, czydl;

{$R *.DFM}

procedure Tfm_systempower.FormShow(Sender: TObject);
begin
  if self.tag=0 then
  begin
     radiobutton1.checked:=false;
     radiobutton2.checked:=false;
     radiobutton3.checked:=false;
     radiobutton1.Enabled:=true;
     radiobutton2.Enabled:=false;
     radiobutton3.Enabled:=false;
  end;
  if self.tag=1 then
  begin
     radiobutton1.checked:=false;
     radiobutton2.checked:=false;
     radiobutton3.checked:=false;
     radiobutton1.Enabled:=false;
     radiobutton2.Enabled:=true;
     radiobutton3.Enabled:=true;
  end;
  with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('select b.bh,a.xm from zgzb a,mmb b where a.bh=b.bh  and ksbm=:ksbm AND A.BH<>:BH' );
    parambyname('ksbm').assmallint:=500;
    parambyname('BH').assmallint:=STRTOINT(FM_CZYDL.ED_BH.TEXT);
    try
     open;
     dbgrid1.DataSource :=dm.ds_comm;
    except
     showmessage('执行非法操作！');
     exit;
    end;
  end;
end;

procedure Tfm_systempower.BBtn_quitClick(Sender: TObject);
begin
  close;
end;

procedure Tfm_systempower.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY=#13 THEN DBGrid1DblClick(Sender);
end;

procedure Tfm_systempower.DBGrid1DblClick(Sender: TObject);
begin
  bh:=DM.Q_COMM.FIELDBYNAME('BH').ASINTEGER;
end;

procedure Tfm_systempower.BBtn_okClick(Sender: TObject);
begin
   if Application.MessageBox('您确定要保存吗？','提示信息',MB_OKCANCEL + MB_DEFBUTTON1)<>IDOK then exit;
  with dm.q_tyygs do
  begin
    close;
    sql.clear;
    sql.add('update mmb set powerlevel=:powerlevel where bh=:bh');
    if radiobutton1.checked then
    parambyname('powerlevel').asstring:='2';
    if radiobutton2.checked then
    parambyname('powerlevel').asstring:='3';
    if radiobutton3.checked then
    parambyname('powerlevel').asstring:='4';
    parambyname('bh').asinteger:=bh;
    try
      execsql;
    except
      showmessage('保存错误，请重试！');
      exit;
    end;
 end;
end;

procedure Tfm_systempower.DBGrid1CellClick(Column: TColumn);
begin
  bh:=DM.Q_COMM.FIELDBYNAME('BH').ASINTEGER;
end;

end.
