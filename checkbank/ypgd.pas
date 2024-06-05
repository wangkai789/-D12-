unit ypgd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBGrids, Grids, Buttons, ComCtrls, Mask, DBCtrls,OleServer,comobj,Data.DB ;

type
  TFm_yppd = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    Label8: TLabel;
    lab_kc: TLabel;
    bbtn_kc: TBitBtn;
    bitprint: TBitBtn;
    bbtn_out1: TBitBtn;
    Ed_yznr_kc: TEdit;
    SaveDialog1: TSaveDialog;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    bbtn_search2: TBitBtn;
    datefrom3: TDateTimePicker;
    dateto3: TDateTimePicker;
    Ed_yznr1: TEdit;
    BitBtn2: TBitBtn;
    DBGrid_xyzb1: TDBGrid;
    Label13: TLabel;
    Cbb_yfbm1: TComboBox;
    Label12: TLabel;
    Com_kind1: TComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ed_yp: TEdit;
    ed_xkcl: TEdit;
    ed_ypbh: TEdit;
    Ed_oldkc: TEdit;
    Ed_ylsj: TEdit;
    Com_kind: TComboBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label16: TLabel;
    Ed_dh: TEdit;
    Label17: TLabel;
    Label20: TLabel;
    cmbx_storetype: TComboBox;
    edt_produce: TEdit;
    Label21: TLabel;
    Cbb_yfbm: TComboBox;
    pnl1: TPanel;
    BBtn_add: TBitBtn;
    BitBtn1: TBitBtn;
    bbtn_print: TBitBtn;
    BBtn_quit: TBitBtn;
    edt_jldw_sl: TEdit;
    edt_zxdw_sl: TEdit;
    edt_jldw: TEdit;
    Label4: TLabel;
    edt_zxdw1: TEdit;
    Label22: TLabel;
    edt_zxdw: TEdit;
    edt_hsb: TEdit;
    edt_zxdw2: TEdit;
    edt_gg: TEdit;
    procedure BBtn_addClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed_ypKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrid1DblClick(Sender: TObject);
    procedure dbgrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_xkclExit(Sender: TObject);
    procedure ed_xkclKeyPress(Sender: TObject; var Key: Char);
    procedure ed_ypEnter(Sender: TObject);
    procedure dbgrid1Exit(Sender: TObject);
    procedure Com_kindKeyPress(Sender: TObject; var Key: Char);
    procedure bbtn_search2Click(Sender: TObject);
    procedure Ed_yznr1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_xyzb1DblClick(Sender: TObject);
    procedure DBGrid_xyzb1Exit(Sender: TObject);
    procedure DBGrid_xyzb1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbtn_printClick(Sender: TObject);
    //procedure frReport1BeforePrint(Memo: TStringList; View: TfrView);
    procedure edt_jldw_slKeyPress(Sender: TObject; var Key: Char);
    procedure edt_zxdw_slKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_yppd: TFm_yppd;
  year,month,day:word;
  year1,month1,day1:word;
  FirstAlpha:string[1];
implementation

uses data, czydl, main,InterfaceMedStore;

{$R *.dfm}

procedure TFm_yppd.BBtn_addClick(Sender: TObject);
begin
  with dm.q_use do
  begin
    close;
    sql.clear;
    sql.Add('exec yfrk_zy :xkcl,:ypbh,:lsj,:memo,:yfbm,:opid');
    parambyname('yfbm').assmallint:=strtoint(copy(cbb_yfbm.Text,1,pos(':',cbb_yfbm.Text)-1));
    parambyname('xkcl').ascurrency:=strtocurr(ed_xkcl.text);
    parambyname('ypbh').asstring:=ed_ypbh.text;
    parambyname('lsj').asstring:=Ed_ylsj.text;
    parambyname('memo').asstring:=com_kind.text;
    parambyname('opid').asinteger:=strtoint(dm.Fopid);
    try
      open;
      if isempty then
      begin
        DBGrid2.DataSource:=nil;
        exit;
      end else
      begin
       DBGrid2.DataSource:=dm.DS_use;
       BBtn_add.enabled:=false;
       ed_yp.setfocus;
      end;
    except
      application.messagebox(pchar('修改库存失败'),'提示信息',mb_iconerror);
    end;
  end;
