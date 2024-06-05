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
    sql.add('Select  ҩƷ���=a.ypbh,ҩ��=b.ym, ���=b.gg,����=b.jx,ҩ�ⵥλ=b.jldw,');
    sql.add('ԭ���ۼ�=a.ylsj,�����ۼ�=a.xlsj,����ԭ���ۼ�=a.oldmzylsj,���������ۼ�=a.mzylsj,��������=a.tjyj,��������=a.tjrq,������=d.xm,ҩ���ۼ�=(a.xlsj/a.hsb),ҩ����λ=zxdw');
    sql.add('from xytjxb a,xyzb b,zgzb d '); //  ������=isnull(a.jz_store,0),������=isnull(a.mz_store,0),סԺ���=isnull(a.zy_store,0),������=isnull(a.bm_store,0),  //ִ������=a.zxrq,
    sql.add('where d.bh=a.opid and a.tjrq>=:datefrom and a.tjrq<=:dateto AND a.ypbh=b.ypbh ');
    sql.add('and  b.storetype=:storetype');

    parambyname('datefrom').asdatetime:=datefrom.date;
    parambyname('dateto').asdatetime:=dateto.date+1;
    parambyname('storetype').asstring:=trim(cmbx_storetype.text);

    open;
    if RecordCount=0 then
    begin
      application.MessageBox('��ʱ���޵�����Ϣ��','��ʾ',64);
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
