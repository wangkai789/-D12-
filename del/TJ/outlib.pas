unit outlib;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ComCtrls, ExtCtrls;

type
  Tfm_outlib = class(TForm)
    dbgrid1: TDBGrid;
    Panel1: TPanel;
    edtmoney: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    edtpages: TEdit;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    Label3: TLabel;
    datefrom: TDateTimePicker;
    dateto: TDateTimePicker;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_outlib: Tfm_outlib;

implementation

uses Data, czydl;

{$R *.DFM}





procedure Tfm_outlib.SpeedButton1Click(Sender: TObject);
var money:currency;
begin

money:=0;
With DM.Q_Public1 do
  begin
    Close;
    SQL.Clear;
    {SQL.Add('select 请领单号=a.qldh,总计金额=sum(a.sfl*c.lsj) '
    //      +' from qldb a,qlyf b,xyzb c');
          +' from qldb a,qlyf b,xykchu c');
    //SQL.Add('where a.qldh=b.qldh and a.ypbh=c.ypbh and b.yfbm=:ksbm '
    SQL.Add('where a.qldh=b.qldh and b.qldh=c.qldh and b.yfbm=:ksbm '
          +' and b.fyrq>:fyrqfrom and b.fyrq<:fyrqto');
    SQL.Add(' and  b.fyrq is not null group by a.qldh order by a.qldh');
    }
    SQL.Add('  select 请领单号=a.qldh,总计金额=sum(a.sfl*c.lsj) '
          +' from qldb a,qlyf b,xykchu c,xykr d '
          +' where a.qldh=b.qldh and b.qldh=c.qldh and '
          +' b.yfbm=:ksbm and d.rkxh=c.rkxh and d.ypbh=a.ypbh '
          +' and b.fyrq>:fyrqfrom and b.fyrq<:fyrqto  '
          +' and  b.fyrq is not null group by a.qldh order by a.qldh ');

    case  radiogroup1.ItemIndex of
    0:ParamByName('ksbm').asstring:= '502';
    1:ParamByName('ksbm').asstring:= '501';
    2:ParamByName('ksbm').asstring:= '503';
    end;
    ParamByName('fyrqFrom').AsDatetime := DateFrom.Datetime;
    ParamByName('fyrqTo').AsDatetime := DateTo.Datetime;
    Open;
    first;
    while not DM.Q_Public1.EOF do
      begin
        money:=money+DM.Q_Public1['总计金额'];
        DM.Q_Public1.Next;
       end;
    edtmoney.text:=currtostr(money);
    dbgrid1.Visible:=true;
  end;
end;

procedure Tfm_outlib.FormShow(Sender: TObject);
begin
   dbgrid1.Visible:=false;
   datefrom.Date:=now;
   dateto.Date:=now;
end;


procedure Tfm_outlib.SpeedButton2Click(Sender: TObject);
begin
  With DM.Q_Public1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select 请领单号=qldh,出库日期=fyrq,是否入库=yfqr from qlyf');
    SQL.Add('where yfbm=:ksbm and fyrq>:fyrqfrom and fyrq<:fyrqto ');
    SQL.Add('and fyrq is not null');
    case  radiogroup1.ItemIndex of
    0:ParamByName('ksbm').asstring:= '502';
    1:ParamByName('ksbm').asstring:= '501';
    2:ParamByName('ksbm').asstring:= '503';
    end;;
    ParamByName('fyrqFrom').AsDatetime := DateFrom.Datetime;
    ParamByName('fyrqTo').AsDatetime:= DateTo.Datetime;
    Prepare;
    Open;
    dbgrid1.Visible:=true;
  end;
end;



procedure Tfm_outlib.SpeedButton3Click(Sender: TObject);
begin
With DM.Q_Public1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select 单数=count(*) from qlyf ');
    SQL.Add('where yfbm=:ksbm and fyrq>:fyrqfrom and fyrq<:fyrqto');
    SQL.Add(' and  fyrq is not null');
    case  radiogroup1.ItemIndex of
    0:ParamByName('ksbm').asstring:= '502';
    1:ParamByName('ksbm').asstring:= '501';
    2:ParamByName('ksbm').asstring:= '503';
    end;;
    ParamByName('fyrqFrom').AsDatetime := DateFrom.Datetime;
    ParamByName('fyrqTo').AsDatetime := DateTo.Datetime;
    Prepare;
    Open;
  end;
    edtpages.text:=DM.Q_Public1['单数'];
  dbgrid1.visible:=true;

end;

procedure Tfm_outlib.SpeedButton4Click(Sender: TObject);
var money:currency;
begin
    money:=0;
    With DM.Q_Public1 do
  begin
    Close;
    SQL.Clear;
    {//SQL.Add('select 请领单号=a.qldh,药编号=a.ypbh,药名=c.ym,规格=c.gg, '
    SQL.Add('select 请领单号=a.qldh,药编号=a.ypbh,药名=d.ym,规格=d.gg, '
    //      +' 数量=a.sfl,金额=(a.sfl*a.price) from qldb a,qlyf b,xyzb c');
           +' 数量=a.sfl,金额=(a.sfl*c.lsj) from qldb a,qlyf b,xykchu c,xyzb d');
    //SQL.Add('where a.qldh=b.qldh and a.ypbh=c.ypbh and b.yfbm=:ksbm and '
    SQL.Add('where a.qldh=b.qldh and a.qldh=c.qldh and b.yfbm=:ksbm and a.ypbh=d.ypbh and '
          +' b.fyrq>:fyrqfrom and b.fyrq<:fyrqto');
    SQL.Add(' and  b.fyrq is not null  order by a.qldh');}
    SQL.Add('select 请领单号=a.qldh,药编号=a.ypbh,药名=e.ym,规格=e.gg,  '
        +' 数量=a.sfl,金额=(a.sfl*c.lsj) from qldb a,qlyf b,xykchu c,xykr d ,xyzb e '
        +' where a.qldh=b.qldh and a.qldh=c.qldh and b.yfbm=:ksbm and d.rkxh=c.rkxh   '
        +' and d.ypbh=a.ypbh and a.ypbh=e.ypbh and b.fyrq>:fyrqfrom and '
        +' b.fyrq<:fyrqto and  b.fyrq is not null  order by a.qldh ');
    case  radiogroup1.ItemIndex of
    0:ParamByName('ksbm').asstring:= '502';
    1:ParamByName('ksbm').asstring:= '501';
    2:ParamByName('ksbm').asstring:= '503';
    end;;
    ParamByName('fyrqFrom').AsDatetime := DateFrom.Datetime;
    ParamByName('fyrqTo').AsDatetime := DateTo.Datetime;
    Prepare;
    Open;
   while not DM.Q_Public1.EOF do
   begin
   money:=money+DM.Q_Public1['金额'];
   DM.Q_Public1.Next;
   end;
   edtmoney.text:=currtostr(money);
   dbgrid1.Visible:=true;

  end;
end;
procedure Tfm_outlib.BitBtn1Click(Sender: TObject);
begin
   dm.q_public.close;
end;

end.