end;

procedure TFm_yppd.FormShow(Sender: TObject);
var
 icount:integer;
 asqlstr:string;
 MYMedStore:IMedStore;
begin
  dm.q_comm.close;
  dm.q_use.close;


  with dm.Q_comm do
  begin
   close;
   sql.clear;
   sql.add('select mc From pub_constant where kind=3 order by sequence');
   open;
   if isempty then exit else
   begin
     com_kind.Clear;
     Com_kind1.Clear;
     Com_kind1.items.Add('全部');
     while not eof do
     begin
      com_kind.Items.add(fieldbyname('mc').asstring);
      com_kind1.Items.add(fieldbyname('mc').asstring);
      next;
     end;
   end;
  end;

  if fm_czydl.Tag=0 then
  begin
    for icount:=0 to self.ComponentCount-1 do
    begin
     if (self.Components[icount] is tdbedit) or (self.Components[icount] is tedit) then
     begin
       tdbedit(components[icount]).enabled:=false;
       tedit(components[icount]).enabled:=false;
       tdbedit(components[icount]).color:=clgray;
       tedit(components[icount]).color:=clgray;
     end;
    end;
   dbgrid1.visible:=false;
  end
  else
  begin
    dm.q_comm.close;
    dbgrid1.visible:=false;
  end;
 com_kind.ItemIndex :=0;
 com_kind1.ItemIndex :=0;
 BBtn_add.tag:=0;
 datefrom3.Date :=date();
 dateto3.Date :=date();
 Ed_yznr1.clear ;
 edt_produce.Clear;
 PageControl1.ActivePageIndex :=0 ;
 //--2023.12.06 wk 库房类别
 MYMedStore:=TMedStore.Create;
 MYMedStore.GetYfbm(dm.Q_comm,cbb_yfbm,false);
 MYMedStore.GetYfbm(dm.Q_comm,cbb_yfbm1,false);
 //---
 cbb_yfbm.ItemIndex :=dm.GetComboxIndex(cbb_yfbm,dm.sysinfo.yfmc);
 cbb_yfbm1.ItemIndex :=dm.GetComboxIndex(cbb_yfbm1,dm.sysinfo.yfmc);
end;

procedure TFm_yppd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.q_comm.close;
  dm.q_use.close;
end;

procedure TFm_yppd.ed_ypKeyPress(Sender: TObject; var Key: Char);
begin
  if key<> #13 then exit;
  with dm.q_comm do
  begin
    close;
    sql.Clear;
    sql.add('select a.ypbh,a.ym,a.gg,b.jx,a.hsb,ylsj=round(a.ylsj/a.hsb,4),a.zxdw,a.produce,a.jldw');
    sql.add('from xyzb a,ypjx b where a.jxbm =b.jxbm and (a.pym like :pym or a.ypbh=:ypbh) ');
    sql.add('and a.ylsj>0 and ifzy=1');
    //sql.add('and storetype=:storetype');
    parambyname('pym').asstring:='%'+ed_yp.text +'%';
    parambyname('ypbh').asstring:=ed_yp.text ;
    //parambyname('storetype').asstring:=cmbx_storetype.Text;
    open;
    case recordcount of
    0:begin
        application.messagebox('没有此种药品或输入拼音码错误！','提示信息',mb_iconerror);
        exit;
      end;
    1:DBGrid1DblClick(Sender)
    else
    begin
      DBGrid1.visible:=true; dbgrid1.setfocus;
    end;
    end;
  end;
end;

