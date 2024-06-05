unit zyfy_cf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Mask, DBCtrls, StdCtrls, ExtCtrls, Buttons, ComCtrls,
  frxClass, frxDBSet;

type
  Tfm_zyfy_cf = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGridCFDH: TDBGrid;
    BtnOKMed: TBitBtn;
    BtnFrensh: TBitBtn;
    BitBtnExit: TBitBtn;
    com_bq: TComboBox;
    ComboBox1: TComboBox;
    bbtn_print: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    RBut_nocy: TRadioButton;
    RBut_cy: TRadioButton;
    DBGridRecipeDetail: TDBGrid;
    Label21: TLabel;
    cmbx_storetype: TComboBox;
    Label4: TLabel;
    ed_name: TEdit;
    ed_cfdh: TEdit;
    ed_zyh: TEdit;
    frxReport1: TfrxReport;
    btn_design: TButton;
    frxDBDataset1: TfrxDBDataset;
    procedure BitBtnExitClick(Sender: TObject);
    procedure BtnOKMedClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnFrenshClick(Sender: TObject);
    procedure com_bqChange(Sender: TObject);
    procedure bbtn_printClick(Sender: TObject);
    procedure DBGridRecipeDetailDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure RBut_nocyClick(Sender: TObject);
    procedure RBut_cyClick(Sender: TObject);
    procedure ed_zyhKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridCFDHCellClick(Column: TColumn);
    procedure com_bqEnter(Sender: TObject);
    procedure Ed_zyhEnter(Sender: TObject);
    procedure DBGridCFDHKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCFDHKeyPress(Sender: TObject; var Key: Char);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure btn_designClick(Sender: TObject);
  private
    { Private declarations }
    FHLDY:string;
    FYF:string;
    Ffyr:string;
    Froom:string;
    Fbyxm:string;
    FXb:string;
    Fnl:string;
    Fifcz:string;
    Fym:string;
    Fgg:string;
    Fmryl:string;
    Fmcsl:string;
    fzxdw:string;
    fcfzxdw:string;
    ffrequency:string;
    Fcfrq:String;
    Fxh:String;
    Ffyrq:string;
    FprintType:string;
    Fcfdh:string;
    FNurseUnit:string;
    Fcflb:string;
    Fzyh:string;
    Fdatefrom:string;
    Fdateto:string;
    Fid:string;
    Fstore:integer;
    Fbagcount:currency;
    Fabc:string;
    Fguid:string;
    Fusedate:string;
    Fdw:string;
    Fhospital_name:string;
    procedure init();
    procedure SearchMed(cfdh:integer);
    procedure SearchCMed(cfdh:integer);

  public
    { Public declarations }
  end;

var
  fm_zyfy_cf: Tfm_zyfy_cf;

implementation
uses Data, czydl,Factory,classlib, searchzyh, design, main;
{$R *.DFM}

procedure Tfm_zyfy_cf.init();
begin
  with dm.Qry_fy do
  begin
    close;
    sql.Clear;
    sql.add('exec zy_fy_cxcf  :ksbm ,:zyh,:ifxy,:flag,:yfbm,:storetype');
    parambyname('ksbm').assmallint:=strtoint(ComboBox1.text);
    parambyname('zyh').AsInteger:=strtointdef(ed_zyh.text,0);
    if RBut_nocy.Checked then
      parambyname('ifxy').assmallint:=1
    else parambyname('ifxy').assmallint:=2;
    parambyname('flag').asboolean:=false;
    parambyname('yfbm').asinteger:=sysinfo.ksbm;
    parambyname('storetype').asstring:=trim(cmbx_storetype.text);
    Open;
    if dm.Qry_fy.recordcount>0  then
       BtnOKMed.Enabled :=true
    Else
       BtnOKMed.Enabled :=False ;
  end;
    DBGridCFDH.DataSource:=dm.ds_fy ;
    DBGridCFDHCellClick(DBGridCFDH.Columns[0]) ;


 {select b.ym,a.mcsl,b.gg,c.zyh,c.byxm,a.cfdh,a.rcs,e.memo
 from cfyb a ,xyzb b, byqk c,cfdb d,zy_yzd_flbm e
 where a.ypbh = b.ypbh and c.zyh=d.zyh and d.cfdh=a.cfdh
 and a.yf=e.bh and  a.cfdh = :cfdh



  if not RBut_nocy.Checked then
  begin
    dm.Q_zyd.close;
    dm.Q_zyd.DataSource:=  dm.ds_fy;
    dm.Q_zyd.open;
  end;}

  DBGridCFDH.SetFocus ;   
