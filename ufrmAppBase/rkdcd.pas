unit rkdcd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  Tfm_rkdcd = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EdCode: TEdit;
    Ed_year: TEdit;
    ed_month: TEdit;
    RadioGroup1: TRadioGroup;
    btn_cx: TBitBtn;
    Btn_quit: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure EdCodeEnter(Sender: TObject);
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_quitClick(Sender: TObject);
    procedure btn_cxClick(Sender: TObject);
    procedure ed_monthKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  fm_rkdcd: Tfm_rkdcd;

implementation

uses data, reportform;

{$R *.DFM}

procedure Tfm_rkdcd.FormShow(Sender: TObject);
var ayear,amonth,aday:word;
begin
if self.Tag=1 then
begin
  DecodeDate(now, aYear, aMonth, aDay);
  ed_year.text:=inttostr(ayear);
  ed_month.text:=inttostr(amonth);
  EdCode.Clear;
end;
dm.q_comm.close;
dm.q_public.close;
edcode.setfocus;
end;

procedure Tfm_rkdcd.EdCodeEnter(Sender: TObject);
begin
//edcode.clear;
end;

procedure Tfm_rkdcd.EdCodeKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  ed_month.SetFocus;
end;

procedure Tfm_rkdcd.Btn_quitClick(Sender: TObject);
begin
  close;
end;

procedure Tfm_rkdcd.btn_cxClick(Sender: TObject);
var alsh,ayear,amonth:integer;
begin
  alsh:=strtoint(trim(edcode.text));
  ayear:=strtoint(trim(ed_year.text));
  amonth:=strtoint(trim(ed_month.text));
  if RadioGroup1.ItemIndex=0 then
    dm.PrintInBankInfo(alsh,ayear,amonth)
  else
    dm.PrintCancelInBankInfo(alsh,ayear,amonth);
end;

procedure Tfm_rkdcd.ed_monthKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then btn_cx.SetFocus;
end;

procedure Tfm_rkdcd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.q_comm.close;
  dm.q_public.close;
end;

end.
