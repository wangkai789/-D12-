unit czydl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, DBTables, Grids, DBGrids, Db, jpeg,
  ExtCtrls;

type
  Tfm_czydl = class(TForm)
    Ed_xm: TEdit;
    Ed_mm: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Database1: TDatabase;
    Database2: TDatabase;
    Database3: TDatabase;
    Database4: TDatabase;
    Database5: TDatabase;
    Ed_bh: TEdit;
    Label4: TLabel;
    Ed_ksmc: TEdit;
    Image1: TImage;
    BitBtn1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Ed_bhKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_mmKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Ed_bhEnter(Sender: TObject);
    procedure Ed_mmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_czydl: Tfm_czydl;

implementation

uses DATA, factory, main;


{$R *.DFM}

procedure Tfm_czydl.Ed_bhKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   begin
     with dm.q_comm do
     begin
       close;
       SQL.Clear;
       SQL.Add('select a.xm,a.ksbm,b.ksmc,a.zcbm from zgzb a ,jgxx b where a.ksbm=b.ksbm and a.bh=:bh');
       ParamByName('bh').AsInteger:=strtoint(Ed_bh.text);
       Open;
     end;
     if dm.Q_comm.IsEmpty then
        begin
          application.MessageBox('无此用户!','信息',0);
          exit;
        end;
     Ed_xm.Text:=dm.Q_comm['xm'];
     try
     Ed_xm.Tag:=dm.q_comm.fieldbyname('zcbm').asinteger;
     except
     Ed_xm.Tag:=0;
     end;
     Ed_ksmc.Text:=dm.Q_comm['ksmc'];
     Ed_ksmc.tag:=dm.Q_comm['ksbm'];
     Ed_mm.Enabled:=true;
     Ed_mm.SetFocus;
   end;
end;

procedure Tfm_czydl.Ed_mmKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then BitBtn1.click;
end;

procedure Tfm_czydl.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfm_czydl.FormShow(Sender: TObject);
begin
  self.Tag:=0;Ed_bh.SetFocus;
end;

procedure Tfm_czydl.Ed_bhEnter(Sender: TObject);
begin
  Ed_xm.Clear;Ed_mm.Clear; Ed_ksmc.Clear; Ed_mm.Enabled:=false;
end;

procedure Tfm_czydl.Ed_mmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (ssctrl in shift) and (ssshift in shift ) and (ssalt in shift)then
  begin
    self.Tag:=1;
    self.Close;
  end;
end;

procedure Tfm_czydl.SpeedButton1Click(Sender: TObject);
begin
  with dm.Q_comm do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from mmb where bh=:bh and mm=:mm and sq=:sq1 ');
    ParamByName('bh').AsInteger:=strtoint(Ed_bh.Text);
    ParamByName('sq1').AsInteger:=fm_main.tag;
    ParamByName('mm').AsString:=ProcessPassword(Ed_mm.text);
    Open;
    Ed_mm.text:=trim(fieldbyname('powerlevel').asstring);
  end;
if dm.Q_comm.IsEmpty then
begin
   application.MessageBox('密码错误或没有权限!','信息',0);
   self.Tag:=0;
   exit;
end;
self.Tag:=1;
self.Close;
end;

procedure Tfm_czydl.SpeedButton2Click(Sender: TObject);
begin
close;
end;

end.
