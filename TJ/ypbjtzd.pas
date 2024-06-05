unit ypbjtzd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ComCtrls,Factory;

type
  Tfm_ypbjtzd = class(TForm)
    Panel1: TPanel;
    rg_type: TRadioGroup;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    datefrom: TDateTimePicker;
    dateto: TDateTimePicker;
    btn_dy: TBitBtn;
    btn_exit: TBitBtn;
    Label21: TLabel;
    cmbx_storetype: TComboBox;
    procedure btn_exitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_dyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_ypbjtzd: Tfm_ypbjtzd;

implementation

uses data,  yptz_print, reportform;

{$R *.DFM}

procedure Tfm_ypbjtzd.btn_exitClick(Sender: TObject);
begin
close;
end;

procedure Tfm_ypbjtzd.FormShow(Sender: TObject);
begin
datefrom.date:=date(); dateto.date:=date();
end;

procedure Tfm_ypbjtzd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.q_comm.close;
end;

procedure Tfm_ypbjtzd.btn_dyClick(Sender: TObject);
begin
with dm.q_comm do
begin
  close;
  sql.clear;
  sql.add('select  药名=b.ym, 规格=b.gg,剂型=c.jx,计量单位=b.jldw, '
          + '原零售价=a.ylsj,现零售价=a.xlsj ');
  sql.add(',药库库存=a.yk_store, '
          +'    差额=round(isnull(a.yk_store,0)*(a.xlsj-a.ylsj),2),');
  sql.add(' 住院库存=round(isnull(a.zy_store/b.hsb,0),0), '
         +' 住院差额=round(isnull(a.zy_store/b.hsb,0)*(a.xlsj-a.ylsj),2), '
         +' 门诊库存=round(isnull(mz_store/b.hsb,0),0), '
         +' 门诊差额=round(isnull(a.mz_store/b.hsb,0)*(a.xlsj-a.ylsj),2),');
  sql.add(' 急诊库存=round(isnull(jz_store/b.hsb,0),0), '
         +' 急诊差额=round(isnull(a.jz_store/b.hsb,0)*(a.xlsj-a.ylsj),2), '
         +' 部门库存=round(isnull(bm_store/b.hsb,0),0), '
         +' 部门差额=round(isnull(a.bm_store/b.hsb,0)*(a.xlsj-a.ylsj),2)');

  sql.add(' from xytjxb a,xyzb b,ypjx c where a.tjrq>=:datefrom '
         +' and a.tjrq<=:dateto AND a.ypbh=b.ypbh AND b.jxbm=c.jxbm');
  sql.add(' and b.lb=:lb');
 // sql.add('and  b.storetype=:storetype');

  parambyname('datefrom').asdatetime:=datefrom.date;
  parambyname('dateto').asdatetime:=dateto.date+1;
  parambyname('lb').assmallint:=rg_type.ItemIndex+1;//查询类别
  //parambyname('storetype').asstring:=trim(cmbx_storetype.text);
  open;
end;
    Fm_report.Fdatefrom:=datetostr(datefrom.date);
    Fm_report.Fdateto:=datetostr(dateto.date);
    Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\药品变价调整单.frf');
    Fm_report.frReport1.ShowReport;
end;

end.
