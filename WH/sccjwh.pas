unit sccjwh;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ComCtrls, ToolWin, ExtCtrls, ImgList,
  Data.DB, System.ImageList;

type
  Tfm_sccjwh = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edt_spell: TEdit;
    edt_name: TEdit;
    Label3: TLabel;
    ToolBar1: TToolBar;
    tbtn_save: TToolButton;
    tbtn_update: TToolButton;
    tbtn_add: TToolButton;
    tbtn_search: TToolButton;
    tbtn_del: TToolButton;
    dbgrd_list: TDBGrid;
    ImageList1: TImageList;
    RG_TbType: TRadioGroup;
    edt_id: TEdit;
    Label4: TLabel;
    tbtn_close: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure DBGrid_sccjxzColExit(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure tbtn_searchClick(Sender: TObject);
    procedure tbtn_closeClick(Sender: TObject);
    procedure tbtn_addClick(Sender: TObject);
    procedure tbtn_updateClick(Sender: TObject);
    procedure tbtn_saveClick(Sender: TObject);
    procedure tbtn_delClick(Sender: TObject);
    procedure dbgrd_listDblClick(Sender: TObject);
    procedure dbgrd_listKeyPress(Sender: TObject; var Key: Char);
    procedure edt_nameKeyPress(Sender: TObject; var Key: Char);
    procedure edt_spellKeyPress(Sender: TObject; var Key: Char);
    procedure RG_TbTypeClick(Sender: TObject);
  private
    { Private declarations }
    function ClearScreen():boolean;
    function Search(Tbtype:smallint):boolean;
    function Add(Tbtype:smallint):boolean;
    function Del(Tbtype:smallint;id:integer):boolean;
    function Update(Tbtype:smallint):boolean;
    function GetMaxNO(Tbtype:smallint):string;

  public
    { Public declarations }
  end;

  const ADDFLAG=100;
        updateflag=101;

var
  fm_sccjwh: Tfm_sccjwh;

implementation

uses data,factory,pyproc;

{$R *.DFM}

procedure Tfm_sccjwh.FormShow(Sender: TObject);
begin
  tbtn_save.Enabled:=false;
  ClearScreen();
end;


procedure Tfm_sccjwh.DBGrid_sccjxzColExit(Sender: TObject);
begin
  (sender as tdbgrid).Visible :=false;
end;

procedure Tfm_sccjwh.btn_exitClick(Sender: TObject);
begin
 close;
end;

function Tfm_sccjwh.ClearScreen: boolean;
begin
  edt_id.Clear;
  edt_name.Clear;
  edt_spell.Clear;
end;

function Tfm_sccjwh.Add(Tbtype: smallint): boolean;
begin
  with dm.Q_comm do
   begin
     close;
     sql.Clear;
     case Tbtype of
     0:sql.Add('insert sccj(cjbm,cm,pym,xz,ifzy)  select :inc_code,:inc_name,:pym,1,1 ');
     1:sql.Add('insert ghdw(inc_code,inc_name,pym)  select :inc_code,:inc_name,:pym ');
     end;
     parambyname('inc_code').asinteger:=strtoint(edt_id.text);
     parambyname('inc_name').asstring:=trim(edt_name.text);
     parambyname('pym').asstring:=trim(edt_spell.text);
     try
       execsql;
       application.MessageBox('增加成功!','信使',0);
       tbtn_save.Enabled:=false;
       edt_name.setfocus;
     except
       application.MessageBox('增加失败！','信使',0);
       exit;
     end;
   end;
end;

function Tfm_sccjwh.Del(Tbtype: smallint;id:integer): boolean;
begin
   with dm.Q_comm do
   begin
     close;
     sql.Clear;
     case Tbtype of
     0:sql.Add('delete sccj where cjbm=:inc_code');
     1:sql.Add('delete ghdw where inc_code=:inc_code');
     end;
     parambyname('inc_code').asinteger:=id;
     try
       execsql;
       application.MessageBox('删除成功!','信使',0);
       tbtn_save.Enabled:=false;
       edt_name.setfocus;
     except
       application.MessageBox('删除失败！','信使',0);
       exit;
     end;
   end;
end;

function Tfm_sccjwh.Search(Tbtype: smallint): boolean;
begin
   with dm.Q_public do
   begin
     close;
     sql.Clear;
     case Tbtype of
     0:sql.Add('select 编号=cjbm,名称=cm,拼音码=pym from sccj order by cjbm desc');
     1:sql.Add('select 编号=inc_code,名称=inc_name,拼音码=pym from ghdw order by inc_code desc');
     end;
     open;
   end;
end;

function Tfm_sccjwh.Update(Tbtype: smallint): boolean;
begin
   with dm.Q_comm do
   begin
     close;
     sql.Clear;
     case Tbtype of
     0:sql.Add('update  sccj set cm=:inc_name,pym=:pym        where cjbm=:inc_code');
     1:sql.Add('update  ghdw set inc_name=:inc_name,pym=:pym  where inc_code=:inc_code');
     end;
     parambyname('inc_code').asinteger:=strtoint(edt_id.text);
     parambyname('inc_name').asstring:=trim(edt_name.text);
     parambyname('pym').asstring:=trim(edt_spell.text);
     try
       execsql;
       application.MessageBox('修改成功!','信使',0);
       tbtn_save.Enabled:=false;
       edt_name.setfocus;
     except
       application.MessageBox('修改失败！','信使',0);
       exit;
     end;
   end;
end;

procedure Tfm_sccjwh.tbtn_searchClick(Sender: TObject);
begin
  Search(RG_TbType.ItemIndex);
end;

procedure Tfm_sccjwh.tbtn_closeClick(Sender: TObject);
begin
  self.Close;
end;

procedure Tfm_sccjwh.tbtn_addClick(Sender: TObject);
begin
 ClearScreen();
 edt_id.text:=GetMaxNO(RG_TbType.ItemIndex);
 edt_name.SetFocus;
 tbtn_save.Tag:=addflag;
 tbtn_update.Enabled:=false;
 tbtn_save.Enabled:=true;
end;

function Tfm_sccjwh.GetMaxNO(Tbtype: smallint): string;
begin
  result:='0';
   with dm.Q_public1 do
   begin
     close;
     sql.Clear;
     case Tbtype of
     0:sql.Add('select 编号=max(cjbm)+1 from sccj ');
     1:sql.Add('select 编号=max(inc_code)+1 from ghdw ');
     end;
     open;
     result:=fieldbyname('编号').AsString;
   end;
end;

procedure Tfm_sccjwh.tbtn_updateClick(Sender: TObject);
begin
   ClearScreen();
   edt_name.SetFocus;
   tbtn_save.Tag:=updateflag;
   tbtn_add.Enabled:=false;
   tbtn_save.Enabled:=true;
   edt_id.Text:=dbgrd_list.DataSource.DataSet.FieldByName('编号').AsString;
   edt_name.Text:=dbgrd_list.DataSource.DataSet.FieldByName('名称').AsString;
   edt_spell.Text:=dbgrd_list.DataSource.DataSet.FieldByName('拼音码').AsString;
end;

procedure Tfm_sccjwh.tbtn_saveClick(Sender: TObject);
begin
  if application.messagebox('是否保存？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then
  begin
    tbtn_save.Enabled:=false;
    tbtn_add.Enabled:=true;
    tbtn_update.Enabled:=true;
    exit;
 end;
 case   tbtn_save.Tag of
 addflag:add(RG_TbType.ItemIndex);
 updateflag:Update(RG_TbType.ItemIndex);
 end;
 ClearScreen();
 tbtn_save.Enabled:=false;
 tbtn_add.Enabled:=true;
 tbtn_update.Enabled:=true;
 tbtn_search.Click;
end;

procedure Tfm_sccjwh.tbtn_delClick(Sender: TObject);
var aname:string;
    aid:integer;
begin
 aname:=dbgrd_list.DataSource.DataSet.fieldbyname('名称').asstring;
 aid:=dbgrd_list.DataSource.DataSet.fieldbyname('编号').asinteger;
 if application.messagebox(pchar('是否删除【'+aname+'】信息？'),'信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
  Del(RG_TbType.ItemIndex,aid);
  ClearScreen();
  tbtn_search.Click;
end;

procedure Tfm_sccjwh.dbgrd_listDblClick(Sender: TObject);
begin
  if tbtn_update.Enabled then tbtn_update.Click;
end;

procedure Tfm_sccjwh.dbgrd_listKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then  dbgrd_listDblClick(sender);
end;

procedure Tfm_sccjwh.edt_nameKeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13) and (trim(edt_name.Text)<>'') then
begin
  edt_spell.SetFocus;
  edt_spell.text:= MakeSpellCode(AnsiString(edt_name.text), 0, 0);

end;
end;

procedure Tfm_sccjwh.edt_spellKeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13)  then tbtn_save.Click;
end;

procedure Tfm_sccjwh.RG_TbTypeClick(Sender: TObject);
begin
  tbtn_search.Click;
end;

end.
