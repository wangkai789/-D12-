unit tempedit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Buttons;

type
  Tfrm_tempedit = class(TForm)
    DBG_Show: TDBGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    procedure DBG_ShowDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBG_ShowKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tempedit: Tfrm_tempedit;

implementation

uses data;

{$R *.DFM}

procedure Tfrm_tempedit.DBG_ShowDblClick(Sender: TObject);
begin
  if dm.Q_public.recordcount=0 then exit;
  with dm.Q_comm  do
    begin
      close;
      sql.Clear;
      sql.Add(' delete xykr_temp where rkxh=:rkxh');
      parambyname('rkxh').asinteger  :=dm.Q_public.fieldbyname('rkxh').asinteger;
      execsql;
    end;
  with dm.Q_public do
    begin
      close;
      sql.Clear;
      sql.Add(' select a.rkxh,药品名称=b.ym,入库数量=a.rksl,进货价格=a.jhj');
      sql.Add(' from xykr_temp a,xyzb b');
      sql.Add(' where a.ypbh=b.ypbh');
      open;
    end;  
end;

procedure Tfrm_tempedit.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then SpeedButton1Click(Sender);
end;

procedure Tfrm_tempedit.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var intReturn:integer;
begin
  if dm.Q_public.RecordCount >0 then
    begin
      intReturn:=application.MessageBox('现在进行保存吗?','信史',MB_YESNO);
      if intReturn=IDYES then  self.tag:=1 else  self.tag:=0;//确定是否需要重新进行输入
    end
  else  self.tag:=0;
  CanClose:=true;
end;

procedure Tfrm_tempedit.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_tempedit.FormShow(Sender: TObject);
begin
  DBG_Show.SetFocus; 
end;

procedure Tfrm_tempedit.DBG_ShowKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_delete then DBG_ShowDblClick(Sender);
end;

end.
