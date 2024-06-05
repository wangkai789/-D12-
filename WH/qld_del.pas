unit qld_del;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, Buttons;

type
  Tfm_qld_del = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    grp1: TGroupBox;
    lbl1: TLabel;
    edt_qldh: TEdit;
    btn_search: TButton;
    btn_del: TButton;
    btn_exit: TButton;
    dbgrd1: TDBGrid;
    rb_yf: TRadioButton;
    rb_bm: TRadioButton;
    GroupBox1: TGroupBox;
    btn_search_ckh: TButton;
    Button3: TButton;
    dbgrd2: TDBGrid;
    BBtn_bmly_db: TBitBtn;
    Label1: TLabel;
    ed_ckh: TEdit;
    procedure btn_searchClick(Sender: TObject);
    procedure edt_qldhKeyPress(Sender: TObject; var Key: Char);
    procedure edt_qldhChange(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edt_qldhEnter(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure rb_yfClick(Sender: TObject);
    procedure rb_bmClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btn_search_ckhClick(Sender: TObject);
    procedure BBtn_bmly_dbClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_qld_del: Tfm_qld_del;

implementation

uses data, czydl;

{$R *.dfm}

procedure Tfm_qld_del.btn_searchClick(Sender: TObject);
begin
  with dm.Q_use do
  begin
    close;
    sql.clear;
    if rb_yf.Checked then
       begin
         sql.add('select a.qldh,c.ym,c.gg,a.qll,c.jldw,a.sfl,jg=a.lsj,b.qlr,');
         sql.add('qlrq=convert(char(10),b.qlrq,102),a.ypbh');
         sql.add('From qldb a,qlyf b,xyzb c');
       end
    else
      begin
         sql.add('select a.qldh,c.ym,c.gg,a.qll,c.jldw,a.sfl,jg=a.sfdj,b.qlr,');
         sql.add('qlrq=convert(char(10),b.qlrq,102),a.ypbh');
         sql.add('From depqldb a,depqlyf b,xyzb c');
      end;
    sql.add('where a.qldh=b.qldh and a.ypbh=c.ypbh');
    sql.add('and b.qldh=:qldh');
    sql.add('and b.fyr_bh is null');
    parambyname('qldh').asinteger:=strtoint(edt_qldh.text);
    try
      open;
      DBGrd1.DataSource:=dm.ds_use;
      if recordcount=0 then
      begin
         application.MessageBox('无此请领单号或该请领单号已经领过物品！','提示信息',64);
         exit ;
      end;
    except
      application.messagebox('查询出错！','错误信息',MB_ICONERROR);
      exit;
    end;
  end;

end;

procedure Tfm_qld_del.edt_qldhKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) and (trim(edt_qldh.text)<>'') then btn_search.Click ;
end;

procedure Tfm_qld_del.edt_qldhChange(Sender: TObject);
begin
  btn_search.Enabled :=trim(edt_qldh.text)<>'';
end;

procedure Tfm_qld_del.btn_delClick(Sender: TObject);
begin
  if application.MessageBox('您确实要作废该请领单吗？','提示信息',mb_yesno+mb_iconquestion+mb_defbutton2)<>idyes then exit;
  with dm.Q_use do
  begin
    close;
    sql.clear;
    if rb_yf.Checked then
       begin
          sql.add('delete  qlyf where qldh=:qldh and fyr_bh is null');
          sql.add('delete  qldb where qldh=:qldh ');
       end
    else
       begin
          sql.add('delete  depqlyf where qldh=:qldh and fyr_bh is null');
          sql.add('delete  depqldb where qldh=:qldh ');
       end ;
    parambyname('qldh').asinteger:=strtoint(edt_qldh.text);
   try
     execsql;
     application.messagebox('删除成功！','提示信息',mb_iconinformation);
   except
    application.messagebox('删除失败！','提示信息',mb_iconinformation);
    exit;
   end
  end;
end;

procedure Tfm_qld_del.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dbgrd2.DataSource :=nil ;
  Action :=Cafree ;
end;

procedure Tfm_qld_del.FormShow(Sender: TObject);
begin
  pgc1.ActivePageIndex :=0 ;
  BBtn_bmly_db.Enabled :=false ;
  ed_ckh.Clear ;
  edt_qldh.SetFocus ;
end;

procedure Tfm_qld_del.edt_qldhEnter(Sender: TObject);
begin
  edt_qldh.Clear ;
  DBGrd1.DataSource:=nil ;
end;

procedure Tfm_qld_del.btn_exitClick(Sender: TObject);
begin
   Close ; 
end;

procedure Tfm_qld_del.rb_yfClick(Sender: TObject);
begin
   edt_qldh.Clear ;
   edt_qldh.SetFocus ;
end;

procedure Tfm_qld_del.rb_bmClick(Sender: TObject);
begin
   edt_qldh.Clear ;
   edt_qldh.SetFocus ;
end;

procedure Tfm_qld_del.Button3Click(Sender: TObject);
begin
  Close ;
end;

procedure Tfm_qld_del.btn_search_ckhClick(Sender: TObject);
begin
  with dm.Q_ks do
  begin
    close;
    sql.clear;
    sql.Add('select a.qldh,a.cksl,a.lsj,a.ckr,a.ksbm,a.ckrq,c.ym,c.gg,c.ypbh,c.jldw') ;
    sql.Add('From xykchu a,xykr b,xyzb c') ;
    sql.Add('where a.rkxh=b.rkxh and b.ypbh=c.ypbh') ;
    sql.Add('and a.ckh is null') ;
    Open ;
    dbgrd2.DataSource :=dm.DS_ks ;
    if recordcount>0 then
       BBtn_bmly_db.Enabled :=True
    else
       BBtn_bmly_db.Enabled :=false ;
   end;
end;

procedure Tfm_qld_del.BBtn_bmly_dbClick(Sender: TObject);
begin
  BBtn_bmly_db.Enabled :=false ;
  with dm.Q_comm do
  begin
    close;
    sql.clear;
    Sql.Add('exec get_new_bmly_ckh :lb ');
    ParamByName('lb').asinteger:=1;
    try
      open;
      ed_ckh.text:=dm.Q_comm.fieldbyname('ckh').asstring;
    except
      application.MessageBox('生成出库号出错，请重试！','错误提示',0);
      exit;
    end;
  end;

  with dm.Q_comm do
  begin
    close;
    sql.clear;
    Sql.Add('update xykchu set ckh=:ckh,lb=1 where ckh is null');
    ParamByName('ckh').asinteger:=StrToInt(ed_ckh.Text);
    try
      ExecSQL;
      dbgrd2.DataSource :=nil ;
      application.MessageBox('出库成功！','信息提示',64);
    except
      application.MessageBox('出库失败','错误提示',16);
      exit;
    end;
  end;
end;

end.
