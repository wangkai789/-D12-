unit yptj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TFm_yptj = class(TForm)
    Panel1: TPanel;
    DBGrid_XYZB: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBG_ql: TDBGrid;
    Lab_hint: TLabel;
    Label17: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label19: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel2: TPanel;
    Label12: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label13: TLabel;
    Label28: TLabel;
    Label18: TLabel;
    Ed_tjyj: TEdit;
    Ed_jj: TEdit;
    Date_tj: TDateTimePicker;
    Date_zx: TDateTimePicker;
    Ed_lsj: TEdit;
    ComboBox1: TComboBox;
    edt_medprice: TEdit;
    EdCode: TEdit;
    Ed_sccj: TEdit;
    Ed_ym: TEdit;
    Ed_gg: TEdit;
    Ed_yjj: TEdit;
    Ed_hsb: TEdit;
    Ed_jldw: TEdit;
    Ed_jx: TEdit;
    Ed_ylsj: TEdit;
    cmbx_storetype: TComboBox;
    btn_del: TBitBtn;
    BitBtn1: TBitBtn;
    Lbl_jldw: TLabel;
    edt_mzlsj: TEdit;
    Label4: TLabel;
    Label9: TLabel;
    edt_mzprice: TEdit;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    BBtn_ok: TBitBtn;
    BBtn_print: TBitBtn;
    BBtn_cancel: TBitBtn;
    btn_list: TButton;
    BBtn_quit: TBitBtn;
    Lbl_zxdw: TLabel;
    Label24: TLabel;
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_XYZBDblClick(Sender: TObject);
    procedure DBGrid_XYZBExit(Sender: TObject);
    procedure DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
    procedure BBtn_quitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Ed_tjyjKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_jjKeyPress(Sender: TObject; var Key: Char);
    procedure Date_tjKeyPress(Sender: TObject; var Key: Char);
    procedure BBtn_okClick(Sender: TObject);
    procedure BBtn_cancelClick(Sender: TObject);
    procedure EdCodeEnter(Sender: TObject);
    procedure Ed_yjjChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBtn_printClick(Sender: TObject);
    procedure Ed_lsjEnter(Sender: TObject);
    procedure Ed_lsjKeyPress(Sender: TObject; var Key: Char);
    procedure btn_delClick(Sender: TObject);
    procedure btn_listClick(Sender: TObject);
    procedure edt_mzlsjKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    fhsb:integer;
    Fyplb:integer;
    Function Delqldb(qldh:integer):Boolean;
    function SearchQldb(ypbh:string):boolean;
  public
    { Public declarations }
  end;

var
  Fm_yptj: TFm_yptj;

implementation

uses data, czydl, Factory,ypbjtzd, yptz_print, main;

{$R *.DFM}

procedure TFm_yptj.EdCodeKeyPress(Sender: TObject; var Key: Char);
begin
//  if key<>#13 then exit;
  if key=#13 then
  begin
    if DBGrid_XYZB.Visible then  DBGrid_XYZB.SetFocus;
    exit;
  end;

  with dm.Q_MedStore do
  begin
    Close;
    SQL.Clear;
    SQL.Add('exec  xyzb_cx :SearchCode,:storetype ');
    parambyname('SearchCode').AsString := '%'+EdCode.Text+'%';
    parambyname('storetype').AsString :=trim(cmbx_storetype.text);
    open;
    if not isempty then
    begin
      DBGrid_XYZB.Visible:=true;
    end;
  end
end;

procedure TFm_yptj.DBGrid_XYZBDblClick(Sender: TObject);
begin
  with dm.Q_MedStore do
  begin
    EdCode.Text := Fieldbyname('ypbh').AsString;
    Ed_ym.Text := Fieldbyname('ym').AsString;

    Ed_jldw.Text:=Fieldbyname('jldw').AsString;
    Lbl_jldw.Caption:=Ed_jldw.Text;
    Label22.Caption:=Ed_jldw.Text;
    Label24.Caption:=Ed_jldw.Text;
    Edit4.text:=Ed_jldw.Text;
    Lbl_zxdw.caption:=Fieldbyname('zxdw').AsString;
    Label20.Caption:=Lbl_zxdw.caption;
    Ed_gg.Text:=Fieldbyname('gg').AsString;
    Ed_sccj.Text:=Fieldbyname('produce').AsString;
    Ed_jx.Text:=Fieldbyname('jx').AsString;
    Ed_yjj.Text:=Fieldbyname('pfj').AsString;
    Ed_ylsj.Text:=Fieldbyname('ylsj').AsString;
    Edit3.Text:=Fieldbyname('mzylsj').AsString;
    Ed_hsb.Text:=Fieldbyname('hsb').AsString;
    Fyplb:=Fieldbyname('lb').AsInteger;
    fHSB:=Fieldbyname('hsb').asinteger;

    {case  Fyplb of
     1,3: ComboBox1.ItemIndex:=1;
     2: ComboBox1.ItemIndex:=2;
    end;}
    ComboBox1.ItemIndex:=0;

  end;
  DBGrid_XYZB.Visible:=false;
  Ed_tjyj.SetFocus;
end;