end;

procedure Tfm_zyfy_cf.BitBtnExitClick(Sender: TObject);
begin
  dm.Q_comm.Close;
  Close;
end;

procedure Tfm_zyfy_cf.BtnOKMedClick(Sender: TObject);
begin
  if trim(ed_name.text)='' then exit ;
  if trim(ed_cfdh.text)='' then exit ;

  BtnOKMed.Enabled:=false;
  bbtn_print.Enabled:= not BtnOKMed.Enabled;
  with DM.Q_comm do
  begin
    Close;
    sql.Clear;
    sql.Add('exec zy_yffy_acf  :fyr,:cfdh,:ksbm ');
    ParamByName('cfdh').AsInteger := dm.Qry_fy['cfdh'];
    ParamByName('fyr').AsInteger :=strtoint(trim(Fm_czydl.Ed_bh.text));
    self.Tag:=dm.Qry_fy['cfdh'];
    ParamByName('ksbm').Assmallint:=sysinfo.Ksbm ;
    try
      ExecSQL;
      bbtn_printClick(bbtn_print);
      Application.MessageBox('发药成功','提示信息',MB_ICONINFORMATION);
    except
      on E: Exception do
      begin
         application.MessageBox(pchar('处方确认时出现错误:'+e.Message),'错误信息',16);
      end;
    end;
  end;
  init();
end;

procedure Tfm_zyfy_cf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm.Qry_fy.close;
  dm.Q_comm.close;
  dm.Q_public1.close;
  DBGridCFDH.DataSource:=nil;
  DBGridRecipeDetail.DataSource:=nil;

end;

procedure Tfm_zyfy_cf.FormShow(Sender: TObject);
begin
  with dm.q_comm do
    begin
      close;
      sql.clear;
      sql.Add('select ksbm,ksmc from jgxx where ifzy=1 and lbd in (2,3) order by ksbm');//住院药房
      try
        open;
      except
        exit;
      end;
      if recordcount<1 then exit;
         com_bq.Clear;
         ComboBox1.Clear;
         first;
      while not eof do
        begin
          com_bq.Items.Add(fieldbyname('ksmc').asstring);
          ComboBox1.Items.Add(inttostr(fieldbyname('ksbm').asinteger));
          next;
        end;
    end;
  com_bq.ItemIndex:=0;
  ComboBox1.ItemIndex:=0;
  dm.SetStoreValue(cmbx_storetype);
  ed_zyh.Clear;
  ed_name.clear ;
  ed_cfdh.Clear ;
end;

procedure Tfm_zyfy_cf.BtnFrenshClick(Sender: TObject);
begin
   init();
end;

procedure Tfm_zyfy_cf.com_bqChange(Sender: TObject);
begin
  ComboBox1.ItemIndex:=com_bq.ItemIndex;
  init();
end;

procedure Tfm_zyfy_cf.bbtn_printClick(Sender: TObject);
var acfdh,ayplb:integer;
    AReportName:string;
begin
  if RBut_nocy.Checked then
  begin
    SearchMed(strtoint(ed_cfdh.text));
    AReportName:='\report\住院处方发药单.fr3';
  end;
  //--2021.03.15 wk 中药发药单
  if RBut_cy.Checked   then
  begin
    SearchCMed(strtoint(ed_cfdh.text));
    AReportName:='\report\中药摆药单.fr3'
  end;

  Fyf:='';
  Fhospital_name:=Fm_main.Label_hospital.caption;
  Ffyrq:=datetimetostr(now());
  FprintType:='发药打印';
  Ffyr:=fm_czydl.Ed_xm.Text;
  frxReport1.PrintOptions.ShowDialog:=false;
  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + AReportName);
  frxReport1.PrepareReport;
  case Sysinfo.InPatRipPrint of
  0:exit;
  1:frxReport1.Print;
  2:frxReport1.ShowReport();
  end;

{  else
      begin
         with dm.Q_zyd do
         begin
           close;
           parambyname('cfdh').asinteger:=strtoint(ed_cfdh.text);
           open;
         end;
         bbtn_print.Enabled:=false;
         if RBut_cy.Checked then BtnOKMed.Enabled:=true;
         qr_zyd.QRLabel13.Caption :='科室名称 :'+trim(com_bq.text);
         qr_zyd.QRLabel10.Caption :='药品数 :'+inttostr(dm.Q_zyd.RecordCount);
         qr_zyd.QRLabel19.Caption :='';
         qr_zyd.print;
         qr_zyd.preview;
      end;}
