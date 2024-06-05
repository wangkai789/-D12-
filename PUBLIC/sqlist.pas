unit sqlist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  Grids, DBGrids, StdCtrls, ComCtrls;

type
  TFm_Sqlist = class(TForm)
    GroupBox1: TGroupBox;
    Edt_Sq: TEdit;
    Edt_ksbm: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBGrd_sq: TDBGrid;
    DBGrd_ks: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Edt_sys: TEdit;
    Edt_ksmc: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FBtn_closeClick(Sender: TObject);
    procedure DBGrd_sqDblClick(Sender: TObject);
    procedure DBGrd_ksDblClick(Sender: TObject);
    procedure Edt_SqKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_ksbmKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrd_ksExit(Sender: TObject);
    procedure DBGrd_sqExit(Sender: TObject);
    procedure DBGrd_ksKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrd_sqKeyPress(Sender: TObject; var Key: Char);
    procedure FBtn_saveClick(Sender: TObject);
  private
    { Private declarations }
    procedure listSq;
    procedure listJgxx;
  public
    { Public declarations }
    Fsq,Fksbm:integer;
  end;

var
  Fm_Sqlist: TFm_Sqlist;

implementation

uses data;

{$R *.dfm}

{ TFm_Sqlist }

procedure TFm_Sqlist.listSq;
begin
   with dm.Q_xyzb do
   begin
     close;
     sql.clear;
     sql.add('select * from jg_sq ');
     open;
     if not isempty then
     begin
       DBGrd_sq.DataSource:=dm.DS_xyzb;
       DBGrd_sq.Visible:=true;
       DBGrd_sq.Left:=132;
       DBGrd_sq.top:=2;
       DBGrd_sq.SetFocus;
     end;
   end;
end;

procedure TFm_Sqlist.FormShow(Sender: TObject);
begin
  edt_ksbm.clear;
  Edt_ksmc.clear;
  edt_sq.clear;
  Edt_sys.clear;
  edt_sq.SetFocus;
end;

procedure TFm_Sqlist.FBtn_closeClick(Sender: TObject);
begin
self.close;
end;

procedure TFm_Sqlist.listJgxx;
begin
   with dm.Q_ks do
   begin
     close;
     sql.clear;
     sql.add('select ksbm,ksmc from jgxx where pym like :pym');
     parambyname('pym').AsString:=trim(Edt_ksbm.text)+'%';
     open;
     if not isempty then
     begin
       DBGrd_ks.DataSource:=dm.DS_ks;
       DBGrd_ks.Visible:=true;
       DBGrd_ks.Left:=132;
       DBGrd_ks.top:=2;
       DBGrd_ks.SetFocus;
     end;
   end;

end;

procedure TFm_Sqlist.DBGrd_sqDblClick(Sender: TObject);
begin
if DBGrd_sq.DataSource=nil then exit;
   edt_sq.text:=DBGrd_sq.Fields[1].AsString;
   edt_sys.text:=DBGrd_sq.Fields[2].AsString;
   edt_ksbm.SetFocus;
end;

procedure TFm_Sqlist.DBGrd_ksDblClick(Sender: TObject);
begin
if DBGrd_ks.DataSource=nil then exit;
   edt_ksbm.text:=DBGrd_ks.Fields[0].AsString;
   Edt_ksmc.text:=DBGrd_ks.Fields[1].AsString;
 //  FBtn_save.SetFocus;
end;

procedure TFm_Sqlist.Edt_SqKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  listSq;
end;

procedure TFm_Sqlist.Edt_ksbmKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  listjgxx;
end;

procedure TFm_Sqlist.DBGrd_ksExit(Sender: TObject);
begin
(sender as  tdbgrid).Visible:=false;
end;

procedure TFm_Sqlist.DBGrd_sqExit(Sender: TObject);
begin
(sender as  tdbgrid).Visible:=false;
end;

procedure TFm_Sqlist.DBGrd_ksKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then    DBGrd_ksDblClick(sender)
end;

procedure TFm_Sqlist.DBGrd_sqKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then    DBGrd_sqDblClick(sender)
end;

procedure TFm_Sqlist.FBtn_saveClick(Sender: TObject);
begin
    if (trim(Edt_ksbm.text)='') or (trim(Edt_Sq.text)='') then
    begin
      application.MessageBox('信息不足','信息',32);
      exit;
    end;
    Fsq:=strtoint(Edt_Sq.text);
    Fksbm:=strtoint(Edt_ksbm.text);
    close;
    self.ModalResult:=mrok;
end;

end.
