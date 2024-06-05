unit tjtj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Data.DB;

type
  TFm_tjtj = class(TForm)
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label21: TLabel;
    Datefrom: TDateTimePicker;
    dateto: TDateTimePicker;
    cmbx_storetype: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_tjtj: TFm_tjtj;

implementation

uses data;

{$R *.DFM}

procedure TFm_tjtj.FormShow(Sender: TObject);
begin
  Datefrom.date:=now; Dateto.date:=now; Datefrom.setfocus;  dm.q_comm.close;
end;

procedure TFm_tjtj.BitBtn3Click(Sender: TObject);
begin
  with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('Select  药品编号=a.ypbh,药名=b.ym, 规格=b.gg,剂型=b.jx,药库单位=b.jldw,');
    sql.add('原零售价=a.ylsj,现零售价=a.xlsj,门诊原零售价=a.oldmzylsj,门诊现零售价=a.mzylsj,调价依据=a.tjyj,调价日期=a.tjrq,调价人=d.xm,药房售价=(a.xlsj/a.hsb),药房单位=zxdw');
    sql.add('from xytjxb a,xyzb b,zgzb d '); //  急诊库存=isnull(a.jz_store,0),门诊库存=isnull(a.mz_store,0),住院库存=isnull(a.zy_store,0),白马库存=isnull(a.bm_store,0),  //执行日期=a.zxrq,
    sql.add('where d.bh=a.opid and a.tjrq>=:datefrom and a.tjrq<=:dateto AND a.ypbh=b.ypbh ');
    sql.add('and  b.storetype=:storetype');

    parambyname('datefrom').asdatetime:=datefrom.date;
    parambyname('dateto').asdatetime:=dateto.date+1;
    parambyname('storetype').asstring:=trim(cmbx_storetype.text);

    open;
    if RecordCount=0 then
    begin
      application.MessageBox('该时间无调价信息！','提示',64);
      datefrom.SetFocus;
    end;
    StatusBar1.Panels[2].text:=inttostr(RecordCount);
  end;
end;

procedure TFm_tjtj.BitBtn1Click(Sender: TObject);
begin
  f_tjtj_print.QuickRep1.Preview;
end;

procedure TFm_tjtj.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFm_tjtj.DBGrid1DrawColumnCell(Sender: TObject;
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