end;

procedure Tfm_zyfy_cf.DBGridRecipeDetailDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var i:integer;
begin
    for i:=0 to DBGridRecipeDetail.Columns.Count -1 do
      begin
        DBGridRecipeDetail.Columns[i].Title.Alignment:=tacenter;
      end;

    if dm.Q_public1.FieldByName('zlbm').asinteger>1 then
      begin
        DBGridRecipeDetail.Canvas.Brush.Color :=clred;
        DBGridRecipeDetail.DefaultDrawColumnCell(rect,datacol,column,state);
      end;
      DBGridRecipeDetail.Columns[2].Color:=clred;
end;

procedure Tfm_zyfy_cf.RBut_nocyClick(Sender: TObject);
begin
  BtnFrensh.Click;
end;

procedure Tfm_zyfy_cf.RBut_cyClick(Sender: TObject);
begin
  BtnFrensh.Click;
end;

procedure Tfm_zyfy_cf.ed_zyhKeyPress(Sender: TObject; var Key: Char);
begin
  if key<>#13 then exit;
  if (length(ed_zyh.text)=0) then
  begin
     fm_searchzyh.tag:=8 ;
     fm_searchzyh.showmodal;
     ed_zyh.text:=inttostr(dm.sys_zyh) ;
  end ;

  with dm.Q_ksby do
  begin
    close;
    sql.Clear;
    SQL.Add('select  byxm,xb,ksbm,ksmc,sfbm,sfzl,bch,rysj,zyh,nl,managedoctor');
    SQL.Add('from zy_byinfo');
    SQL.Add('where  zyh=:zyh and cysj is null');
    ParamByName('zyh').Asinteger:=strtoint(Ed_zyh.text);
    open;
  end;
  if dm.Q_ksby.IsEmpty then
  begin
    application.MessageBox('查无此人，或已经出院','错误提示',mb_iconstop);
    exit;
  end ;
  ed_name.Text:=dm.Q_ksby.fieldbyname('byxm').AsString ;

 init();
end;

procedure Tfm_zyfy_cf.DBGridCFDHCellClick(Column: TColumn);
begin
  if DBGridCFDH.DataSource.DataSet.RecordCount =0 then
  begin
    DBGridRecipeDetail.DataSource:=nil ;
    Exit ;
  end;
  ed_name.Text:=DBGridCFDH.DataSource.DataSet.fieldbyname('name').AsString ;
  ed_cfdh.Text:=DBGridCFDH.DataSource.DataSet.fieldbyname('cfdh').AsString ;
  with dm.Q_public1 do
  begin
    close;
    sql.Clear;
    if RBut_nocy.Checked then
      sql.add('Select 药名=b.ym,规格=b.gg,总数量=a.mryl, ')
    else
      sql.add('Select 药名=b.ym,每副数量=a.mryl , 日副数=a.rcs ,--总数量=a.mryl, ');

      SQL.Add('单位=b.zxdw,全额=a.qe,编码=b.ypbh,厂家=produce,b.zlbm');
      SQL.Add('from cfyb a (nolock) ,xyzb b (nolock)');
      SQL.Add('where a.ypbh = b.ypbh and a.cfdh = :cfdh');
      ParamByName('cfdh').AsInteger :=StrToInt(ed_cfdh.Text) ;
      open;
      DBGridRecipeDetail.DataSource:= dm.ds_public1;
      DBGridRecipeDetail.Columns[0].Width := 210;
      DBGridRecipeDetail.Columns[1].Width := 200;
      DBGridRecipeDetail.Columns[2].Width := 60;
      DBGridRecipeDetail.Columns[3].Width := 60;
      DBGridRecipeDetail.Columns[4].Width := 60;
      DBGridRecipeDetail.Columns[5].Width := 80;
      DBGridRecipeDetail.Columns[6].Width := 210;
  end;
end;

procedure Tfm_zyfy_cf.com_bqEnter(Sender: TObject);
begin
 Ed_zyh.Clear;
end;

procedure Tfm_zyfy_cf.Ed_zyhEnter(Sender: TObject);
begin
  ed_name.Clear ;
  ed_cfdh.Clear ;
  DBGridCFDH.DataSource:=nil ;
  DBGridRecipeDetail.DataSource:=nil ;
end;

procedure Tfm_zyfy_cf.DBGridCFDHKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key=33) or (key=34) or (key=38) or (key=40) then
   begin
     DBGridCFDHCellClick(DBGridCFDH.Columns[0]);
   end;
end;

