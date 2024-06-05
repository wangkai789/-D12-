unit arkdcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, Data.DB;

type
  TFm_arkdcx = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    datefrom: TDateTimePicker;
    dateto: TDateTimePicker;
    btn_cx: TBitBtn;
    btn_print: TBitBtn;
    RadioGroup1: TRadioGroup;
    procedure BBtn_quitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_cxClick(Sender: TObject);
    procedure ed_monthKeyPress(Sender: TObject; var Key: Char);
    procedure datefromKeyPress(Sender: TObject; var Key: Char);
    procedure datetoKeyPress(Sender: TObject; var Key: Char);
    procedure btn_printClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure  SeekMaster;
    procedure  SeekDetail(lb:smallint);


  public
    { Public declarations }
  end;

var
  Fm_arkdcx: TFm_arkdcx;

implementation

uses data,main,  reportform;

{$R *.DFM}

procedure TFm_arkdcx.BBtn_quitClick(Sender: TObject);
begin
close;
end;

procedure TFm_arkdcx.FormShow(Sender: TObject);
begin
dm.Q_comm.close;
datefrom.date:=date();
dateto.date:=date();
datefrom.SetFocus;
end;

procedure TFm_arkdcx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.Q_comm.close;
end;

procedure TFm_arkdcx.btn_cxClick(Sender: TObject);
begin
  case  RadioGroup1.ItemIndex of
  0..3:SeekDetail(RadioGroup1.ItemIndex);
  4:SeekMaster;
  end;
end;

procedure TFm_arkdcx.ed_monthKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then btn_cx.setfocus;
end;

procedure TFm_arkdcx.datefromKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then dateto.setfocus;
end;

procedure TFm_arkdcx.datetoKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
end;

procedure TFm_arkdcx.btn_printClick(Sender: TObject);
begin
  Fm_arkdcx.btn_cxClick(Sender);
  case RadioGroup1.ItemIndex of
   0:Fm_report.Flb:='��ҩ';
   1:Fm_report.Flb:='��ҩ';
   2:Fm_report.Flb:='��ҩ';
   3:Fm_report.Flb:='�ϼ�';
   4:Fm_report.Flb:='�ϼ�';
  end;
  Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\��ⵥͳ��.frf');
  Fm_report.Fdatefrom:=datetostr(datefrom.date);
  Fm_report.Fdateto:=datetostr(dateto.date);
  Fm_report.frReport1.ShowReport;

  {qr_rkdtj.QRLabel2.caption:=datetostr(datefrom.date);
  qr_rkdtj.QRLabel3.caption:=datetostr(dateto.date);
  qr_rkdtj.preview;}
end;

procedure TFm_arkdcx.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var i:integer;
begin
   for i:=0 to DBGrid1.Columns.Count -1 do
   begin
     DBGrid1.Columns[i].Title.Alignment :=tacenter;
   end;
end;

procedure TFm_arkdcx.SeekDetail(lb:smallint);
begin
   with dm.q_comm do
   begin
    close;
    sql.clear;
    case lb of
    0:sql.add('select ��ⵥ��=lsh,������λ=inc_name,�����=xy_j_je,Ӧ�����=ze,���=plce');
    1:sql.add('select ��ⵥ��=lsh,������λ=inc_name,�����=zcy_j_je,Ӧ�����=ze,���=plce');
    2:sql.add('select ��ⵥ��=lsh,������λ=inc_name,�����=cy_je,Ӧ�����=ze,���=plce');
    3:sql.add('select ��ⵥ��=lsh,������λ=inc_name,�����=xy_j_je+cy_je+zcy_j_je,Ӧ�����=ze,���=plce');
    end;
    sql.add('from xykr_tzd a,ghdw b');
    sql.add('where a.ghdw=b.inc_code ');
    case lb of
    0:sql.add('and xy_j_je<>0 ');
    1:sql.add('and zcy_j_je<>0 ');
    2:sql.add('and cy_je<>0 ');
    end;
    sql.add('and datediff(day,rkdate,:datefrom)<=0 and datediff(day,rkdate,:dateto)>=0 order by lsh');
    parambyname('datefrom').asdate:=datefrom.date;
    parambyname('dateto').asdate:=dateto.date;
    open;
    if RecordCount=0 then
    begin
      application.messagebox('��Χ��������¼�������ԣ�','��ʾ',48);
      datefrom.SetFocus;
    end;
  end;
end;

procedure TFm_arkdcx.SeekMaster;
begin
  with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('select  ҩƷ����=case b.lb when 1 then ''��ҩ''  when 2 then ''�в�ҩ'' when 3 then ''�г�ҩ'' end,���ۼ�=sum(rksl*lsj),������=sum(rksl*jhj),���=sum(rksl*(lsj-jhj)) from xykr a,xyzb b where');
    sql.add('a.ypbh=b.ypbh   and datediff(day,rkrq,:datefrom)<=0 and datediff(day,rkrq,:dateto)>=0 group by b.lb');
    parambyname('datefrom').asdate:=datefrom.date;
    parambyname('dateto').asdate:=dateto.date;
    open;
    dbgrid1.Columns[0].width:=120;
    dbgrid1.Columns[1].width:=120;
    dbgrid1.Columns[2].width:=120;
    dbgrid1.Columns[3].width:=120;
    if RecordCount=0 then
    begin
      application.messagebox('���Ǳ�����ⵥ�Ż�˷�Χ��������¼�������ԣ�','��ʾ',48);
      datefrom.SetFocus;
    end;
  end;
end;

end.