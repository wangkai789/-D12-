unit depqlyp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Grids, DBGrids, ExtCtrls, Data.DB;

type
  TFm_depqlyp = class(TForm)
    DBGrid_qlyp: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lb_kc: TLabel;
    EdCode: TEdit;
    Edit_qldh: TEdit;
    qd: TBitBtn;
    dy: TBitBtn;
    Edit_dw: TEdit;
    Ed_ym: TEdit;
    Ed_sl: TEdit;
    Ed_kcl: TEdit;
    RadioGroup1: TRadioGroup;
    DBGrid_XYZB: TDBGrid;
    Edt_qlrbh: TEdit;
    Label4: TLabel;
    Edt_qlrxm: TEdit;
    Edt_qlrks: TEdit;
    Label6: TLabel;
    Edt_ksbm: TEdit;
    dbgrd_listzg: TDBGrid;
    BitBtn1: TBitBtn;
    RdGp_type: TRadioGroup;
    tc: TBitBtn;
    Label5: TLabel;
    Label21: TLabel;
    cmbx_storetype: TComboBox;
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_XYZBDblClick(Sender: TObject);
    procedure EdCodeEnter(Sender: TObject);
    procedure DBGrid_XYZBExit(Sender: TObject);
    procedure Ed_slKeyPress(Sender: TObject; var Key: Char);
    procedure qdClick(Sender: TObject);
    procedure DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);

    procedure DBGrid_qlypDblClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edt_qlrbhKeyPress(Sender: TObject; var Key: Char);
    procedure ListBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ListBox1DblClick(Sender: TObject);
    procedure dbgrd_listzgDblClick(Sender: TObject);
    procedure dbgrd_listzgExit(Sender: TObject);
    procedure dbgrd_listzgKeyPress(Sender: TObject; var Key: Char);
    procedure RdGp_typeClick(Sender: TObject);
    procedure tcClick(Sender: TObject);
  private
    { Private declarations }
    procedure  ksly_OpidSeek(opid:string);
  public
    { Public declarations }
    ifclear:boolean;
  end;

var
  Fm_depqlyp: TFm_depqlyp;

implementation

uses data, Factory, czydl;
//rpt_qldmx;

{$R *.DFM}

procedure TFm_depqlyp.EdCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if key<>#13 then exit;
  with dm.Q_MedStore do
  begin
    Close;
    SQL.Clear;
    case  RdGp_type.ItemIndex of
    0:begin
          case self.RadioGroup1.ItemIndex of
           0: SQL.Add('exec  xyzb_cx_xz :SearchCode,1,0,:storetype');
           1: SQL.Add('exec  xyzb_cx_xz :SearchCode,3,0,:storetype');
           2: SQL.Add('exec  xyzb_cx_xz :SearchCode,2,0,:storetype');
          end;
     end;
    1:begin
          case self.RadioGroup1.ItemIndex of
           0: SQL.Add('exec  xyzb_cx_xz :SearchCode,1,1,:storetype');
           1: SQL.Add('exec  xyzb_cx_xz :SearchCode,3,1,:storetype');
           2: SQL.Add('exec  xyzb_cx_xz :SearchCode,2,1,:storetype');
          end;
       end;
     end;

    parambyname('SearchCode').AsString := '%'+EdCode.Text+'%';
    parambyname('storetype').AsString :=trim(cmbx_storetype.text);

    open;
    if recordcount>0 then
    begin
      if recordcount=1 then DBGrid_XYZBDblClick(sender)
      else begin DBGrid_XYZB.Visible:=true; DBGrid_XYZB.SetFocus; end;
    end
    else
    begin
      application.MessageBox('无此药品!','错误提示',0+mb_iconstop);
    end;
  end;
end;

procedure TFm_depqlyp.DBGrid_XYZBDblClick(Sender: TObject);
begin
  with dm.Q_MedStore do
  begin
    Ed_ym.Text := Fieldbyname('ym').AsString;
    EdCode.text := Fieldbyname('ypbh').AsString;
    Edit_dw.Text:=Fieldbyname('jldw').AsString;
    Ed_kcl.Text:=Fieldbyname('kcl').AsString;
  end;
   Ed_sl.SetFocus;
end;

procedure TFm_depqlyp.EdCodeEnter(Sender: TObject);
begin
  Edcode.Clear;
  Ed_ym.Clear;
  Edit_dw.Clear;
  Ed_sl.Clear;
  ed_kcl.Clear;
  
end;

procedure TFm_depqlyp.DBGrid_XYZBExit(Sender: TObject);
begin
  (sender as tdbgrid).visible:=false;