procedure TFm_yppd.dbgrid1DblClick(Sender: TObject);
begin
 ed_yp.text:=dm.q_comm['ym'];
 ed_ypbh.text:=dm.q_comm['ypbh'];
 Ed_ylsj.text:=dm.q_comm.fieldbyname('ylsj').asstring;
 edt_produce.Text:=dm.q_comm.fieldbyname('produce').asstring;
 edt_zxdw.Text:=dm.q_comm.fieldbyname('zxdw').asstring;
 edt_zxdw1.Text:=dm.q_comm.fieldbyname('zxdw').asstring;
 edt_zxdw2.Text:=dm.q_comm.fieldbyname('zxdw').asstring;
 edt_jldw.Text:=dm.q_comm.fieldbyname('jldw').asstring;
 edt_hsb.Text:=dm.q_comm.fieldbyname('hsb').asstring;
 edt_zxdw_sl.Text:='0';
 edt_gg.Text:=dm.q_comm.fieldbyname('gg').asstring;

 with dm.q_comm1 do
 begin
    close;
    sql.clear;
    sql.Add('select kcl from nkyc where ksbm=:ksbm and ypbh=:ypbh');
    parambyname('ksbm').assmallint:=strtoint(copy(cbb_yfbm.Text,1,pos(':',cbb_yfbm.Text)-1));
    parambyname('ypbh').asstring:=ed_ypbh.text;
    open;
    Ed_oldkc.text:=fieldbyname('kcl').asstring;
 end;
   edt_jldw_sl.setfocus;
end;

procedure TFm_yppd.dbgrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then DBGrid1DblClick(Sender);
end;

procedure TFm_yppd.ed_xkclExit(Sender: TObject);
begin
 if length(trim(ed_ypbh.text))<>0 then
  begin
  if ed_xkcl.gettextlen=0 then
  begin
    application.messagebox('您必须输入数值！','提示信息',mb_iconerror);
    BBtn_add.Enabled:=false;
    ed_xkcl.SetFocus;
    exit;
  end;
  end
  else  ed_yp.SetFocus;
end;

procedure TFm_yppd.ed_xkclKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then com_kind.SetFocus ;
end;

procedure TFm_yppd.ed_ypEnter(Sender: TObject);
begin
  dm.q_comm.close;
  ed_yp.Clear;
  Ed_ylsj.clear;
  ed_xkcl.Clear;
  ed_ypbh.clear;
  ed_oldkc.Clear;
  edt_produce.clear;
  edt_jldw_sl.Clear;
  edt_jldw.Clear;
  edt_zxdw_sl.Clear;
  edt_zxdw.Clear;
  edt_zxdw1.Clear;
  edt_zxdw2.Clear;
  edt_hsb.Clear;
  edt_gg.Clear;
end;

procedure TFm_yppd.dbgrid1Exit(Sender: TObject);
begin
  dbgrid1.visible:=false;
end;

procedure TFm_yppd.Com_kindKeyPress(Sender: TObject; var Key: Char);
begin
 If key=#13 Then
  begin
   BBtn_add.enabled:=true;
   BBtn_add.setfocus;
  end;
end;