procedure TFm_yptj.DBGrid_XYZBExit(Sender: TObject);
begin
//  (sender as tdbgrid).visible:=false;
end;

procedure TFm_yptj.DBGrid_XYZBKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGrid_XYZBDblClick(sender);
end;

procedure TFm_yptj.BBtn_quitClick(Sender: TObject);
begin
  close;
end;

procedure TFm_yptj.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  edit1.text:=fm_czydl.Ed_xm.Text;
  edit2.text:=datetostr(now);
  Date_tj.Datetime:=date();
  Date_zx.Datetime:=date();
  dm.SetStoreValue(cmbx_storetype);
  DM.SetAdditionRateValue(ComboBox1);
  BBtn_cancel.Click;
end;

procedure TFm_yptj.Ed_tjyjKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  Ed_jj.SetFocus;//Ed_jj.SetFocus;
end;

procedure TFm_yptj.Ed_jjKeyPress(Sender: TObject; var Key: Char);
var  aylsj:string;
begin
   if (key=#13)   and (trim(Ed_jj.Text)<>'') then
  begin
   //Edt_ypjj.Text:=Edt_pfj.Text;
   case Fyplb of
   1,3:begin
      aylsj:=formatcurr('#.##',(strtocurr(Ed_jj.Text)*strtocurr(ComboBox1.Text)));
      //edt_medprice.text:=formatcurr('#.##',(strtocurr(Ed_jj.Text)*strtocurr(ComboBox1.Text))/fhsb);
     end;
   2:begin
       aylsj:=formatcurr('#.####',(strtocurr(Ed_jj.Text)*strtocurr(ComboBox1.Text)));
       //edt_medprice.text:=formatcurr('#.####',(strtocurr(Ed_jj.Text)*strtocurr(ComboBox1.Text))/fhsb);
      end;
   end;
     Ed_lsj.Text:=aylsj;
     edt_mzlsj.Text:=aylsj;
     Ed_lsj.SetFocus;
  end;

end;

procedure TFm_yptj.Date_tjKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  date_zx.SetFocus;
end;


procedure TFm_yptj.BBtn_okClick(Sender: TObject);
var a,b,mzlsj:currency;
begin

 if application.messagebox('是否调价？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;

  if SearchQldb(EdCode.text) then
  begin
      DBG_ql.DataSource := Dm.ds_comm ;
      PageControl1.ActivePageIndex:=1;
      application.MessageBox ('请删除不用的请领单！','信使',mb_ok);
      BBtn_ok.Enabled :=False ;
      Exit;
  end;

 { if trim(Ed_lsj.text)=trim(Ed_ylsj.text) then
  begin
    application.MessageBox ('现价于原价不能相同!','信使',mb_ok);
    exit;
  end;}


  if   trim(Ed_jj.text)='' then  a:=0 else  a:=strtocurr(trim(Ed_jj.text));
  if   trim(Ed_lsj.text)='' then  b:=0 else b:=strtocurr(trim(Ed_lsj.text));
  if   trim(edt_mzlsj.text)='' then  mzlsj:=0 else mzlsj:=strtocurr(trim(edt_mzlsj.text));

  with dm.Q_comm do
  begin
    close;
    sql.clear;
    sql.add('exec yp_tj :ypbh,:xpfj,:xlsj,:oldmzylsj,:mzlsj,:tjyj,:opid');
    PARAMBYNAME('ypbh').AsString:=trim(EdCode.text);
    PARAMBYNAME('xpfj').ASFLOAT:=a;                   //批发价
    PARAMBYNAME('xlsj').ASFLOAT:=b;                  //零售价
    PARAMBYNAME('oldmzylsj').ASFLOAT:=StrToCurr(Edit3.text);  //原门诊零售价
    PARAMBYNAME('mzlsj').ASFLOAT:=mzlsj;                  //现门诊零售价

    PARAMBYNAME('tjyj').ASSTRING:=Ed_tjyj.text;    //调价依据
    PARAMBYNAME('opid').ASinteger:=strtoint(trim(fm_czydl.Ed_bh.Text));
    try
      execsql;
      BBtn_ok.Enabled:=false;
      application.MessageBox('药品调价成功！','提示信息',mb_iconinformation);
      BBtn_cancel.Click;
    except
      application.MessageBox('药品调价失败!','错误提示',mb_iconerror);
      Exit;
    end;
  end;
 BBtn_print.SetFocus;
end;

procedure TFm_yptj.BBtn_cancelClick(Sender: TObject);
begin
  Ed_ym.Clear;
  Ed_jldw.Clear;
  Ed_jx.Clear;
  Ed_gg.Clear;
  Lbl_zxdw.caption:='';
  Ed_yjj.Clear;
  Ed_ylsj.Clear;
  Ed_hsb.Clear;
  EdCode.Clear;
  Ed_lsj.Clear;
  edt_medprice.Clear;
  Ed_jj.Clear;
  Ed_sccj.Clear;
  Ed_tjyj.Clear;
  fhsb:=0;
  Fyplb:=0;
  Lbl_jldw.Caption:='';
  edt_mzprice.Clear;
  Label22.Caption:='';
  Label20.Caption:='';
  Label24.Caption:='';
  Edit3.Clear;
  Edit4.Clear;
  edt_mzlsj.Clear;

  EdCode.SetFocus;
end;

procedure TFm_yptj.EdCodeEnter(Sender: TObject);
begin
  BBtn_cancel.Click;
  BBtn_ok.Enabled:=false;
end;

procedure TFm_yptj.Ed_yjjChange(Sender: TObject);
begin
  // Ed_jj.Text:=Ed_yjj.Text;
end;

procedure TFm_yptj.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFm_yptj.BBtn_printClick(Sender: TObject);
begin
  with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('select  药名=b.ym, 规格=b.gg,剂型=c.jx,计量单位=b.jldw,原零售价=a.ylsj,现零售价=a.xlsj');
    sql.add(',药库库存=a.yk_store,差额=ROUND(isnull(a.yk_store,0)*(a.xlsj-a.ylsj),4),');
    sql.add('住院库存=isnull(a.zy_store,0),住院差额=ROUND(isnull(a.zy_store,0)*(a.xlsj-a.ylsj)/B.HSB,2),门诊库存=isnull(mz_store,0),门诊差额=ROUND(isnull(a.mz_store,0)*(a.xlsj-a.ylsj)/B.HSB,4),');
    sql.add('急诊库存=isnull(jz_store,0),急诊差额=ROUND(isnull(a.jz_store,0)*(a.xlsj-a.ylsj)/B.HSB,4),部门库存=isnull(bm_store,0),部门差额=ROUND(isnull(a.bm_store,0)*(a.xlsj-a.ylsj)/B.HSB,4)');
    sql.add(' from xytjxb a,xyzb b,ypjx c where a.tjrq>=:datefrom and a.tjrq<=:dateto AND a.ypbh=b.ypbh AND b.jxbm=c.jxbm AND B.HSB>0');
    sql.add('and  b.storetype=:storetype');
    parambyname('datefrom').asdatetime:=date;
    parambyname('dateto').asdatetime:=date+1;
    parambyname('storetype').asstring:=trim(cmbx_storetype.text);
    open;
  end;
  f_ypbjtzd.qr_qsdate.caption:=datetostr(date);
  f_ypbjtzd.qr_zzdate.caption:=datetostr(date);
  f_ypbjtzd.QuickRep1.preview;
end;

procedure TFm_yptj.Ed_lsjEnter(Sender: TObject);
begin
  BBtn_ok.Enabled:=true;
end;

procedure TFm_yptj.Ed_lsjKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13)  and  (trim(Ed_lsj.Text)<>'') then
  begin
     edt_medprice.text:=formatcurr('#.##',(strtocurr(Ed_lsj.Text))/fhsb);
     edt_mzprice.text:=edt_medprice.text;
     edt_mzlsj.SetFocus;
  end;
end;

function TFm_yptj.Delqldb(qldh: integer): Boolean;
begin
   with  dm.Q_qldb do
   begin
     Close;
     sql.Clear;
     SQL.Add('delete qldb where qldh=:qldh');
     SQL.Add('delete qlyf where qldh=:qldh');
     ParamByName('qldh').AsInteger:=qldh;
     try
       ExecSQL;
     except
       on E: Exception do
        begin
          application.MessageBox(PChar(e.Message),'错误信息',mb_iconerror);
          exit;
       end;
     end;
   end;
end;

function TFm_yptj.SearchQldb(ypbh: string): boolean;
begin
  Result:=False;
  with Dm.Q_comm do
  begin
    Close;
    Sql.clear;
    Sql.add('Select a.qldh,c.ksmc,a.qlr,a.qlrq,b.qll,b.sfl,b.lsj,a.fyr,a.fyrq,a.ckh');
    Sql.add('From qlyf a,qldb b,jgxx c');
    Sql.add('Where a.qldh=b.qldh and a.yfbm=c.ksbm and a.ckh is not null and a.fyrq is not null and a.yfqr is null');
    Sql.add('and b.ypbh=:ypbh');
    Parambyname('ypbh').AsString:=Trim(ypbh);
    Open;
    if  IsEmpty then exit;
   end;
   Result:=true;
end;

procedure TFm_yptj.btn_delClick(Sender: TObject);
begin
 if  DBG_ql.DataSource.DataSet.IsEmpty then Exit;
  if application.MessageBox(pchar('是否删除？'),'提示',mb_yesno+MB_ICONQUESTION)=IDYES then
  begin
    Delqldb(DBG_ql.DataSource.DataSet.fieldbyname('qldh').AsInteger);
    SearchQldb(EdCode.Text);
  end;
end;

procedure TFm_yptj.btn_listClick(Sender: TObject);
begin
   Fm_main.N24Click(sender);
end;

procedure TFm_yptj.edt_mzlsjKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13)  and  (trim(edt_mzlsj.Text)<>'') then
  begin
     edt_mzprice.text:=formatcurr('#.##',(strtocurr(edt_mzlsj.Text))/fhsb);
     BBtn_ok.SetFocus;
  end;
end;

procedure TFm_yptj.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then Ed_tjyj.SetFocus;
end;

end.