end;

procedure TFm_depqlyp.Ed_slKeyPress(Sender: TObject; var Key: Char);
var sl:currency;
begin
  if key<>#13 then exit;
  sl:=strtocurr(ed_sl.text);
  case RdGp_type.ItemIndex of
  0:begin
      if sl<=0 then
      begin
        ed_sl.clear;
        exit;
      end else
      if strtocurr(ed_kcl.text)-sl<0 then
      begin
        ed_sl.Clear;
        exit;
      end;
    end;
   1:begin
     if sl>=0 then
     begin
       ed_sl.clear;
       exit;
     end;
    end;
  end;

  with dm.Q_song do
  begin
    close;
    sql.clear;
    SQL.Add('exec ks_bmly_qldnew :mopid,:mypbh,:mqll');
    ParamByName('mopid').AsInteger:=strtoint(trim(Edt_qlrbh.text));
    ParamByName('mypbh').AsString:=trim(edcode.text);
    ParamByName('mqll').Asfloat:=strtofloat(trim(Ed_sl.text));
    try
      ExecSQL;
      dm.SearchdepQlTemp(strtoint(trim(Edt_qlrbh.text)));
    except
      dm.SearchdepQlTemp(strtoint(trim(Edt_qlrbh.text)));
      application.MessageBox('重复增加药品失败！','错误',0+mb_iconstop);
      exit;
    end;
    if recordcount>0 then qd.Enabled:=true;
    EdCode.SetFocus;
  end;
end;

procedure TFm_depqlyp.qdClick(Sender: TObject);
begin
  qd.Enabled:=false;
  try
    dataset_open(dm.q_song,'exec get_new_bmly_qldh');
    Edit_qldh.text:=dm.Q_song['qldh']; 
    EdCode.SetFocus;
  except
    application.MessageBox('生成请领单号时出错，请重试！','错误提示',0+mb_iconstop);
    exit;
  end;
  with dm.Q_song do
  begin
    close;
    sql.Clear;
    SQL.Add('exec ks_bmly_qlyf :mqldh,:myfbm,:qlr,:type');
    ParamByName('mqldh').AsInteger:=strtoint(trim(edit_qldh.text));
    ParamByName('myfbm').Assmallint:=strtoint(trim(Edt_ksbm.text));
    ParamByName('qlr').Assmallint:=strtoint(trim(Edt_qlrbh.text));
    case self.RadioGroup1.ItemIndex of
      0:parambyname('type').assmallint:=1;
      1:parambyname('type').assmallint:=3;
      2:parambyname('type').assmallint:=2;
    end;
    Prepare;
    try
      try
        ExecSQL;
      finally
        unprepare;
      end;
      application.messagebox('请领单已经生成','提示',0);

    EdCode.Clear;Ed_ym.Clear;Edit_qldh.Clear;
    Ed_sl.Clear;Edit_dw.Clear;Ed_kcl.Clear;
    EdCode.SetFocus;
    except
      application.messagebox('请领单生成是出错','错误提示',0+mb_iconstop)
    end;
  end;
 
end;

procedure TFm_depqlyp.DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_XYZBDblClick(Sender);
end;

procedure TFm_depqlyp.FormShow(Sender: TObject);
begin

   dm.Q_public.close;
   dm.Q_song.Close;
   
    Edt_qlrbh.SetFocus;
    Edt_qlrbh.Clear;
    Edt_qlrxm.clear;
    Edt_qlrks.Clear;
    Edt_ksbm.Clear;
    dbgrd_listzg.Visible:=false;
    dbgrd_listzg.Top:=Edt_qlrbh.Top+Edt_qlrbh.Height;
    dbgrd_listzg.Left:=Edt_qlrbh.Left;
    DBGrid_XYZB.Top:=EdCode.Top+EdCode.Height;
    DBGrid_XYZB.left:=EdCode.Left;
    dm.SetStoreValue(cmbx_storetype);

end;



procedure TFm_depqlyp.DBGrid_qlypDblClick(Sender: TObject);
var
   aypbh: string;
begin
   if DBGrid_qlyp.DataSource.DataSet.IsEmpty then exit;
   aypbh:=trim(DBGrid_qlyp.Fields[0].AsString);
   with dm.Q_song do
    begin
      close;
      sql.clear;
      SQL.Add('exec ks_bmly_qld_del :mopid,:mypbh');
      ParamByName('mopid').AsInteger:=strtoint(trim(Edt_qlrbh.text));
      ParamByName('mypbh').AsString:=aypbh;
      ExecSQL;
      dm.SearchdepQlTemp(strtoint(trim(Edt_qlrbh.text)));
      if recordcount=0 then
      begin
        qd.Enabled :=false;

      end;
    end;
    EdCode.SetFocus ;