procedure TFm_yppd.bbtn_search2Click(Sender: TObject);
begin
 with dm.Q_public do
 begin
   close;
   sql.clear;
   sql.Add('select a.dh,a.ypbh,b.ym,b.gg,a.source,a.change,dest=isnull(a.source,0)+isnull(a.change,0),b.zxdw,a.lsj,a.[time],');
   sql.Add('je=round(a.lsj*a.change,2),a.pfj,pfjje=round(a.pfj*a.change,2),b.lb,a.opid,a.memo');
   sql.add('from zy_yf_pdb a,xyzb b');
   sql.add('where yfbm=:yfbm and a.ypbh=b.ypbh');
   sql.add('and datediff(day,time,:datefrom)<=0 and  datediff(day,time,:dateto)>=0 ');
   If Trim(Ed_yznr1.text)<>'' Then
      begin
        sql.add('and a.ypbh=:ypbh');
        parambyname('ypbh').asstring := Ed_yznr1.text;
      end;
   parambyname('yfbm').assmallint:=strtoint(copy(cbb_yfbm1.Text,1,pos(':',cbb_yfbm1.Text)-1));
   If Com_kind1.itemindex<>0 then
     begin
       sql.add('and memo=:memo');
       parambyname('memo').asstring:=Com_kind1.text;
     end;
   parambyname('datefrom').asdate := datefrom3.Date;
   parambyname('dateto').asdate := dateto3.Date;
   sql.add('order by a.xh');
   open;
   //DBGrid4.DataSource :=dm.DS_public;
   //DBGrid4.Columns[0].Footer.valuetype:=fvtStaticText;
   //DBGrid4.Columns[0].Footer.Value := '合计';
   //DBGrid4.Columns[5].Footer.valuetype:=fvtSum;
   //DBGrid4.Columns[9].Footer.valuetype:=fvtSum;
   end;
end;

procedure TFm_yppd.Ed_yznr1KeyPress(Sender: TObject; var Key: Char);
var    codelen,searchway:integer;
begin
  If key<>#13 Then Exit;
  with dm.Q_xyzb do
  begin
      Close;
      SQL.Clear;
      SQL.Add('Select a.YPBH,a.ym,a.gg,a.zxdw,YLSJ=round(a.ylsj/a.hsb,4),a.hsb,a.cfhsb,a.type,a.skintry');
      SQL.Add('from xyzb a');
      CodeLen := Ed_yznr1.GetTextLen;
      FirstAlpha := copy(Ed_yznr1.Text,1,1);
      SearchWay := 4;
      try
        FirstAlpha := FirstAlpha[1];
      except
        FirstAlpha :='';
        Searchway:=5;
      end;
      if (UpperCase(FirstAlpha) <= 'Z') and (UpperCase(FirstAlpha) >= 'A')  then
        SearchWay := 1;
      if (UpperCase(FirstAlpha)<= '9') and (UpperCase(FirstAlpha) >= '0') and (CodeLen <= 4) then
        SearchWay := 2;
      if (UpperCase(FirstAlpha)<= '9') and (UpperCase(FirstAlpha) >= '0') and (CodeLen > 4) then
        SearchWay := 3;
      case SearchWay of
      1:             //拼音码
        begin
         SQL.Add(' WHERE a.pym like :SearchCode');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr1.Text+'%';
        end;
      2:              //流水码
        begin
         SQL.Add(' WHERE a.lsm like :SearchCode');
         ParamByName('SearchCode').AsString := trim(Ed_yznr1.Text);
        end;
      3:           //药品编码
        begin
         SQL.Add(' WHERE a.ypbh like :SearchCode');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr1.Text+'%';
        end;
      4:            //药名
        begin
         SQL.Add(' WHERE a.ym like :SearchCode ');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr1.Text+'%';
        end;
      end;
     sql.Add('and a.ylsj>0  and a.ifzy=1 ');
     Open;
      if RecordCount = 1 then  DBGrid_xyzb1DblClick(sender)
      else
      if RecordCount > 1 then //多条记录时可以USE KEYBORAD OR MOUSE 定位
      begin
        DBGrid_XYZB1.Visible := True;
        DBGrid_XYZB1.SetFocus;
      end
      else  Application.MessageBox('无此编码药品或库存量不足','错误信息',mb_iconerror);
  end;
end;

procedure TFm_yppd.DBGrid_xyzb1DblClick(Sender: TObject);
begin
   Label19.caption:=dm.Q_xyzb.fieldbyname('ym').asstring+':'+dm.Q_xyzb.fieldbyname('gg').asstring;
   Ed_yznr1.text:=dm.Q_xyzb.fieldbyname('ypbh').asstring;
   bbtn_search2.SetFocus ;
