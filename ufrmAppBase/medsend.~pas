unit medsend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TFm_medsend = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    datefrom: TDateTimePicker;
    dateto: TDateTimePicker;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_medsend: TFm_medsend;

implementation

uses data,reportform;

{$R *.dfm}

procedure TFm_medsend.Button2Click(Sender: TObject);
begin
self.Close;
end;

procedure TFm_medsend.Button1Click(Sender: TObject);
begin
 with dm.Q_MedStore do
 begin
   close;
   sql.clear;
   sql.Add('exec proc_yk_send :yplb,:datefrom,:dateto');
   if RadioGroup1.ItemIndex=0 then  parambyname('yplb').AsString:='1'
   else parambyname('yplb').AsString:='2';
   parambyname('datefrom').AsDateTime:=datefrom.DateTime;
   parambyname('dateto').AsDateTime:=dateto.DateTime;
   open;
 end;
   if RadioGroup1.ItemIndex=0 then
   Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\Î÷Ò©³ÉÒ©.frf')
   else   Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\²ÝÒ©.frf');
   Fm_report.frReport1.ShowReport;
end;

procedure TFm_medsend.FormShow(Sender: TObject);
begin
     datefrom.DateTime:=date();
     dateto.DateTime:=date();
end;

end.
