unit ksly;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls;

type
  Tfm_ksly = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Ed_lyr: TEdit;
    Ed_ksbm: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    DBGrid_qlyp: TDBGrid;
    Ed_sfl: TEdit;
    BBtn_bmly_db: TBitBtn;
    BBtn_new: TBitBtn;
    DBGrid_dbyp: TDBGrid;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    DBGrid_qld: TDBGrid;
    BitBtn2: TBitBtn;
    BBtn_quit: TBitBtn;
    Bevel1: TBevel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit6Enter(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_qldDblClick(Sender: TObject);
    procedure DBGrid_qldKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_qlypCellClick(Column: TColumn);
    procedure DBGrid_dbypDblClick(Sender: TObject);
    procedure DBGrid_dbypKeyPress(Sender: TObject; var Key: Char);
    procedure Edit16Change(Sender: TObject);
    procedure Ed_sflKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_sflExit(Sender: TObject);
    procedure BBtn_bmly_dbClick(Sender: TObject);
    procedure BBtn_newClick(Sender: TObject);
    procedure BBtn_quitClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_ksly: Tfm_ksly;
  mbypkcl:currency;
implementation

uses czydl, data, q_qld,factory, main;

{$R *.DFM}

procedure Tfm_ksly.FormShow(Sender: TObject);
begin
  BBtn_bmly_db.tag:=0;
  BitBtn2.tag:=0;
  //dbgrid1.left:=87;
  edit1.text:=fm_czydl.Ed_xm.Text;
  edit2.text:=datetostr(now);
  Edit6.SetFocus;
end;

procedure Tfm_ksly.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dm.Q_public1.DataSource:=nil;
end;

procedure Tfm_ksly.Edit6Enter(Sender: TObject);
begin
  BBtn_new.Click;
  Edit6.clear;Edit16.clear;BBtn_bmly_db.enabled:=false; DBGrid_qld.visible:=false;
end;

procedure Tfm_ksly.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
 ISDIGIT(KEY);
 if key<>#13 then exit;
 with dm.q_comm do
 begin
    close;
    sql.Clear;
    sql.add('select qldh,qlrq,qlr,yfbm,b.ksmc from depqlyf a,jgxx b ');
    sql.add('where a.yfbm=b.ksbm and fyrq is null and ifty=0');
    if edit6.text<>'' then
    begin
      sql.add(' and qldh=:qldh');
      ParamByName('qldh').AsInteger:=strtoint(trim(edit6.text));
    end;
    Prepare;
    Open;
    case recordcount of
    0:begin
        Application.MessageBox('该药房的请领单已全部发完。','操作提示！',0+mb_iconinformation);
        exit;
      end;
    1: DBGrid_qldDblClick(Sender);
    else begin
            DBGrid_qld.Visible:=true;BBtn_bmly_db.tag:=0; DBGrid_qld.SetFocus;
         end;
    end;

 end;

end;

procedure Tfm_ksly.DBGrid_qldDblClick(Sender: TObject);
begin
  edit5.text:=dm.Q_comm['ksmc'];
  Ed_lyr.Text:=dm.q_comm.Fields[2].asstring;
  edit6.text:=dm.q_comm.Fields[0].asstring;
  ed_ksbm.text:=dm.q_comm.Fields[3].asstring;
  DBGrid_qld.Visible:=false;
  BBtn_bmly_db.enabled:=true;
  with dm.Q_public do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select b.ypbh, b.ym, b.gg, c.jx,a.qll, b.jldw,a.sfl,lb=a.zlbm FROM depqldb a, xyzb b, ypjx c where a.qldh=:mqldh AND b.ypbh=a.ypbh and b.jxbm=c.jxbm ORDER BY a.ypbh');
    ParamByName('mqldh').AsInteger:=strtoint(trim(edit6.text));
    Prepare;
    open;
  end;
  DBGrid_qlyp.Visible:=true;
  DBGrid_qlyp.SetFocus;
end;

procedure Tfm_ksly.DBGrid_qldKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_qldDblClick(Sender);
end;

procedure Tfm_ksly.DBGrid_qlypCellClick(Column: TColumn);
begin
  with dm.Q_public1 do
  begin
    close;
    sql.Clear;
    //SQL.Add(' select  a.rkxh,b.ym,d.cm,a.sxrq,a.kcl,b.jldw,b.ypbh,b.gg,b.jxbm,e.jx,c.ypph ');
    //SQL.Add('from xykcun a, xyzb b, xykr c, sccj d,ypjx e ');
    //SQL.Add('where e.jxbm=b.jxbm and a.kcl>0 and a.ypbh=:ypbh and a.ypbh=b.ypbh ');
    //SQL.Add('and a.rkxh=c.rkxh and c.cjbm=d.cjbm order by a.sxrq ');
//    ParamByName('mypbh').AsString:=DBGrid_qlyp.Fields[0].asstring;

    SQL.Add('exec yp_seek :back,:ypbh');
    parambyname('back').asboolean:=false;
    ParamByName('ypbh').AsString:=DBGrid_qlyp.Fields[0].asstring;
    open;
    if RecordCount=0 then
    begin
      application.MessageBox('该编号的药品无库存！，请继续出库其它药品！','提示',64);
      exit;
      DBGrid_qlyp.SetFocus;
    end;
    edit7.text:=dm.q_public1['ypbh'];
    edit8.text:=dm.q_public1['ym'];
    edit9.text:=dm.q_public1['gg'];
    edit10.text:=dm.q_public1['jx'];
    DBGrid_dbyp.visible:=true;    DBGrid_dbyp.SetFocus;
  end;
end;

procedure Tfm_ksly.DBGrid_dbypDblClick(Sender: TObject);
begin
 edit16.text:=DBGrid_dbyp.Fields[3].asstring;
 if (DBGrid_qlyp.Fields[4].ascurrency-DBGrid_qlyp.Fields[6].ascurrency)>0 then
 if DBGrid_dbyp.Fields[5].ascurrency>=DBGrid_qlyp.Fields[4].ascurrency-DBGrid_qlyp.Fields[6].ascurrency then
 begin
 //  ed_sfl.text:=inttostr(DBGrid_qlyp.Fields[4].asinteger-DBGrid_qlyp.Fields[6].asinteger);
   ed_sfl.text:=currToStr(DBGrid_qlyp.Fields[4].ascurrency-DBGrid_qlyp.Fields[6].ascurrency);
   try
      ed_sfl.SetFocus;
   except
     application.MessageBox ('没有批号的药品无法出库!','信使',mb_ok);
   end;
 end
 else
 begin
   ed_sfl.text:=DBGrid_dbyp.Fields[5].asstring;
   ed_sfl.SetFocus;
 end
 else
 begin
   ed_sfl.text:='0';
   if application.MessageBox('现在实发量已经大于或等于请领量，继续发这种药么？','提示',MB_yesno + MB_DEFBUTTON1+mb_iconquestion)=Id_yes then
   ed_sfl.SetFocus
   else
   DBGrid_qlyp.SetFocus;
 end;
 edit15.text:=DBGrid_dbyp.Fields[6].asstring;
 edit16.text:=DBGrid_dbyp.Fields[3].asstring;
 //edit17.text:=DBGrid_dbyp.Fields[7].asstring;
 mbypkcl:=DBGrid_dbyp.Fields[5].ascurrency;  //某笔药品库存量
 //BBtn_bmly_db.Enabled:=true;
end;

procedure Tfm_ksly.DBGrid_dbypKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_dbypDblClick(Sender);
end;

procedure Tfm_ksly.Edit16Change(Sender: TObject);
begin
if edit16.text<>'' then ed_sfl.enabled:=true else  ed_sfl.enabled:=false;
end;

procedure Tfm_ksly.Ed_sflKeyPress(Sender: TObject; var Key: Char);
begin
  ISDIGIT(KEY);
  if key=#13 then
  begin
    if  BBtn_bmly_db.tag=1 then begin application.MessageBox('该请领单已经发过，请重新输入请领单！','提示',0);exit;end;
    if strtocurr(trim(Ed_sfl.text))<=0 then
    begin
      application.MessageBox('实发量不能为负数或零！','提示',0);
      Ed_sfl.setfocus;
      exit;
    end;
   // BBtn_bmly_db.Enabled:=true; //BBtn_bmly_db.SetFocus;
    with dm.Q_comm do
    begin
      close;
      sql.clear;
      SQL.Add('Exec yp_ksly :qldh,:rkxh,:ypbh,:qll,:ckr,:lyr,:ksbm,:opid');
      ParamByName('qldh').asinteger:=strtoint(trim(edit6.text));
      ParamByName('rkxh').asinteger:=dm.Q_public1.FieldByName('rkxh').asinteger;
      ParamByName('ypbh').Asstring:=dm.Q_public1.FieldByName('ypbh').asstring;
      ParamByName('qll').ascurrency:=strtocurr(Ed_sfl.text);
      ParamByName('ckr').asinteger:=strtoint(trim(fm_czydl.Ed_bh.text));
      ParamByName('lyr').asinteger:=strtoint(trim(Ed_lyr.text));
      ParamByName('ksbm').assmallint:=strtoint(trim(ed_ksbm.text));
      ParamByName('opid').asinteger:=strtoint(trim(fm_czydl.Ed_bh.text));
      try
      ExecSQL;
      application.MessageBox('该药品实发量确认成功','提示',0);
      //BBtn_bmly_db.enabled:=true;
      BitBtn2.Enabled:=true;
      BBtn_bmly_db.setfocus;
      except
      application.MessageBox('该药品实发量确认错误，请重试！！','错误提示',mb_iconstop);
      exit;
      end;
    end;
    with dm.Q_public do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select b.ypbh, b.ym, b.gg, c.jx,a.qll, b.jldw,a.sfl,lb=a.zlbm FROM depqldb a, xyzb b, ypjx c where a.qldh=:mqldh AND b.ypbh=a.ypbh and b.jxbm=c.jxbm ORDER BY a.ypbh');
      ParamByName('mqldh').AsInteger:=strtoint(trim(edit6.text));
      Prepare;
      open;
    end;
    DBGrid_qlyp.Visible:=true;
    DBGrid_qlyp.SetFocus;
  end;
end;

procedure Tfm_ksly.Ed_sflExit(Sender: TObject);
begin
  try
    if strtocurr(trim(Ed_sfl.text))>mbypkcl then
    begin
    application.MessageBox('实发量>所选药品的库存量，请重输！！','错误提示',0+mb_iconstop);
    BBtn_bmly_db.Enabled:=false;
    exit;
    end
   except

   end;
end;

procedure Tfm_ksly.BBtn_bmly_dbClick(Sender: TObject);
begin
  with dm.Q_comm do
  begin
    close;
    sql.clear;
    SQL.Add('exec get_new_ksly_ckh  :lb ');
    ParamByName('lb').asinteger:=dm.q_public['lb'];
    try
      open;
      BitBtn2.tag:=dm.Q_comm['ckh'];
    except
      application.MessageBox('生成出库号出错，请重试！','错误提示',0);
      exit;
    end;
  end;
  with dm.Q_comm do
  begin
    close;
    sql.clear;
    SQL.Add('update xykchu  set ckh=:ckh,lb=:lb where qldh=:qldh');
    SQL.Add('update depqlyf  set fyrq=getdate(),fyr_bh=:fyr_bh,fyr=:fyr where qldh=:qldh ');
    ParamByName('qldh').asinteger:=strtoint(trim(edit6.text));
    ParamByName('fyr_bh').asinteger:=strtoint(trim(fm_czydl.Ed_bh.text));
    ParamByName('fyr').asstring:=trim(fm_czydl.Ed_xm.text);
    ParamByName('lb').asinteger:=dm.q_public['lb'];
    ParamByName('ckh').asinteger:=BitBtn2.tag;
    try
      ExecSQL;
      application.MessageBox('发药成功','提示',0);
      BBtn_bmly_db.tag:=1;
      BitBtn2Click(sender);
    except
      application.MessageBox('发药出现错误，请输入请领单号后，重试！！','错误提示',mb_iconstop);
    end;
  end;
 BBtn_bmly_db.Enabled:=false;
end;

procedure Tfm_ksly.BBtn_newClick(Sender: TObject);
begin
  DBGrid_qld.left:=70;Edit6.setfocus;
  //dm.Q_public1.DataSource:=dm.DS_public;
  DBGrid_qlyp.Visible:=false;DBGrid_dbyp.Visible:=false;
  Ed_lyr.Clear;Ed_ksbm.Clear;
  ed_sfl.clear;edit5.clear;edit7.clear;edit8.clear;edit9.clear;edit10.clear;
end;

procedure Tfm_ksly.BBtn_quitClick(Sender: TObject);
begin
  close;
end;

procedure Tfm_ksly.BitBtn2Click(Sender: TObject);
begin
try
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    //sql.Add('select b.ypbh, b.ym, b.gg, c.jx,a.qll, b.jldw,a.sfl,d.lyr,d.ckrq ');
    sql.Add('select a.*,b.ym,b.gg,b.jldw,d.qlrq,d.fyrq,d.fyr,b.ylsj,je=b.ylsj*a.sfl,a.zlbm FROM depqldb a, xyzb b, depqlyf d');
    sql.Add('where  a.qldh=:mqldh AND b.ypbh=a.ypbh  and a.qldh=d.qldh ORDER BY a.ypbh');
    ParamByName('mqldh').AsInteger:=strtoint(trim(edit6.text));
    open;
  end;
  with qr_qld do
  begin
    QRLabel1.caption:=fm_main.Label_hospital.caption+Edit5.text+'药品请领单';
    case dm.Q_comm['zlbm'] of
    1:  qr_yplb.caption:='西药 字';
    2:  qr_yplb.caption:='中草药 字';
    3:  qr_yplb.caption:='中成药 字';
    end;
    qr_ckh.caption:=inttostr(BitBtn2.tag);
  //  QRLabel9.caption:='发药人：'+fm_czydl.Ed_xm.text;
    QRDBText10.DataField:='ylsj';
    prepare;
    pagecount:=qr_qld.pagenumber;
    QRLabel16.Caption :='合计：'+formatcurr('0.00',strtocurr(temp));
    preview;
  end;
except
  application.MessageBox('报表缺少所需的数据','信使',mb_ok);
  exit;
end;

end;

end.
