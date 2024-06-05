unit yfsell;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Grids, DBGrids, Buttons,factory;

type
  Tfm_yfsell = class(TForm)
    dbgrid1: TDBGrid;
    Label4: TLabel;
    Label3: TLabel;
    datefrom: TDateTimePicker;
    dateto: TDateTimePicker;
    Rad_kskind: TRadioGroup;
    Panel2: TPanel;
    btn_cx: TBitBtn;
    btn_print: TBitBtn;
    procedure btn_cxClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_yfsell: Tfm_yfsell;

implementation

uses data, Rpt_yfssbb;

{$R *.DFM}

procedure Tfm_yfsell.btn_cxClick(Sender: TObject);
begin
  with dm.Q_comm do
    begin
      close;
      sql.clear;
      case  rad_kskind.ItemIndex of
      0:
      sql.add('exec zy_yf_srbb :datefrom,:dateto');
      1:begin
         sql.add('select qe=round(sum(c.qe),2),cfs=count(distinct(b.cfdh)),zl=case '
         +' when d.lb=1 then ''西药''      '
         +' when d.lb=3 then ''成药''     '
         +' when d.lb=2 then ''草药''end'
         +' from vdepcheckfee a,mzcfdb b,mzcfyb c,xyzb d '
         +' where a.mzh=b.mzh and b.cfdh=c.cfdh and c.ypbh=d.ypbh'
         +' and a.ifjz=0 and b.fyr is not null and a.[no]=b.[no] and a.ifzf=0 '
         +' and datediff(day,b.fyrq,:datefrom)<=0 and datediff(day,b.fyrq,:dateto)>=0'
         +' group by d.lb');
         end;
      2:begin
           sql.add('select qe=round(sum(c.qe),2),cfs=count(distinct(b.cfdh)),zl=case '
           +' when d.lb=1 then ''西药''      '
           +' when d.lb=3 then ''成药''     '
           +' when d.lb=2 then ''草药''end'
           +' from vdepcheckfee a,mzcfdb b,mzcfyb c,xyzb d '
           +' where a.mzh=b.mzh and b.cfdh=c.cfdh and c.ypbh=d.ypbh'
           +' and a.ifjz=1 and b.fyr is not null and a.[no]=b.[no] and a.ifzf=0 '
           +' and datediff(day,b.fyrq,:datefrom)<=0 and datediff(day,b.fyrq,:dateto)>=0'
           +' group by d.lb');
       end;
      end;;
      parambyname('datefrom').asdate:=datefrom.Date;
      parambyname('dateto').asdate:=dateto.Date;
      open;
      dbgrid1.Columns[0].Width:=120;
      dbgrid1.Columns[1].Width:=120;
      dbgrid1.Columns[2].Width:=120;
    end;
end;

procedure Tfm_yfsell.btn_printClick(Sender: TObject);
begin
  btn_cxClick(sender);
  QR_yfssbb.QRLabel3.caption:=datetostr(datefrom.Date)+'至'+datetostr(Dateto.Date);
  QR_yfssbb.QRLabel2.caption:='销售单位:'+Rad_kskind.Items[Rad_kskind.itemindex] ;
  QR_yfssbb.preview;
end;

procedure Tfm_yfsell.FormShow(Sender: TObject);
begin
  datefrom.date:=date();
  dateto.date:=date();                            
end;

end.
