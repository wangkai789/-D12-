unit jyfcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ComCtrls, Buttons;

type
  TFm_jyfcx = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_jyfcx: TFm_jyfcx;

implementation
  uses data;
{$R *.DFM}

procedure TFm_jyfcx.BitBtn1Click(Sender: TObject);
begin
   with dm.Q_public do
   begin
    close;
    sql.clear;
    sql.add('select 项目名称=b.xmmc,金额=isnull(sum(a.qe),0)');
    sql.add('from zyjz a,jyxm b ,zy_jz_day_new c');
    sql.add('where a.xmbm=b.xmbm and a.zyh=c.zyh and a.[no]=c.jz_day');
    sql.add('and datediff(day,rjdate,:datefrom)<=0 and datediff(day,rjdate,:dateto)>=0');
    sql.add('and b.xmbm  in(''480000004'',''480000005'',''911201002'') group by b.xmmc');
    parambyname('datefrom').asdatetime:=DateTimePicker1.Date;
    parambyname('dateto').asdatetime:=DateTimePicker2.Date;
    open;
    if isempty then exit
    else DBGrid1.DataSource:=dm.DS_public;
    end;
end;

procedure TFm_jyfcx.FormShow(Sender: TObject);
begin
 DateTimePicker1.Date:=now;
 DateTimePicker2.Date:=now;
end;

procedure TFm_jyfcx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.Q_public.close;
DBGrid1.DataSource:=nil;
end;

procedure TFm_jyfcx.DBGrid1DrawColumnCell(Sender: TObject;
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