procedure Tfm_zyfy_cf.DBGridCFDHKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then DBGridCFDHCellClick(DBGridCFDH.Columns[0]);
end;

procedure Tfm_zyfy_cf.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
    if  VarName='hldy'    then value:=FHLDY;
    if  VarName='yf'      then value:=FYF;
    if  VarName='fyr'     then value:=Ffyr;
    if  VarName='fyrq'     then value:=Ffyrq;
    if  varname='room' then value:=Froom;

    if  varname='byxm' then value:=Fbyxm;
    if  varname='xb'   then value:=FXb;
    if  varname='nl'   then value:=Fnl;
    if  varname='ifcz' then value:=Fifcz;
    if  varname='ym'   then value:=Fym;
    if  varname='gg'   then value:=Fgg;
    if  varname='mryl' then value:=Fmryl;
    if  varname='mcsl' then value:=Fmcsl;
    if  varname='zxdw' then value:=fzxdw;
    if  varname='cfzxdw' then value:=fcfzxdw;
    if  varname='frequency' then value:=ffrequency;
    if  varname='cfrq' then value:=Fcfrq;
    if  varname='xh' then value:=Fxh;
    if  varname='cfdh' then value:=Fcfdh;
    if  varname='printType' then value:=FprintType;
    if  varname='NurseUnit' then value:=FNurseUnit;
    if  varname='cflb' then value:=Fcflb;
    if  varname='zyh' then value:=Fzyh;
    if  varname='datefrom' then value:=Fdatefrom;
    if  varname='dateto' then value:=Fdateto;
    if  varname='id' then value:=Fid;
    if  varname='store' then value:=Fstore;
    if  varname='bagcount' then value:=(Fbagcount);
    if  varname='abc' then value:=Fabc;
    if  varname='guid' then value:=Fguid;
    if  varname='usedate' then value:=Fusedate;
    if  varname='dw'      then value:=Fdw;
    if  varname='hospital_name' then value:=Fhospital_name;
end;

procedure Tfm_zyfy_cf.btn_designClick(Sender: TObject);
begin
   frxReport1.Clear ;
   frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '\report\住院处方发药单.fr3');
   frxReport1.DesignReport;
end;

procedure Tfm_zyfy_cf.SearchCMed(cfdh: integer);
begin
  with dm.Q_mm  do
  begin
    close;
    sql.clear;
    sql.add('exec Medstore_SearchCMed_Cfdh  :cfdh');
    ParamByName('cfdh').AsInteger:=cfdh;
    try
      open;
      frxDBDataset1.DataSet :=dm.Q_mm;
      FHLDY:=fieldbyname('ksmc').AsString;
      FXH:=fieldbyname('sendno').AsString;
    except
        on E: Exception do
        begin
            application.MessageBox(pchar('查询中草药处方错误！:'+e.Message),'错误信息',16);
           exit;
        end;
    end;

  end;
end;

procedure Tfm_zyfy_cf.SearchMed(cfdh: integer);
begin
  with dm.Q_mm do
  begin
    close;
    sql.clear;
    sql.add('select d.zyh,d.byxm,d.ksmc,d.xb,d.nl,c.ypbh,c.ym,');
    sql.add('CASE a.ifcz');
    sql.add('WHEN 0 THEN rtrim(ltrim(c.ym))+''(临)''');
    sql.add('WHEN 1 THEN rtrim(ltrim(c.ym))+''(长)''');
    sql.add('ELSE rtrim(ltrim(c.ym)) END AS ym ,');
    sql.add('c.gg,mryl=sum(b.mryl),c.zxdw,c.produce,a.ifcz,e.room,a.sendno,b.frequency,b.mcsl,c.cfzxdw');
    sql.add('from cfdb a,cfyb b ,xyzb  c,zy_byinfo d,zy_sickroom e');
    sql.add('where a.cfdh=b.cfdh and b.ypbh=c.ypbh and a.zyh=d.zyh');
    sql.add('and a.cfdh=:cfdh  and d.bch=e.roomid');
    sql.add('group by d.zyh,d.byxm,d.ksmc,d.xb,d.nl,c.ypbh,c.ym,c.gg,c.zxdw,c.produce,a.ifcz,e.room,a.sendno,b.frequency,b.mcsl,c.cfzxdw');
    ParamByName('cfdh').AsInteger:=cfdh;
    open;
    frxDBDataset1.DataSet :=dm.Q_mm ;
    FHLDY:=fieldbyname('ksmc').AsString;
    FXH:=fieldbyname('sendno').AsString;
  end;
end;

end.