end;

procedure TFm_yppd.DBGrid_xyzb1Exit(Sender: TObject);
begin
  (sender as Tdbgrid).Visible :=false;
end;

procedure TFm_yppd.DBGrid_xyzb1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_xyzb1DblClick(Sender);
end;

procedure TFm_yppd.BitBtn1Click(Sender: TObject);
begin
  if  application.messagebox('请确认本次保存的盘点内容属于同一药房，不同药房不能在一张单据上！！！','提示信息',mb_yesno+MB_DEFBUTTON2+mb_iconinformation)=idno
  then  Exit;

 with dm.q_use do
  begin
    close;
    sql.clear;
    sql.add('declare @maxdh int');
    sql.Add('select @maxdh=isnull(max(dh),0)+1 From zy_yf_pdb where dh is not null and yfbm=:yfbm');
    sql.Add('update zy_yf_pdb set dh=@maxdh where dh is null and yfbm=:yfbm');
    parambyname('yfbm').assmallint:=strtoint(copy(cbb_yfbm.Text,1,pos(':',cbb_yfbm.Text)-1));
    try
      execsql;
//      BBtn_add.tag:=0;
      bbtn_print.setfocus ;
    except
      application.messagebox(pchar('修改库存失败'),'提示信息',mb_iconerror);
      exit;
    end;
  end;
  with dm.Q_comm1 do
  begin
     close;
     sql.clear;
     sql.Add('select maxdh=isnull(max(dh),0) from zy_yf_pdb where dh is not null and yfbm=:yfbm');
     parambyname('yfbm').assmallint:=strtoint(copy(cbb_yfbm.Text,1,pos(':',cbb_yfbm.Text)-1));
     Open ;
     Ed_dh.Text:=fieldbyname('maxdh').asstring;
  end;
  
end;

procedure TFm_yppd.bbtn_printClick(Sender: TObject);
begin
  with dm.Q_comm1 do
  begin
     close;
     sql.clear;
     sql.add('select a.dh,a.ypbh,b.ym,b.gg,a.source,a.change,b.zxdw,a.lsj,je=a.Change*a.lsj,a.memo,a.time ');
     sql.add('from zy_yf_pdb a,');
     sql.add('xyzb b  where  a.ypbh=b.ypbh and dh=:dh and yfbm=:yfbm');
     sql.add('order by a.xh');
     parambyname('yfbm').assmallint:=strtoint(copy(cbb_yfbm.Text,1,pos(':',cbb_yfbm.Text)-1));
     parambyname('dh').asinteger:=strtoint(ed_dh.text);
     open;
     //frReport1.clear;
     //frReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'hsreport\盘点单.frf');
     //frReport1.ShowReport ;
  end;
end;

{procedure TFm_yppd.frReport1BeforePrint(Memo: TStringList; View: TfrView);
begin
  if view.Name='QRLab_title' then
     memo.text:=fm_main.Label_hospital.caption+'药品盘点单';
  if view.Name='QRLab_yfbm' then
  begin
     memo.text:='盘点科室：'+copy(cbb_yfbm.Text,Pos(':',cbb_yfbm.Text)+1,length(cbb_yfbm.Text)-Pos(':',cbb_yfbm.Text));
  end;
end;}

procedure TFm_yppd.edt_jldw_slKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13)  and   (trim(edt_jldw_sl.Text)<>'')  then
  begin
      edt_zxdw_sl.SetFocus;
  end;
end;

procedure TFm_yppd.edt_zxdw_slKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13)  and   (trim(edt_zxdw_sl.Text)<>'')  then
  begin
     ed_xkcl.Text:=inttostr(strtoint(edt_jldw_sl.text)*strtoint(edt_hsb.text)+strtoint(edt_zxdw_sl.text));
     ed_xkcl.SetFocus;
  end;
end;

end.
