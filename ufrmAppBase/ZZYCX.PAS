unit zzycx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ComCtrls;

type
  Tfm_zzycx = class(TForm)
    dtp_qs: TDateTimePicker;
    Label1: TLabel;
    dtp_zz: TDateTimePicker;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_zzycx: Tfm_zzycx;

implementation

uses data, zzy;

{$R *.DFM}

procedure Tfm_zzycx.SpeedButton1Click(Sender: TObject);
begin
  with dm.Q_public do
    begin
      close;
      sql.Clear;
      sql.add('select ksmc ,ksbh,xm,ym,sl=sum(mryl) '
             +' ,je=sum(je) from vs_zzycx '
             +'where cfrq>:datefm  and cfrq<:dateto'
             +' group by ksbh,ksmc,xm,ym  '
             +' order by ksbh,ksmc,xm,ym  ');
      parambyname('datefm').asdatetime:=dtp_qs.DateTime;
      parambyname('dateto').asdatetime:=dtp_zz.DateTime;
      try
        prepare;
        open;
        if recordcount < 1 then exit;
        rpt_zzy.qlb_date.Caption :='统计日期:'+datetimetostr(dtp_qs.DateTime)+'---'+datetimetostr(dtp_zz.DateTime-1);
        rpt_zzy.Preview;
      finally
        close;
        unprepare;
      end;
    end;
end;

procedure Tfm_zzycx.SpeedButton2Click(Sender: TObject);
begin
   close;
end;

procedure Tfm_zzycx.FormShow(Sender: TObject);
begin
  dtp_qs.date:=Date();
  dtp_zz.date:=Date(); 
end;

end.