end;

procedure TFm_depqlyp.RadioGroup1Click(Sender: TObject);
begin
   with dm.Q_song do
   begin
     close;
     sql.clear;
     sql.add('delete depqldb_temp where opid =:opid');
     ParamByName('opid').AsInteger:=strtoint(trim(Edt_qlrbh.text));
     try
       execsql;
     except
       exit;
     end;
   end;
end;

procedure TFm_depqlyp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with dm.Q_song do
  begin
    close;
    sql.clear;
    sql.Add(' delete depqldb_temp where opid=:qlr');
    ParamByName('qlr').Assmallint:=strtoint(fm_czydl.Ed_bh.text);
    execsql;
  end;
  dm.Q_song.Close;
  dm.Q_public.Close;
end;

procedure TFm_depqlyp.ksly_OpidSeek(opid: string);
begin
  with dm.Q_use do
  begin
    close;
    sql.clear;
    sql.Add('select distinct a.bh,b.xm,c.ksbm,c.ksmc');
    sql.Add('from syscustomsq a,zgzb b,jgxx c');
    sql.Add('where a.bh=b.bh and a.kind=1');
    sql.Add('and a.itemid1=c.ksbm ');
    try
      strtoint(opid);
      sql.add('and a.bh=:bh');
      parambyname('bh').asinteger:=strtoint(opid);
    except
      sql.add('and b.pym like :pym');
      parambyname('pym').asstring:=opid+'%';
    end;
    sql.add('order by a.bh');
    open;
    if IsEmpty then
    begin
      application.MessageBox('该用户未分配使用科室','提示信息',mb_iconinformation);
      exit;
    end;
   Edt_ksbm.clear;
   Edt_qlrks.tag:=0;
   dbgrd_listzg.Visible:=true;
   dbgrd_listzg.DataSource:=dm.DS_use;
   dbgrd_listzg.SetFocus;
  end;
end;

procedure TFm_depqlyp.Edt_qlrbhKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then   ksly_OpidSeek(Edt_qlrbh.Text);
end;

procedure TFm_depqlyp.ListBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then ListBox1DblClick(sender);
end;

procedure TFm_depqlyp.ListBox1DblClick(Sender: TObject);
var str:string;
begin

end;

procedure TFm_depqlyp.dbgrd_listzgDblClick(Sender: TObject);
begin
  Edt_qlrbh.Text:=dm.Q_use.fieldbyname('bh').AsString;
  Edt_qlrxm.Text:=dm.Q_use.fieldbyname('xm').AsString;
  Edt_ksbm.text:=dm.Q_use.fieldbyname('ksbm').AsString;
  Edt_qlrks.text:=dm.Q_use.fieldbyname('ksmc').AsString;
  If copy(trim(Edt_ksbm.Text),1,1) ='5' Then
   begin
     application.MessageBox('药房不能在此界面请领，请在药房管理系统中请领!','提示信息',mb_iconinformation);
     Edt_ksbm.clear;
     Edt_qlrks.clear;
     exit;
   end;
  EdCode.SetFocus;
end;

procedure TFm_depqlyp.dbgrd_listzgExit(Sender: TObject);
begin
  dbgrd_listzg.Visible:=false;
end;

procedure TFm_depqlyp.dbgrd_listzgKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then dbgrd_listzgDblClick(sender);
end;

procedure TFm_depqlyp.RdGp_typeClick(Sender: TObject);
begin
   with dm.Q_song do
   begin
     close;
     sql.clear;
     sql.add('delete depqldb_temp where opid =:opid');
     ParamByName('opid').AsInteger:=strtoint(trim(Edt_qlrbh.text));
     try
       execsql;
     except
       exit;
     end;
   end;


  case RdGp_type.ItemIndex of
    0:begin
        Label3.Caption := '请领单号';
        self.Caption:='请领单生成';
        lb_kc.caption := '药库库存';
      end;
    1:begin
       Label3.Caption := '退库单号';
       self.Caption:='退库单生成';
       lb_kc.caption := '科室库存';
       if Edt_ksbm.Text='888' then
       begin
         Application.MessageBox('退物品公司，请选择领药!','提示信息',mb_iconinformation);
         RdGp_type.ItemIndex:=0;
       end;
     end;
  end;

  EdCode.SetFocus;
end;

procedure TFm_depqlyp.tcClick(Sender: TObject);
begin
  self.Close;
end;

end.
