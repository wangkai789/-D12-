unit ghdwwh;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons;

type
  Tfm_ghdwwh = class(TForm)
    GroupBox1: TGroupBox;
    ed_inc_name: TEdit;
    Label2: TLabel;
    btn_save: TBitBtn;
    btn_search: TBitBtn;
    btn_exit: TBitBtn;
    Label1: TLabel;
    ed_inc_call: TEdit;
    procedure FormShow(Sender: TObject);
    procedure ed_inc_nameKeyPress(Sender: TObject; var Key: Char);
    procedure btn_exitClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure ed_inc_callKeyPress(Sender: TObject; var Key: Char);
    procedure ed_inc_nameEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_ghdwwh: Tfm_ghdwwh;

implementation

uses data;

{$R *.DFM}

procedure Tfm_ghdwwh.FormShow(Sender: TObject);
begin
ed_inc_name.clear;
ed_inc_call.clear;
ed_inc_name.setfocus;
btn_save.Enabled:=false;
end;

procedure Tfm_ghdwwh.ed_inc_nameKeyPress(Sender: TObject; var Key: Char);
begin
  if key<>#13 then exit;
  if  trim(ed_inc_name.text)='' then begin application.MessageBox('输入信息为空，请重入供货单位！','提示信息',0);ed_inc_name.setfocus;exit;end;

  with dm.q_public1 do
  begin
    close;
    sql.clear;
    sql.add('select * from ghdw where inc_name=:inc_name');
    parambyname('inc_name').asstring:=ed_inc_name.text;
    try
      open;
    except
      application.MessageBox('网络出错！','错误',0);
      exit;
    end;
    if recordcount>0 then
    begin
      application.MessageBox('此单位已存在，请重输！','提示信息',0);
      ed_inc_name.SetFocus;
      exit;
    end;
  end;
  ed_inc_call.setfocus;
end;

procedure Tfm_ghdwwh.btn_exitClick(Sender: TObject);
begin
close;
end;

procedure Tfm_ghdwwh.btn_saveClick(Sender: TObject);
var inc_code:integer;
begin
  with dm.q_public1 do
  begin
    close;
    sql.clear;
    sql.add('select * from ghdw where inc_name=:inc_name');
    parambyname('inc_name').asstring:=ed_inc_name.text;
    try
      open;
    except
      application.MessageBox('网络出错！','错误',0);
      exit;
    end;
    if recordcount>0 then
    begin
      application.MessageBox('此单位已存在或输入信息为空！','提示信息',0);
      ed_inc_name.setfocus;
      exit;
    end;
  end;
  with dm.Q_public do
  begin
    close;
    sql.clear;
    sql.add('select inc_code=isnull(max(inc_code),0)+1 from ghdw ');
    open;
    inc_code:=dm.Q_public['inc_code'];
  end;
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.Add('exec ghdw_add :@inc_code,:@inc_name,:@pym');
    parambyname('@inc_code').asinteger:=inc_code;
    parambyname('@inc_name').asstring:=ed_inc_name.text;
    parambyname('@pym').asstring:=ed_inc_call.text;
    try
      execsql;
      application.MessageBox('保存成功!','信使',0);
      btn_save.Enabled:=false;
      ed_inc_name.setfocus;
    except
      application.MessageBox('保存失败或有重复','信使',0);
      exit;
    end;
  end;
end;

procedure Tfm_ghdwwh.ed_inc_callKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  if trim(ed_inc_name.text)='' then
  ed_inc_name.SetFocus  else  begin   btn_save.Enabled:=true; btn_save.SetFocus;end;
end;

procedure Tfm_ghdwwh.ed_inc_nameEnter(Sender: TObject);
begin
  ed_inc_name.clear;
  ed_inc_call.Clear;
end;

end.
