unit ypsearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,Excel97,
  OleServer,comobj, FR_DSet, FR_DBSet, FR_Class, DBGridEh,
  frameMedbank, GridsEh,  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxDropDownEdit,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,cxCheckBox,cxExportGrid4Link,
  cxGridDBTableView, cxGrid;

type
  TFm_ypsearch = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    dad: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    datefrom: TDateTimePicker;
    dateto: TDateTimePicker;
    btn_cx: TBitBtn;
    btn_print: TBitBtn;
    bbtn_out: TBitBtn;
    SaveDialog1: TSaveDialog;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    datefrom_rk: TDateTimePicker;
    dateto_rk: TDateTimePicker;
    bbtn_rk: TBitBtn;
    BitBtn3: TBitBtn;
    TabSheet4: TTabSheet;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    datefrom4: TDateTimePicker;
    dateto4: TDateTimePicker;
    BitBtn4: TBitBtn;
    DBG_jxc: TDBGrid;
    bbtn_dataout4: TBitBtn;
    Bbtn_statics_ks: TBitBtn;
    DBGrid_xzghdw: TDBGridEh;
    DBGrid_xyzb3: TDBGrid;
    Ed_yznr: TEdit;
    lab_ck: TLabel;
    Ed_yznr_rk: TEdit;
    DBG_rk: TDBGrid;
    lab_rk: TLabel;
    DBG_kc: TDBGrid;
    com_order: TComboBox;
    Label9: TLabel;
    lab_ks: TLabel;
    Ed_ksmc: TEdit;
    DBGrid_ks: TDBGrid;
    Label10: TLabel;
    Ed_fph: TEdit;
    dbgrdh_kclsxrq: TDBGridEh;
    DBG_rktj: TDBGridEh;
    Label7: TLabel;
    Label11: TLabel;
    TabSheet5: TTabSheet;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    lab_tj: TLabel;
    datefrom_tj: TDateTimePicker;
    dateto_tj: TDateTimePicker;
    bbtn_tj: TBitBtn;
    BitBtn2: TBitBtn;
    Ed_yznr_tj: TEdit;
    rg_type: TRadioGroup;
    DBG_tj: TDBGridEh;
    DBG_yznr_tj: TDBGrid;
    StatusBar1: TStatusBar;
    TabSheet6: TTabSheet;
    GroupBox4: TGroupBox;
    Label15: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    bbtn_search2: TBitBtn;
    datefrom3: TDateTimePicker;
    dateto3: TDateTimePicker;
    RadioButton1: TRadioButton;
    Rad_xy: TRadioButton;
    Rad_cy: TRadioButton;
    Rad_zcy: TRadioButton;
    Ed_yznr1: TEdit;
    BitBtn1: TBitBtn;
    DBGrid4: TDBGridEh;
    DBGrid_xyzb1: TDBGrid;
    bbtn_out_rk: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    cmbx_storetype: TComboBox;
    Label17: TLabel;
    Label20: TLabel;
    cmbx_storetype1: TComboBox;
    Label21: TLabel;
    cmbx_storetype2: TComboBox;
    Label22: TLabel;
    cmbx_storetype4: TComboBox;
    Label24: TLabel;
    cmbx_storetype5: TComboBox;
    BitBtn6: TBitBtn;
    btn_exit: TBitBtn;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    lab_kc: TLabel;
    Label16: TLabel;
    Label23: TLabel;
    RadioGroup1: TRadioGroup;
    bbtn_kc: TBitBtn;
    bitprint: TBitBtn;
    bbtn_out1: TBitBtn;
    Ed_yznr_kc: TEdit;
    Ed_max: TEdit;
    BitBtn7: TBitBtn;
    cmbx_storetype3: TComboBox;
    TabSheet7: TTabSheet;
    GroupBox6: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    datefrom_rkdtj: TDateTimePicker;
    dateto_rkdtj: TDateTimePicker;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    RadioGroup3: TRadioGroup;
    BitBtn12: TBitBtn;
    ts1: TTabSheet;
    GroupBox7: TGroupBox;
    Label28: TLabel;
    btn_sell: TBitBtn;
    datefrom_sell: TDateTimePicker;
    dateto_sell: TDateTimePicker;
    BitBtn14: TBitBtn;
    Label29: TLabel;
    rg_type_sell: TRadioGroup;
    rg_type_rk: TRadioGroup;
    rg_type_ck: TRadioGroup;
    rg_kind_sell: TRadioGroup;
    Bbtn_statics_yp: TBitBtn;
    ts2: TTabSheet;
    frm_medbnk1: TFrame_Medbank;
    DBGrid6: TDBGridEh;
    BitBtn13: TBitBtn;
    ts3: TTabSheet;
    grp1: TGroupBox;
    DBG_accord: TDBGridEh;
    pnl1: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    datefrom_accord: TDateTimePicker;
    dateto_accord: TDateTimePicker;
    timefrom_accord: TDateTimePicker;
    timeto_accord: TDateTimePicker;
    bbtn_search_accord: TBitBtn;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Label34: TLabel;
    lab_kc_accord: TLabel;
    Label27: TLabel;
    Ed_yznr_accord: TEdit;
    BitBtn15: TBitBtn;
    chk_kcl_accord: TCheckBox;
    bbtn_dataout_accord: TBitBtn;
    cbb_checklb_accord: TComboBox;
    bbtn_detailsearch_accord: TBitBtn;
    DBG_kcl_accord: TDBGridEh;
    DBGrid_xyzb_accord: TDBGrid;
    Label30: TLabel;
    cmbx_ckkind: TComboBox;
    cxgrd_data: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvw_detail: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    procedure btn_cxClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbtn_outClick(Sender: TObject);
    procedure bbtn_kcClick(Sender: TObject);
    procedure bitprintClick(Sender: TObject);
    procedure bbtn_out1Click(Sender: TObject);
    procedure bbtn_rkClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure bbtn_dataout4Click(Sender: TObject);
    procedure Bbtn_statics_ksClick(Sender: TObject);
    procedure Ed_yznrKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_xyzb3DblClick(Sender: TObject);
    procedure DBGrid_xyzb3Exit(Sender: TObject);
    procedure DBGrid_xyzb3KeyPress(Sender: TObject; var Key: Char);
    procedure Ed_yznr_rkKeyPress(Sender: TObject; var Key: Char);
    procedure DBG_rkDblClick(Sender: TObject);
    procedure DBG_rkExit(Sender: TObject);
    procedure DBG_rkKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_yznr_kcKeyPress(Sender: TObject; var Key: Char);
    procedure DBG_kcDblClick(Sender: TObject);
    procedure DBG_kcExit(Sender: TObject);
    procedure DBG_kcKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_ksmcEnter(Sender: TObject);
    procedure Ed_ksmcKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_ksDblClick(Sender: TObject);
    procedure DBGrid_ksColExit(Sender: TObject);
    procedure DBGrid_ksKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_ksExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbtn_tjClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBG_yznr_tjExit(Sender: TObject);
    procedure DBG_yznr_tjDblClick(Sender: TObject);
    procedure DBG_yznr_tjKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_yznr_tjKeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Change(Sender: TObject);
    procedure bbtn_search2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid_xyzb1DblClick(Sender: TObject);
    procedure DBGrid_xyzb1Exit(Sender: TObject);
    procedure DBGrid_xyzb1KeyPress(Sender: TObject; var Key: Char);
    procedure Ed_yznr1KeyPress(Sender: TObject; var Key: Char);
    procedure bbtn_out_rkClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBG_rktjDblClick(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure btn_sellClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure Bbtn_statics_ypClick(Sender: TObject);
    procedure bbtn_search_accordClick(Sender: TObject);
    procedure DBG_accordDblClick(Sender: TObject);
    procedure DBG_accordMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bbtn_detailsearch_accordClick(Sender: TObject);
    procedure bbtn_dataout_accordClick(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure Ed_yznr_accordKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_xyzb_accordDblClick(Sender: TObject);
    procedure DBGrid_xyzb_accordExit(Sender: TObject);
    procedure DBGrid_xyzb_accordKeyPress(Sender: TObject; var Key: Char);
    procedure frm_medbnk1bbtn_kcClick(Sender: TObject);
  private
    { Private declarations }
    procedure getData(col:TcxGridDBColumn;val:string);
    function InitGrid(kind:byte;fn:string;cxgrdbtblvw:TcxGridDBTableView):integer;
    procedure  SeekMaster;
    procedure  SeekDetail(lb:smallint);

  public
    { Public declarations }
  end;

var
  Fm_ypsearch: TFm_ypsearch;
  year,month,day:word;
  year1,month1,day1:word;
  FirstAlpha:string[1];

implementation

uses data, czydl, qrckdtj, report_cftj, arkdcx, reportform, q_ckmlxx,
  q_rkxxdy, lsz, UGirdPara;

{$R *.dfm}
procedure TFm_ypsearch.getData(col:TcxGridDBColumn;val:string);
var
  myProperties1:TcxCustomEditProperties;
  mp1:tcxcomboboxproperties;
  mp2:TcxCheckBoxProperties;
begin
  myProperties1 :=  tcxcomboboxproperties.Create(self);
  mp1:=tcxcomboboxproperties(myProperties1);
  mp1.DropDownListStyle := lsEditFixedList;
 { with q1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT fname FROM vt_consts WHERE kind=:kind');
    sql.Add('ORDER BY ord');
    params.ParamByName('kind').AsInteger:=StrToIntDef(val,0);
    open;
    first;
    while (not eof) do
    begin
      mp1.Items.Add(fieldByName('fname').AsString);
      next;
    end;
    close;
  end;
  }
  if mp1.Items.Count<1 then
  begin
    mp1.Items.add('');
  end;
  col.PropertiesClass := tcxcomboboxproperties;
  col.Properties := mp1;

//  myProperties1:= TcxCheckBoxProperties.Create(self);
//  mp2 := TcxCheckBoxProperties(myProperties1);
//  mp2.ValueChecked:='1';
//  mp2.valueunchecked:='0';
//  col.PropertiesClass := TcxCheckBoxProperties;
//  col.Properties := mp2;
end;

function TFm_ypsearch.InitGrid(kind:byte;fn:string;cxgrdbtblvw:TcxGridDBTableView):integer;
begin
  result:=0;
  cxGridViewAddCols(fn, 1, cxgrdbtblvw, getData);
end;

procedure TFm_ypsearch.SeekDetail(lb:smallint);
begin
   with dm.q_comm do
   begin
    close;
    sql.clear;
    case lb of
    0:sql.add('select 入库单号=lsh,供货单位=inc_name,入库金额=xy_j_je,应付金额=ze,差价=plce');
    1:sql.add('select 入库单号=lsh,供货单位=inc_name,入库金额=zcy_j_je,应付金额=ze,差价=plce');
    2:sql.add('select 入库单号=lsh,供货单位=inc_name,入库金额=cy_je,应付金额=ze,差价=plce');
    3:sql.add('select 入库单号=lsh,供货单位=inc_name,入库金额=xy_j_je+cy_je+zcy_j_je,应付金额=ze,差价=plce');
    end;
    sql.add('from xykr_tzd a,ghdw b');
    sql.add('where a.ghdw=b.inc_code ');
    case lb of
    0:sql.add('and xy_j_je<>0 ');
    1:sql.add('and zcy_j_je<>0 ');
    2:sql.add('and cy_je<>0 ');
    end;
    sql.add('and datediff(day,rkdate,:datefrom)<=0 and datediff(day,rkdate,:dateto)>=0 order by lsh');
    parambyname('datefrom').asdate:=datefrom_rk.date;
    parambyname('dateto').asdate:=dateto_rk.date;
    open;
  end;
end;

procedure TFm_ypsearch.SeekMaster;
begin
  with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('select  药品种类=case b.lb when 1 then ''西药''  when 2 then ''中草药'' when 3 then ''中成药'' end,零售价=sum(rksl*lsj),进货价=sum(rksl*jhj),差价=sum(rksl*(lsj-jhj)) ');
    sql.add('from xykr a,xyzb b ');
    sql.add('where a.ypbh=b.ypbh and datediff(day,rkrq,:datefrom)<=0 and datediff(day,rkrq,:dateto)>=0');
    sql.add('group by b.lb');
    parambyname('datefrom').asdate:=datefrom_rk.date;
    parambyname('dateto').asdate:=dateto_rk.date;
    open;
    DBG_rktj.Columns[0].width:=120;
    DBG_rktj.Columns[1].width:=120;
    DBG_rktj.Columns[2].width:=120;
    DBG_rktj.Columns[3].width:=120;
  end;
end;


procedure TFm_ypsearch.btn_cxClick(Sender: TObject);
begin
  //qr_ckmlxx.qstime.caption:=datetostr(datefrom.date);
  //qr_ckmlxx.jztime.caption:=datetostr(dateto.date);
  with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('select d.ckh,d.qldh,f.ksmc,b.ypbh,a.ym,a.gg,e.jx,d.cksl,a.jldw,d.lsj,ckje=d.cksl*d.lsj,d.ckrq,d.ckr,d.lyr,b.lsh,d.rkxh,c.cm');
    sql.add('from xyzb a,xykr b,sccj c,xykchu d,ypjx e,jgxx f');
    sql.add('where a.ypbh=b.ypbh and  b.cjbm=c.cjbm and a.jxbm=e.jxbm and b.rkxh=d.rkxh and f.ksbm=d.ksbm');
    sql.add('and datediff(day,:aadate,ckrq)>=0  and  datediff(day,ckrq,:zzdate)>=0 ');
    if rg_type_ck.ItemIndex<>0 then
    begin
       sql.add('and a.lb=:lb');
       parambyname('lb').AsInteger:=rg_type_ck.ItemIndex;
    end;
    If Trim(Ed_yznr.text)<>'' Then
    begin
     sql.add('and b.ypbh=:ypbh');
     parambyname('ypbh').asstring:=Ed_yznr.text;
    end;
    If Trim(Ed_ksmc.text)<>'' Then
    begin
     sql.add('and d.ksbm=:ksbm');
     parambyname('ksbm').asstring:=Ed_ksmc.text;
    end;
    If cmbx_ckkind.ItemIndex=0 Then
       sql.add('and d.ksbm<>888')
    else
       sql.add('and d.ksbm=888');
    if trim(cmbx_storetype2.Text)<>'全部' then
    begin
     sql.add('and a.storetype=:storetype');
     parambyname('storetype').asstring := trim(cmbx_storetype2.text);
    end;
    case com_order.ItemIndex of
      0:sql.add('order by d.ckrq,d.ckh');
      1:sql.add('order by d.qldh');
      2:sql.add('order by f.ksmc');
      3:sql.add('order by b.ypbh');
    end;
{    if  RadioButton1.checked then
    begin
        sql.add('and a.lb=1');
        qr_ckmlxx.QRLabel11.caption:='出库目录信息表（按西药）';
    end;
    if  RadioButton2.checked then
    begin
      sql.add('and a.lb=2');
      qr_ckmlxx.QRLabel11.caption:='出库目录信息表（按中成药）';
    end;
    if  RadioButton3.checked then
    begin
       sql.add('and a.lb=3');
       qr_ckmlxx.QRLabel11.caption:='出库目录信息表（按中草药）';
    end;
    if  RadioButton4.checked then
    begin
       sql.add('');
       qr_ckmlxx.QRLabel11.caption:='出库目录信息表（综合统计）';
    end;}
    ParamByName('aadate').asdate:=datefrom.Date;
    ParamByName('zzdate').asdate:=dateto.Date;
    open;
    DBGrid_xzghdw.DataSource :=dm.DS_comm ;
    DBGrid_xzghdw.Columns[0].Title.caption:='出库号';
    DBGrid_xzghdw.Columns[0].width:=42;
    DBGrid_xzghdw.Columns[1].Title.caption:='请领单号';
    DBGrid_xzghdw.Columns[1].width:=54;
    DBGrid_xzghdw.Columns[2].Title.caption:='科室名称';
    DBGrid_xzghdw.Columns[2].width:=66;
    DBGrid_xzghdw.Columns[3].Title.caption:='药品编码';
    DBGrid_xzghdw.Columns[3].width:=58;
    DBGrid_xzghdw.Columns[4].Title.caption:='药名';
    DBGrid_xzghdw.Columns[4].width:=122;
    DBGrid_xzghdw.Columns[5].Title.caption:='规格';
    DBGrid_xzghdw.Columns[5].width:=78;
    DBGrid_xzghdw.Columns[6].Title.caption:='剂型';
    DBGrid_xzghdw.Columns[6].width:=40;
    DBGrid_xzghdw.Columns[7].Title.caption:='数量';
    DBGrid_xzghdw.Columns[7].width:=36;
    DBGrid_xzghdw.Columns[8].Title.caption:='药库单位';
    DBGrid_xzghdw.Columns[8].width:=36;
    DBGrid_xzghdw.Columns[9].Title.caption:='零售价';
    DBGrid_xzghdw.Columns[9].width:=55;
    DBGrid_xzghdw.Columns[10].Title.caption:='出库金额';
    DBGrid_xzghdw.Columns[10].width:=61;
    DBGrid_xzghdw.Columns[11].Title.caption:='出库日期';
    DBGrid_xzghdw.Columns[11].width:=92;
    DBGrid_xzghdw.Columns[12].Title.caption:='出库人';
    DBGrid_xzghdw.Columns[12].width:=42;
    DBGrid_xzghdw.Columns[13].Title.caption:='领药人';
    DBGrid_xzghdw.Columns[13].width:=42;
    DBGrid_xzghdw.Columns[14].Title.caption:='入库单号';
    DBGrid_xzghdw.Columns[14].width:=42;
    DBGrid_xzghdw.Columns[15].Title.caption:='入库序号';
    DBGrid_xzghdw.Columns[15].width:=38;
    DBGrid_xzghdw.Columns[16].Title.caption:='厂家';
    DBGrid_xzghdw.Columns[16].width:=70;
    DBGrid_xzghdw.sumlist.active:=True;
    DBGrid_xzghdw.Columns[0].Footer.valuetype:=fvtStaticText;
    DBGrid_xzghdw.Columns[0].Footer.Value := '合计';
    DBGrid_xzghdw.Columns[1].Footer.valuetype:=fvtcount;
    DBGrid_xzghdw.Columns[7].Footer.valuetype:=fvtSum;
    DBGrid_xzghdw.Columns[10].Footer.valuetype:=fvtSum;
  end;
  btn_print.tag:=1;
end;

procedure TFm_ypsearch.btn_printClick(Sender: TObject);
begin
  case btn_print.tag of
    1:  qr_ckmlxx.preview;
    2:begin
        qr_ckdtj.QRLabel3.caption:=datetostr(datefrom.date);
        qr_ckdtj.QRLabel5.caption:=datetostr(dateto.date);
        qr_ckdtj.QRLabel13.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('xy').ascurrency);
        qr_ckdtj.QRLabel14.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('zcy').ascurrency);
        qr_ckdtj.QRLabel15.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('cy').ascurrency);
        qr_ckdtj.QRLabel16.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('yfqe').ascurrency);
        qr_ckdtj.QRLabel17.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('qtxy').ascurrency);
        qr_ckdtj.QRLabel18.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('qtzcy').ascurrency);
        qr_ckdtj.QRLabel19.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('qtcy').ascurrency);
        qr_ckdtj.QRLabel20.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('qtqe').ascurrency);
        qr_ckdtj.QRLabel21.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('allxy').ascurrency);
        qr_ckdtj.QRLabel22.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('allzcy').ascurrency);
        qr_ckdtj.QRLabel23.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('allcy').ascurrency);
        qr_ckdtj.QRLabel24.caption:=formatcurr('#,###.00',dm.q_comm.fieldbyname('allqe').ascurrency);
        qr_ckdtj.preview;
      end;
  end;
end;

procedure TFm_ypsearch.FormShow(Sender: TObject);
begin
  dm.Q_comm.close;
  datefrom.date:=date();
  dateto.date:=date();
  datefrom_rk.date:=date();
  dateto_rk.date:=date();
  datefrom4.date:=date();
  dateto4.date:=date();
  datefrom_tj.date:=date();
  dateto_tj.date:=date();
  datefrom3.Date:=date();
  dateto3.Date:=date();
  datefrom_sell.Date:=date();
  dateto_sell.Date:=date();
  datefrom_accord.Date:=date();
  dateto_accord.Date:=date();
  btn_print.tag:=0;
  Ed_fph.clear;
  Ed_yznr_rk.clear;
  Ed_yznr_kc.clear;
  Ed_yznr_tj.clear;
  Ed_yznr.clear;
  Ed_yznr1.clear;
  Ed_yznr_accord.clear;
  ed_ksmc.clear;
  Ed_max.text:='999999';
  com_order.ItemIndex :=0;
  rg_type_rk.ItemIndex:=0 ;
  rg_type_ck.ItemIndex:=0 ;
  rg_type_sell.ItemIndex:=0 ;
  cmbx_ckkind.ItemIndex:=0;
with dm.Q_detail do
  begin
   close;
   sql.clear;
   sql.add('select bh,mc From pub_constant where kind=67 order by sequence');
   open;
   if isempty then exit else
   begin
     cbb_checklb_accord.Clear;
     cbb_checklb_accord.items.Add('0:全部');
     while not eof do
     begin
       cbb_checklb_accord.Items.add(
          trim(fieldbyname('bh').asstring)
          +':'
          +trim(fieldbyname('mc').asstring)
         );
      next;
     end;
   end;
  end;
  cbb_checklb_accord.ItemIndex :=0;
  dm.SetStoreValue(cmbx_storetype);
  dm.SetStoreValue(cmbx_storetype1);
  dm.SetStoreValue(cmbx_storetype2);
  dm.SetStoreValue(cmbx_storetype3);
  dm.SetStoreValue(cmbx_storetype4);
  dm.SetStoreValue(cmbx_storetype5);
  datefrom_rkdtj.DateTime:=Now;
  dateto_rkdtj.DateTime:=Now;
  PageControl1.ActivePageIndex :=0 ;
end;

procedure TFm_ypsearch.bbtn_outClick(Sender: TObject);
var
  eclApp,WorkBook:Variant;
  xlsFileName:string;
  zds,i,j,k,row:integer;
  temp:variant;
begin
  If DBGrid_xzghdw.DataSource.DataSet.isempty Then exit;
  decodedate(Datefrom.date,year,month,day);
  decodedate(Dateto.date,year1,month1,day1);
  SaveDialog1.Filter := 'xls files (*.xls)|*.xls|All files (*.*)|*.*';
  IF (SaveDialog1.Execute) and (trim(SaveDialog1.filename)<>'')   then
  begin
    xlsFileName:=SaveDialog1.filename;
  end
  else exit;
  try
   eclApp:=CreateOleObject('Excel.Application');
   WorkBook:=CreateOleobject('Excel.Sheet');
  except
    ShowMessage('您的机器里未安装Microsoft Excel。');
    Exit;
  end;
 try
   workBook:=eclApp.workBooks.Add;
   case  btn_print.tag of
     1:zds:=dm.q_comm.FieldCount;
     2:zds:=DBGrid_xzghdw.FieldCount; 
     3:zds:=dm.q_comm.FieldCount;
   end;
   row:=dm.q_comm.recordcount+2;
   eclApp.range['A1:'+chr(zds+64)+'1'].Merge(True);
   eclApp.range['A1:'+chr(zds+64)+'1'].HorizontalAlignment :=  xlCenter;
   eclApp.range['A1:'+chr(zds+64)+'1'].VerticalAlignment :=  xlBottom;
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Name := '宋体';
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Size := 14;

   eclApp.range['A2:'+chr(zds+64)+'2'].font.bold:=true;
   eclApp.range['A2:'+chr(zds+64)+'2'].Font.Size := 10;
   case  btn_print.tag of
     1:begin
         eclApp.cells[1,1]:=
         inttostr(year)+'年'+inttostr(month)+'月'+inttostr(day)+
                       '日-----'+inttostr(year1)+'年'+inttostr(month1)+'月'+inttostr(day1)+'日'
         +'出库明细';
         eclApp.cells[2,1]:='出库号';
         eclApp.cells[2,2]:='请领单号';
         eclApp.cells[2,3]:='科室名称';
         eclApp.cells[2,4]:='药品编码';
         eclApp.cells[2,5]:='药名';
         eclApp.cells[2,6]:='规格';
         eclApp.cells[2,7]:='剂型';
         eclApp.cells[2,8]:='数量';
         eclApp.cells[2,9]:='药库单位';
         eclApp.cells[2,10]:='零售价';
         eclApp.cells[2,11]:='出库金额';
         eclApp.cells[2,12]:='出库日期';
         eclApp.cells[2,13]:='出库人';
         eclApp.cells[2,14]:='领药人';
         eclApp.cells[2,15]:='入库单号';
         eclApp.cells[2,16]:='入库序号';
         eclApp.cells[2,17]:='厂家';
       end;
     2:begin
         eclApp.cells[1,1]:=
         inttostr(year)+'年'+inttostr(month)+'月'+inttostr(day)+
                       '日-----'+inttostr(year1)+'年'+inttostr(month1)+'月'+inttostr(day1)+'日'
         +'出库单统计';
         for I :=0  to  zds-1 do
         begin
           eclApp.cells[2,I+1]:=DBGrid_xzghdw.Columns[I].Title.Caption ;
         end;
       end;
     3:begin
         eclApp.cells[1,1]:=
         inttostr(year)+'年'+inttostr(month)+'月'+inttostr(day)+
                       '日-----'+inttostr(year1)+'年'+inttostr(month1)+'月'+inttostr(day1)+'日'
         +'药品出库汇总';
         eclApp.cells[2,1]:='药品编码';
         eclApp.cells[2,2]:='药名';
         eclApp.cells[2,3]:='规格';
         eclApp.cells[2,4]:='剂型';
         eclApp.cells[2,5]:='数量';
         eclApp.cells[2,6]:='药库单位';
         eclApp.cells[2,7]:='进货价';
         eclApp.cells[2,8]:='零售价';
         eclApp.cells[2,9]:='进货金额';
         eclApp.cells[2,10]:='出库金额';
       end;
  end;
  for J:=1 to  zds do
  eclApp.cells[row+1,J]:='=SUM('+chr(J+64)+'3'+':'+chr(J+64)+inttostr(row) + ')';
  J:=3;
  dm.q_comm .first;
  while not dm.q_comm.eof do
  begin
   for k:=1 to zds do
    begin
      temp:=dm.q_comm.Fields[k-1].Value ;
      eclApp.cells[j,k]:=temp;
    end;
    dm.q_comm.next;
    j:=j+1;
  end;

   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].HorizontalAlignment := xlRight;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].VerticalAlignment :=xlBottom;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].Font.size := 10;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].RowHeight := 14;

   eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Borders.LineStyle := 1;//加边界
   eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Columns.AutoFit;//列自适应

   WorkBook.saveas(xlsFileName);
   application.MessageBox('数据导出到excel成功','提示信息',mb_iconinformation);
   WorkBook.close;
   eclApp.Quit;
except
  ShowMessage('不能正确操作Excel文件。可能是该文件已被其他程序打开,或系统错误。');
  WorkBook.close;
  eclApp.Quit;
end;
end;


procedure TFm_ypsearch.bbtn_kcClick(Sender: TObject);
begin
  with dm.Q_kcun do
  begin
    Close;
    sql.clear;
    sql.add('yk_pdgl :zlbm,:ypbh,:maxvalue,:storetype');
    parambyname('zlbm').assmallint:=RadioGroup1.ItemIndex;
    parambyname('ypbh').asstring:=Trim(Ed_yznr_kc.text);
    parambyname('maxvalue').asinteger:=strtointdef(Ed_max.text,999999);
    parambyname('storetype').asstring:=Trim(cmbx_storetype3.text);
    open;
    dbgrdh_kclsxrq.DataSource :=dm.Ds_kcun ;
    dbgrdh_kclsxrq.sumlist.active:=True;
    dbgrdh_kclsxrq.Columns[0].Footer.valuetype:=fvtStaticText;
    dbgrdh_kclsxrq.Columns[0].Footer.Value := '合计';
    dbgrdh_kclsxrq.Columns[1].Footer.valuetype:=fvtCount;
    dbgrdh_kclsxrq.Columns[4].Footer.valuetype:=fvtSum;
    dbgrdh_kclsxrq.Columns[9].Footer.valuetype:=fvtSum;
  end;
end;

procedure TFm_ypsearch.bitprintClick(Sender: TObject);
begin
 f_report_cftj.Rep_pdgl.Preview;
end;

procedure TFm_ypsearch.bbtn_out1Click(Sender: TObject);
var
  eclApp,WorkBook:Variant;
  xlsFileName:string;
  zds,i,j,k,row:integer;
  temp:variant;
begin
  If dbgrdh_kclsxrq.DataSource.DataSet.isempty Then exit;
  decodedate(Datefrom.date,year,month,day);
  decodedate(Dateto.date,year1,month1,day1);
  SaveDialog1.Filter := 'xls files (*.xls)|*.xls|All files (*.*)|*.*';
  IF (SaveDialog1.Execute) and (trim(SaveDialog1.filename)<>'')   then
  begin
    xlsFileName:=SaveDialog1.filename;
  end
  else exit;
  try
   eclApp:=CreateOleObject('Excel.Application');
   WorkBook:=CreateOleobject('Excel.Sheet');
  except
    ShowMessage('您的机器里未安装Microsoft Excel。');
    Exit;
  end;
 try
   workBook:=eclApp.workBooks.Add;
   zds:=dm.Q_use.FieldCount;
   row:=dm.Q_use.recordcount+2;

   eclApp.range['A1:'+chr(zds+64)+'1'].Merge(True);
   eclApp.range['A1:'+chr(zds+64)+'1'].HorizontalAlignment :=  xlCenter;
   eclApp.range['A1:'+chr(zds+64)+'1'].VerticalAlignment :=  xlBottom;
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Name := '宋体';
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Size := 14;

   eclApp.range['A2:'+chr(zds+64)+'2'].font.bold:=true;
   eclApp.range['A2:'+chr(zds+64)+'2'].Font.Size := 10;

   eclApp.cells[1,1]:=datetimetostr(now)+'药库库存报表';
   eclApp.cells[2,1]:='药品编号';
   eclApp.cells[2,2]:='药名';
   eclApp.cells[2,3]:='规格';
   eclApp.cells[2,4]:='批号';
   eclApp.cells[2,5]:='库存量';
   eclApp.cells[2,6]:='药库单位';
   eclApp.cells[2,7]:='药库进价';
   eclApp.cells[2,8]:='药库单价';
   eclApp.cells[2,9]:='剂型';
   eclApp.cells[2,10]:='金额';
   eclApp.cells[2,11]:='失效日期';
  for J:=8 to  zds do
  eclApp.cells[row+1,J]:='=SUM('+chr(J+64)+'3'+':'+chr(J+64)+inttostr(row) + ')';
  J:=3;
  dm.Q_use .first;
  while not dm.Q_use.eof do
  begin
   for k:=1 to zds do
    begin
      temp:=dm.Q_use.Fields[k-1].Value ;
      eclApp.cells[j,k]:=temp;
    end;
    dm.Q_use.next;
    j:=j+1;
  end;

   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].HorizontalAlignment := xlRight;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].VerticalAlignment :=xlBottom;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].Font.size := 10;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].RowHeight := 14;

   eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Borders.LineStyle := 1;//加边界
   eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Columns.AutoFit;//列自适应

   WorkBook.saveas(xlsFileName);
   application.MessageBox('数据导出到excel成功','提示信息',mb_iconinformation);
   WorkBook.close;
   eclApp.Quit;
except
  ShowMessage('不能正确操作Excel文件。可能是该文件已被其他程序打开,或系统错误。');
  WorkBook.close;
  eclApp.Quit;
end;
end;

procedure TFm_ypsearch.bbtn_rkClick(Sender: TObject);
begin
//  qr_rkxxdy.qstime.caption:=datetostr(datefrom1.date);
 // qr_rkxxdy.jztime.caption:=datetostr(dateto1.date);
  with dm.q_public do
  begin
    close;
    sql.clear;
    sql.add('select b.lsh,b.rkxh,a.ym,a.gg,a.jx,b.jhj,b.lsj,b.rksl,b.jldw,rkje1=b.jhj*b.rksl,rkje2=b.lsj*b.rksl,');
    sql.add('b.rkrq,b.sxrq,c.cm,d.inc_name,b.ypbh,b.ypph,a.checklbm,b.opid,b.pwh,b.scrq');
    sql.add('from xyzb a,xykr b,sccj c,ghdw d ');
    sql.add('where datediff(day,:aadate,rkrq)>=0  and datediff(day,rkrq,:zzdate)>=0');
    sql.add('and  b.cjbm=c.cjbm and d.inc_code=b.ghdw and a.ypbh=b.ypbh');
    if rg_type_rk.ItemIndex<>0 then
    begin
       sql.add('and a.lb=:lb');
       parambyname('lb').AsInteger:=rg_type_rk.ItemIndex;
    end;
    If Trim(Ed_fph.text)<>'' Then
    begin
       sql.add('and b.rkdh=:rkdh');
       parambyname('rkdh').asstring:=Ed_fph.text;
    end;
    If Trim(Ed_yznr_rk.text)<>'' Then
    begin
       sql.add('and b.ypbh=:ypbh');
       parambyname('ypbh').asstring:=Ed_yznr_rk.text;
    end;
     if trim(cmbx_storetype1.Text)<>'全部' then
     begin
       sql.add('and a.storetype=:storetype');
       parambyname('storetype').asstring := trim(cmbx_storetype1.text);
     end;

    sql.add('order by b.rkrq');
    ParamByName('aadate').asdate:=datefrom_rk.Date;
    ParamByName('zzdate').asdate:=dateto_rk.Date;
    open;
    DBG_rktj.DataSource := dm.ds_public;
    DBG_rktj.Columns[0].width:=40;
    DBG_rktj.Columns[1].width:=40;
    DBG_rktj.Columns[2].width:=70;
    DBG_rktj.Columns[3].width:=100;
    DBG_rktj.Columns[4].width:=42;
    DBG_rktj.Columns[5].width:=56;
    DBG_rktj.Columns[6].width:=56;
    DBG_rktj.Columns[7].width:=50;
    DBG_rktj.Columns[8].width:=38;
    DBG_rktj.Columns[9].width:=60;
    DBG_rktj.Columns[10].width:=60;
    DBG_rktj.Columns[11].width:=68;
    DBG_rktj.Columns[12].width:=68;
    DBG_rktj.Columns[13].width:=64;
    DBG_rktj.Columns[14].width:=70;
    DBG_rktj.Columns[15].width:=52;
    DBG_rktj.Columns[16].width:=52;
    DBG_rktj.sumlist.active:=True;
    DBG_rktj.Columns[0].Footer.valuetype:=fvtStaticText;
    DBG_rktj.Columns[0].Footer.Value := '合计';
    DBG_rktj.Columns[1].Footer.valuetype:=fvtcount;
    DBG_rktj.Columns[8].Footer.valuetype:=fvtSum;
    DBG_rktj.Columns[10].Footer.valuetype:=fvtSum;
    DBG_rktj.Columns[11].Footer.valuetype:=fvtSum;
  end;

end;

procedure TFm_ypsearch.BitBtn4Click(Sender: TObject);
begin
   with dm.q_comm do
   begin
    close;
    sql.clear;
    sql.add('exec pub_ykjxchz :timefrom,:timeto,:opid ,:kind,:storetype');
    parambyname('kind').assmallint :=0;
    parambyname('timefrom').asdatetime:=datefrom4.DateTime;
    parambyname('timeto').asdatetime:=dateto4.DateTime;
    parambyname('opid').asinteger:=strtoint(fm_czydl.ed_bh.text);
    parambyname('storetype').asstring:=trim(cmbx_storetype5.Text);

    open;
    DBG_jxc.DataSource :=dm.ds_comm ;
    DBG_jxc.Columns[0].Title.caption:='科室编码';
    DBG_jxc.Columns[0].width:=54;
    DBG_jxc.Columns[1].Title.caption:='科室名称';
    DBG_jxc.Columns[1].width:=70;
    DBG_jxc.Columns[2].Title.caption:='西药';
    DBG_jxc.Columns[2].width:=66;
    DBG_jxc.Columns[3].Title.caption:='中草药';
    DBG_jxc.Columns[3].width:=66;
    DBG_jxc.Columns[4].Title.caption:='中成药';
    DBG_jxc.Columns[4].width:=66;
    DBG_jxc.Columns[5].Title.caption:='合计';
    DBG_jxc.Columns[5].width:=66;
    DBG_jxc.Columns[6].Title.caption:='西药领用合计';
    DBG_jxc.Columns[6].width:=66;
    DBG_jxc.Columns[7].Title.caption:='草药领用合计';
    DBG_jxc.Columns[7].width:=66;
    DBG_jxc.Columns[8].Title.caption:='成药领用合计';
    DBG_jxc.Columns[8].width:=66;
    DBG_jxc.Columns[9].Title.caption:='药品领用合计';
    DBG_jxc.Columns[9].width:=70;
  end;
end;

procedure TFm_ypsearch.bbtn_dataout4Click(Sender: TObject);
var
  eclApp,WorkBook:Variant;
  xlsFileName:string;
  zds,i,j,k,row:integer;
  temp:variant;
begin
  If DBG_jxc.DataSource.DataSet.isempty Then exit;
  decodedate(Datefrom4.date,year,month,day);
  decodedate(Dateto4.date,year1,month1,day1);
  SaveDialog1.Filter := 'xls files (*.xls)|*.xls|All files (*.*)|*.*';
  IF (SaveDialog1.Execute) and (trim(SaveDialog1.filename)<>'')   then
  begin
    xlsFileName:=SaveDialog1.filename;
  end
  else exit;
  try
   eclApp:=CreateOleObject('Excel.Application');
   WorkBook:=CreateOleobject('Excel.Sheet');
  except
    ShowMessage('您的机器里未安装Microsoft Excel。');
    Exit;
  end;
 try
   workBook:=eclApp.workBooks.Add;
//   zds:=dm.q_comm.FieldCount;
   zds:=6;
   row:=dm.q_comm.recordcount+2;

   eclApp.range['A1:'+chr(zds+64)+'1'].Merge(True);
   eclApp.range['A1:'+chr(zds+64)+'1'].HorizontalAlignment :=  xlCenter;
   eclApp.range['A1:'+chr(zds+64)+'1'].VerticalAlignment :=  xlBottom;
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Name := '宋体';
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Size := 14;

   eclApp.range['A2:'+chr(zds+64)+'2'].font.bold:=true;
   eclApp.range['A2:'+chr(zds+64)+'2'].Font.Size := 10;

   eclApp.cells[1,1]:=
      inttostr(year)+'年'+inttostr(month)+'月'+inttostr(day)+
                 '日-----'+inttostr(year1)+'年'+inttostr(month1)+'月'+inttostr(day1)+'日'
     +'进销存报表';
   eclApp.cells[2,1]:='科室编码';
   eclApp.cells[2,2]:='科室名称';
   eclApp.cells[2,3]:='西药';
   eclApp.cells[2,4]:='中草药';
   eclApp.cells[2,5]:='中成药';
   eclApp.cells[2,6]:='合计';
  for J:=8 to  zds do
  eclApp.cells[row+1,J]:='=SUM('+chr(J+64)+'3'+':'+chr(J+64)+inttostr(row) + ')';
  J:=3;
  dm.q_comm .first;
  while not dm.q_comm.eof do
  begin
   for k:=1 to zds do
    begin
      temp:=dm.q_comm.Fields[k-1].Value ;
      eclApp.cells[j,k]:=temp;
    end;
    dm.q_comm.next;
    j:=j+1;
  end;

   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].HorizontalAlignment := xlRight;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].VerticalAlignment :=xlBottom;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].Font.size := 10;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].RowHeight := 14;

   eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Borders.LineStyle := 1;//加边界
   eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Columns.AutoFit;//列自适应

   WorkBook.saveas(xlsFileName);
   application.MessageBox('数据导出到excel成功','提示信息',mb_iconinformation);
   WorkBook.close;
   eclApp.Quit;
except
  ShowMessage('不能正确操作Excel文件。可能是该文件已被其他程序打开,或系统错误。');
  WorkBook.close;
  eclApp.Quit;
end;
end;

procedure TFm_ypsearch.Bbtn_statics_ksClick(Sender: TObject);
begin
  with dm.q_comm do
  begin
    Close;
    SQL.Clear;
    SQL.Add('exec yk_ckdtjbb :datefrom,:dateto,:opid,:storetype,:ckkind');
    parambyname('datefrom').asdate:=datefrom.date;
    parambyname('dateto').asdate:=dateto.date;
    parambyname('opid').assmallint:=strtoint(fm_czydl.ed_bh.text);
    parambyname('storetype').asstring:=trim(cmbx_storetype2.text);
    If cmbx_ckkind.ItemIndex=0 Then
       parambyname('ckkind').assmallint:=0
    else
      parambyname('ckkind').assmallint:=1;
    open;
    DBGrid_xzghdw.DataSource :=dm.DS_comm ;
  end;
   btn_print.tag:=2;
end;

procedure TFm_ypsearch.Ed_yznrKeyPress(Sender: TObject; var Key: Char);
var    codelen,searchway:integer;
begin
  If key<>#13 then Exit;
  with dm.Q_xyzb do
  begin
      Close;
      SQL.Clear;
      SQL.Add('Select a.YPBH,a.ym,a.gg,a.zxdw,YLSJ=round(a.ylsj/a.hsb,4),a.hsb,a.cfhsb,a.type,a.skintry');
      SQL.Add('from xyzb a');
      CodeLen := Ed_yznr.GetTextLen;
      FirstAlpha := copy(Ed_yznr.Text,1,1);
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
         ParamByName('SearchCode').AsString := '%'+Ed_yznr.Text+'%';
        end;
      2:              //流水码
        begin
         SQL.Add(' WHERE a.lsm like :SearchCode');
         ParamByName('SearchCode').AsString := trim(Ed_yznr.Text);
        end;
      3:           //药品编码
        begin
         SQL.Add(' WHERE a.ypbh like :SearchCode');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr.Text+'%';
        end;
      4:            //药名
        begin
         SQL.Add(' WHERE a.ym like :SearchCode ');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr.Text+'%';
        end;
      end;
    sql.Add('and a.ylsj>0  and a.ifzy=1 ');
     Open;
      if RecordCount = 1 then  DBGrid_xyzb3DblClick(sender)
      else
      if RecordCount > 1 then //多条记录时可以USE KEYBORAD OR MOUSE 定位
      begin
        DBGrid_XYZB3.Visible := True;
        DBGrid_XYZB3.SetFocus;
      end
      else  Application.MessageBox('无此编码药品或库存量不足','错误信息',mb_iconerror);
  end;
end;


procedure TFm_ypsearch.DBGrid_xyzb3DblClick(Sender: TObject);
begin
   lab_ck.caption:=dm.Q_xyzb.fieldbyname('ym').asstring+':'+dm.Q_xyzb.fieldbyname('gg').asstring;
   Ed_yznr.text:=dm.Q_xyzb.fieldbyname('ypbh').asstring;
   btn_cx.SetFocus ;
end;

procedure TFm_ypsearch.DBGrid_xyzb3Exit(Sender: TObject);
begin
  (sender as Tdbgrid).Visible :=false;
end;

procedure TFm_ypsearch.DBGrid_xyzb3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then DBGrid_xyzb3DblClick(Sender);
end;

procedure TFm_ypsearch.Ed_yznr_rkKeyPress(Sender: TObject; var Key: Char);
var    codelen,searchway:integer;
begin
  If key<>#13 then Exit;
  with dm.Q_xyzb do
  begin
      Close;
      SQL.Clear;
      SQL.Add('Select a.YPBH,a.ym,a.gg,a.zxdw,YLSJ=round(a.ylsj/a.hsb,4),a.hsb,a.cfhsb,a.type,a.skintry');
      SQL.Add('from xyzb a');
      CodeLen := Ed_yznr_rk.GetTextLen;
      FirstAlpha := copy(Ed_yznr_rk.Text,1,1);
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
         ParamByName('SearchCode').AsString := '%'+Ed_yznr_rk.Text+'%';
        end;
      2:              //流水码
        begin
         SQL.Add(' WHERE a.lsm like :SearchCode');
         ParamByName('SearchCode').AsString := trim(Ed_yznr_rk.Text);
        end;
      3:           //药品编码
        begin
         SQL.Add(' WHERE a.ypbh like :SearchCode');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr_rk.Text+'%';
        end;
      4:            //药名
        begin
         SQL.Add(' WHERE a.ym like :SearchCode ');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr_rk.Text+'%';
        end;
      end;
    sql.Add('and a.ylsj>0  and a.ifzy=1 ');
     Open;
      if RecordCount = 1 then  DBG_rkDblClick(sender)
      else
      if RecordCount > 1 then //多条记录时可以USE KEYBORAD OR MOUSE 定位
      begin
        DBG_rk.Visible := True;
        DBG_rk.SetFocus;
      end
      else  Application.MessageBox('无此编码药品或库存量不足','错误信息',mb_iconerror);
  end;
end;
procedure TFm_ypsearch.DBG_rkDblClick(Sender: TObject);
begin
   lab_rk.caption:=dm.Q_xyzb.fieldbyname('ym').asstring+':'+dm.Q_xyzb.fieldbyname('gg').asstring;
   Ed_yznr_rk.text:=dm.Q_xyzb.fieldbyname('ypbh').asstring;
   bbtn_rk.SetFocus ;
end;

procedure TFm_ypsearch.DBG_rkExit(Sender: TObject);
begin
  (sender as Tdbgrid).Visible :=false;
end;

procedure TFm_ypsearch.DBG_rkKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBG_rkDblClick(Sender);
end;

procedure TFm_ypsearch.Ed_yznr_kcKeyPress(Sender: TObject; var Key: Char);
var    codelen,searchway:integer;
begin
  If key<>#13 then Exit;
  with dm.Q_xyzb do
  begin
      Close;
      SQL.Clear;
      SQL.Add('Select a.YPBH,a.ym,a.gg,a.zxdw,YLSJ=round(a.ylsj/a.hsb,4),a.hsb,a.cfhsb,a.type,a.skintry');
      SQL.Add('from xyzb a');
      CodeLen := Ed_yznr_kc.GetTextLen;
      FirstAlpha := copy(Ed_yznr_kc.Text,1,1);
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
         ParamByName('SearchCode').AsString := '%'+Ed_yznr_kc.Text+'%';
        end;
      2:              //流水码
        begin
         SQL.Add(' WHERE a.lsm like :SearchCode');
         ParamByName('SearchCode').AsString := trim(Ed_yznr_kc.Text);
        end;
      3:           //药品编码
        begin
         SQL.Add(' WHERE a.ypbh like :SearchCode');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr_kc.Text+'%';
        end;
      4:            //药名
        begin
         SQL.Add(' WHERE a.ym like :SearchCode ');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr_kc.Text+'%';
        end;
      end;
     sql.Add('and a.ylsj>0  and a.ifzy=1 ');
     Open;
      if RecordCount = 1 then  DBG_kcDblClick(sender)
      else
      if RecordCount > 1 then //多条记录时可以USE KEYBORAD OR MOUSE 定位
      begin
        DBG_kc.Visible := True;
        DBG_kc.SetFocus;
      end
      else  Application.MessageBox('无此编码药品或库存量不足','错误信息',mb_iconerror);
  end;
end;



procedure TFm_ypsearch.DBG_kcDblClick(Sender: TObject);
begin
   lab_kc.caption:=dm.Q_xyzb.fieldbyname('ym').asstring+':'+dm.Q_xyzb.fieldbyname('gg').asstring;
   Ed_yznr_kc.text:=dm.Q_xyzb.fieldbyname('ypbh').asstring;
   bbtn_kc.SetFocus ;
end;

procedure TFm_ypsearch.DBG_kcExit(Sender: TObject);
begin
  (sender as Tdbgrid).Visible :=false;
end;

procedure TFm_ypsearch.DBG_kcKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBG_kcDblClick(Sender);
end;

procedure TFm_ypsearch.Ed_ksmcEnter(Sender: TObject);
begin
 ed_ksmc.clear;
end;

procedure TFm_ypsearch.Ed_ksmcKeyPress(Sender: TObject; var Key: Char);
begin
if key<>#13 then exit;
with dm.Q_xyzb do
begin
  close;
  sql.clear;
  sql.add('select ksbm,ksmc from jgxx where Ifzy=1 ');
  try
    strtoint(ed_ksmc.text);
    sql.add('and ksbm=:ksbm');
    parambyname('ksbm').assmallint:=strtoint(ed_ksmc.text);
  except
    sql.add(' and pym like :pym');
    parambyname('pym').asstring:='%'+Trim(ed_ksmc.text)+'%';
  end;
     sql.add('order by ksmc,ksbm');
     open;
  end;
  case dm.Q_xyzb.recordcount of
    0:
      begin
        Application.MessageBox('无此科室编码 ！','输入有误！',0);
        ed_ksmc.clear;
        ed_ksmc.SetFocus;
      end;
    1: DBGrid_ksdblclick(sender)
    else
    begin
      DBGrid_ks.Visible := True;
      DBGrid_ks.setfocus;
     end;
    end;
end;

procedure TFm_ypsearch.DBGrid_ksDblClick(Sender: TObject);
begin
  ed_ksmc.text:=dm.q_xyzb['ksbm'];
  lab_ks.caption:=dm.q_xyzb['ksmc'];
  btn_cx.SetFocus ;
end;

procedure TFm_ypsearch.DBGrid_ksColExit(Sender: TObject);
begin
  TDBGrid(sender).Visible :=False ;
end;

procedure TFm_ypsearch.DBGrid_ksKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  DBGrid_ksDblClick(Sender);
end;

procedure TFm_ypsearch.DBGrid_ksExit(Sender: TObject);
begin
  TDBGrid(sender).Visible :=False ;
end;

procedure TFm_ypsearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dbgrdh_kclsxrq.DataSource :=Nil;
  DBG_rktj.DataSource :=Nil;
  DBGrid_xzghdw.DataSource :=Nil;
  DBG_jxc.DataSource :=Nil;
  DBG_tj.DataSource :=Nil;
  DBGrid4.DataSource :=Nil;
  DBGrid_xyzb_accord.DataSource :=Nil;
  cxgrdbtblvw_detail.DataController.DataSource :=nil ;
end;

procedure TFm_ypsearch.bbtn_tjClick(Sender: TObject);
begin
with dm.q_comm do
begin
  close;
  sql.clear;
  sql.add('select  药名=b.ym, 规格=b.gg,剂型=c.jx,计量单位=b.jldw, '
          + '原零售价=a.ylsj,现零售价=a.xlsj');
  sql.add(',药库库存=a.yk_store, '
          +'    差额=round(isnull(a.yk_store,0)*(a.xlsj-a.ylsj),3),');
  sql.add(' 住院库存=round(isnull(a.zy_store/a.hsb,0),3), '
         +' 住院差额=round(isnull(a.zy_store/a.hsb,0)*(a.xlsj-a.ylsj),3), '
         +' 门诊库存=round(isnull(mz_store/a.hsb,0),3), '
         +' 门诊差额=round(isnull(a.mz_store/a.hsb,0)*(a.xlsj-a.ylsj),3),');
  sql.add(' 急诊库存=round(isnull(jz_store/a.hsb,0),3), '
         +' 急诊差额=round(isnull(a.jz_store/a.hsb,0)*(a.xlsj-a.ylsj),3), '
         +' 部门库存=round(isnull(bm_store/a.hsb,0),3), '
         +' 部门差额=round(isnull(a.bm_store/a.hsb,0)*(a.xlsj-a.ylsj),3)');
  sql.add(' from xytjxb a,xyzb b,ypjx c '
         +'  where datediff(day,a.tjrq,:datefrom)<=0  and datediff(day,a.tjrq,:dateto)>=0 AND a.ypbh=b.ypbh AND b.jxbm=c.jxbm');
  If Trim(Ed_yznr_tj.text)<>'' Then
  begin
   sql.add('and b.ypbh=:ypbh');
   parambyname('ypbh').asstring:=Ed_yznr_tj.text;
  end
  Else
  begin
    sql.add(' and b.lb=:lb');
    parambyname('lb').assmallint:=rg_type.ItemIndex+1;//查询类别
  end;
   if trim(cmbx_storetype4.Text)<>'全部' then
   begin
     sql.add('and b.storetype=:storetype');
     parambyname('storetype').asstring := trim(cmbx_storetype4.text);
   end;

  parambyname('datefrom').asdatetime:=datefrom_tj.date;
  parambyname('dateto').asdatetime:=dateto_tj.date;
  open;
  DBG_tj.DataSource :=dm.DS_comm ;
  DBG_tj.Columns[0].width:=138;
  DBG_tj.Columns[1].width:=110;
  DBG_tj.Columns[2].width:=42;
  DBG_tj.Columns[3].width:=34;
  DBG_tj.Columns[4].width:=60;
  DBG_tj.Columns[4].DisplayFormat:='0.000';
  DBG_tj.Columns[5].DisplayFormat:='0.000';

  DBG_tj.Columns[5].width:=60;
  DBG_tj.Columns[6].width:=62;
  DBG_tj.Columns[7].width:=60;
  DBG_tj.Columns[8].width:=60;
  DBG_tj.Columns[9].width:=60;
  DBG_tj.Columns[10].width:=60;
  DBG_tj.Columns[11].width:=60;
  DBG_tj.Columns[12].width:=60;
  DBG_tj.Columns[13].width:=60;
  DBG_tj.Columns[14].width:=60;
  DBG_tj.sumlist.active:=True;
  DBG_tj.Columns[0].Footer.valuetype:=fvtStaticText;
  DBG_tj.Columns[0].Footer.Value := '合计';
  DBG_tj.Columns[6].Footer.valuetype:=fvtSum;
  DBG_tj.Columns[7].Footer.valuetype:=fvtSum;
  DBG_tj.Columns[8].Footer.valuetype:=fvtSum;
  DBG_tj.Columns[9].Footer.valuetype:=fvtSum;
  DBG_tj.Columns[10].Footer.valuetype:=fvtSum;
  DBG_tj.Columns[11].Footer.valuetype:=fvtSum;
  DBG_tj.Columns[12].Footer.valuetype:=fvtSum;
  DBG_tj.Columns[13].Footer.valuetype:=fvtSum;
  DBG_tj.Columns[14].Footer.valuetype:=fvtSum;
  DBG_tj.Columns[15].Footer.valuetype:=fvtSum;
end;
end;

procedure TFm_ypsearch.BitBtn2Click(Sender: TObject);
begin
   Fm_report.Fdatefrom:=datetostr(datefrom_tj.date);
   Fm_report.Fdateto:=datetostr(dateto_tj.date);
   Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\药品变价调整单.frf');
   Fm_report.frReport1.ShowReport;
end;

procedure TFm_ypsearch.DBG_yznr_tjExit(Sender: TObject);
begin
  (sender as Tdbgrid).Visible :=false;
end;

procedure TFm_ypsearch.DBG_yznr_tjDblClick(Sender: TObject);
begin
   lab_tj.caption:=dm.Q_xyzb.fieldbyname('ym').asstring+':'+dm.Q_xyzb.fieldbyname('gg').asstring;
   Ed_yznr_tj.text:=dm.Q_xyzb.fieldbyname('ypbh').asstring;
   bbtn_tj.SetFocus ;
end;

procedure TFm_ypsearch.DBG_yznr_tjKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBG_yznr_tjDblClick(Sender);
end;

procedure TFm_ypsearch.Ed_yznr_tjKeyPress(Sender: TObject; var Key: Char);
var    codelen,searchway:integer;
begin
  If key<>#13 then Exit;
  with dm.Q_xyzb do
  begin
      Close;
      SQL.Clear;
      SQL.Add('Select a.YPBH,a.ym,a.gg,a.zxdw,YLSJ=round(a.ylsj/a.hsb,4),a.hsb,a.cfhsb,a.type,a.skintry');
      SQL.Add('from xyzb a');
      CodeLen := Ed_yznr_tj.GetTextLen;
      FirstAlpha := copy(Ed_yznr_tj.Text,1,1);
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
         ParamByName('SearchCode').AsString := '%'+Ed_yznr_tj.Text+'%';
        end;
      2:              //流水码
        begin
         SQL.Add(' WHERE a.lsm like :SearchCode');
         ParamByName('SearchCode').AsString := trim(Ed_yznr_tj.Text);
        end;
      3:           //药品编码
        begin
         SQL.Add(' WHERE a.ypbh like :SearchCode');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr_tj.Text+'%';
        end;
      4:            //药名
        begin
         SQL.Add(' WHERE a.ym like :SearchCode ');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr_tj.Text+'%';
        end;
      end;
    sql.Add('and a.ylsj>0  and a.ifzy=1 ');
     Open;
      if RecordCount = 1 then  DBG_yznr_tjDblClick(sender)
      else
      if RecordCount > 1 then //多条记录时可以USE KEYBORAD OR MOUSE 定位
      begin
        DBG_yznr_tj.Visible := True;
        DBG_yznr_tj.SetFocus;
      end
      else  Application.MessageBox('无此编码药品或库存量不足','错误信息',mb_iconerror);
  end;
end;


procedure TFm_ypsearch.PageControl1Change(Sender: TObject);
begin
 case PageControl1.ActivePageIndex of
   1:StatusBar1.Panels[1].Text:= '药库出库数据和打印的请领单据应保持一致，出库号为空的数据为非法数据';
   Else
  StatusBar1.Panels[1].Text:='根据设置条件查询数据';
 end; 
end;

procedure TFm_ypsearch.bbtn_search2Click(Sender: TObject);
begin
 with dm.Q_cx do
 begin
   close;
   sql.clear;
   sql.Add('select a.dh,a.ypbh,b.ym,b.gg,a.source,a.change,b.jldw,a.lsj,a.[time],');
   sql.Add('je=round(a.lsj*a.change,2),b.lb,a.opid,a.memo');
   sql.add('from pub_yk_pdb a,xyzb b');
   sql.add('where a.ypbh=b.ypbh');
   sql.add('and datediff(day,time,:datefrom)<=0 and  datediff(day,time,:dateto)>=0 ');
   If Trim(Ed_yznr1.text)<>'' Then
      begin
        sql.add('and a.ypbh=:ypbh');
        parambyname('ypbh').asstring := Ed_yznr1.text;
      end;
   If Rad_xy.Checked Then  sql.add('and b.lb=1');
   If Rad_cy.Checked Then  sql.add('and b.lb=2');
   If Rad_zcy.Checked Then  sql.add('and b.lb=3');
   if trim(cmbx_storetype.Text)<>'全部' then
   begin
     sql.add('and b.storetype=:storetype');
     parambyname('storetype').asstring := trim(cmbx_storetype.text);
   end;

   parambyname('datefrom').asdate := datefrom3.Date;
   parambyname('dateto').asdate := dateto3.Date;
   sql.add('order by a.dh,b.lb,a.ypbh');
   open;
   DBGrid4.DataSource :=dm.DS_cx;
   DBGrid4.Columns[0].Footer.valuetype:=fvtStaticText;
   DBGrid4.Columns[0].Footer.Value := '合计';
   DBGrid4.Columns[5].Footer.valuetype:=fvtSum;
   DBGrid4.Columns[8].Footer.valuetype:=fvtSum;
   end;

end;

procedure TFm_ypsearch.BitBtn1Click(Sender: TObject);
var
  eclApp,WorkBook:Variant;
  //声明为OLE Automation 对象
  xlsFileName:string;
  zds,i,j,k,row:integer;
  temp:variant;
begin
  SaveDialog1.Filter := 'xls files (*.xls)|*.xls|All files (*.*)|*.*';
  IF (SaveDialog1.Execute) and (trim(SaveDialog1.filename)<>'')   then
  begin
    xlsFileName:=SaveDialog1.filename;
  end
  else exit;
  try
//创建OLE对象Excel Application与 WorkBook
   decodedate(Datefrom3.date,year,month,day);
   decodedate(Dateto3.date,year1,month1,day1);
   eclApp:=CreateOleObject('Excel.Application');
   WorkBook:=CreateOleobject('Excel.Sheet');
  except
    ShowMessage('您的机器里未安装Microsoft Excel。');
    Exit;
  end;
 try
   workBook:=eclApp.workBooks.Add;
   zds:=dm.Q_cx.FieldCount;
   row:=Dm.Q_cx.recordcount+2;

   eclApp.range['A1:'+chr(zds+64)+'1'].Merge(True);
   eclApp.range['A1:'+chr(zds+64)+'1'].HorizontalAlignment :=  xlCenter;
   eclApp.range['A1:'+chr(zds+64)+'1'].VerticalAlignment :=  xlBottom;
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Name := '宋体';
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Size := 14;

   eclApp.range['A2:'+chr(zds+64)+'2'].font.bold:=true;
   eclApp.range['A2:'+chr(zds+64)+'2'].Font.Size := 10;
   eclApp.cells[1,1]:=
       inttostr(year)+'年'+inttostr(month)+'月'+inttostr(day)+
                       '日-----'+inttostr(year1)+'年'+inttostr(month1)+'月'+inttostr(day1)+'日'
        +'药库盘点变化量';
   eclApp.cells[2,1]:='盘点号';
   eclApp.cells[2,2]:='药品编码';
   eclApp.cells[2,3]:='药名';
   eclApp.cells[2,4]:='规格';
   eclApp.cells[2,5]:='改变前';
   eclApp.cells[2,6]:='变化量';
   eclApp.cells[2,7]:='药库单位';
   eclApp.cells[2,8]:='药库单价';
   eclApp.cells[2,9]:='变化日期';
   eclApp.cells[2,10]:='金额';
   eclApp.cells[2,11]:='类别';
   eclApp.cells[2,12]:='操作员';
   eclApp.cells[2,13]:='备注';
//    for J:=10 to  zds do
    for J:=10 to  10 do
    eclApp.cells[row+1,J]:='=SUM('+chr(J+64)+'3'+':'+chr(J+64)+inttostr(row) + ')';
  J:=3;
  Dm.Q_cx.first;
  while not Dm.Q_cx.eof do
  begin
    for k:=1 to zds do
    begin
      temp:=Dm.Q_cx.Fields[k-1].Value ;
      eclApp.cells[j,k]:=temp;
    end;
    Dm.Q_cx.next;
    j:=j+1;
  end;

   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].HorizontalAlignment := xlRight;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].VerticalAlignment :=xlBottom;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].Font.size := 10;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].RowHeight := 14;

   eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Borders.LineStyle := 1;//加边界
   eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Columns.AutoFit;//列自适应

   WorkBook.saveas(xlsFileName);
   application.MessageBox('数据导出到excel成功','提示信息',mb_iconinformation);
   WorkBook.close;
   eclApp.Quit;
except
  ShowMessage('不能正确操作Excel文件。可能是该文件已被其他程序打开,或系统错误。');
  WorkBook.close;
  eclApp.Quit;
end;
end;

procedure TFm_ypsearch.DBGrid_xyzb1DblClick(Sender: TObject);
begin
   Label19.caption:=dm.Q_xyzb.fieldbyname('ym').asstring+':'+dm.Q_xyzb.fieldbyname('gg').asstring;
   Ed_yznr1.text:=dm.Q_xyzb.fieldbyname('ypbh').asstring;
   bbtn_search2.SetFocus ;
end;

procedure TFm_ypsearch.DBGrid_xyzb1Exit(Sender: TObject);
begin
 (sender as Tdbgrid).Visible :=false;
end;

procedure TFm_ypsearch.DBGrid_xyzb1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then DBGrid_xyzb1DblClick(Sender);
end;

procedure TFm_ypsearch.Ed_yznr1KeyPress(Sender: TObject; var Key: Char);
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

procedure TFm_ypsearch.bbtn_out_rkClick(Sender: TObject);
var
  eclApp,WorkBook:Variant;
  xlsFileName:string;
  zds,i,j,k,row:integer;
  temp:variant;
begin
  If DBG_rktj.DataSource.DataSet.isempty Then exit;
  decodedate(datefrom_rk.date,year,month,day);
  decodedate(dateto_rk.date,year1,month1,day1);
  SaveDialog1.Filter := 'xls files (*.xls)|*.xls|All files (*.*)|*.*';
  IF (SaveDialog1.Execute) and (trim(SaveDialog1.filename)<>'')   then
  begin
    xlsFileName:=SaveDialog1.filename;
  end
  else exit;
  try
   eclApp:=CreateOleObject('Excel.Application');
   WorkBook:=CreateOleobject('Excel.Sheet');
  except
    ShowMessage('您的机器里未安装Microsoft Excel。');
    Exit;
  end;
 try
   workBook:=eclApp.workBooks.Add;
   zds:=dm.q_public.FieldCount;
   row:=dm.q_public.recordcount+2;
   eclApp.range['A1:'+chr(zds+64)+'1'].Merge(True);
   eclApp.range['A1:'+chr(zds+64)+'1'].HorizontalAlignment :=  xlCenter;
   eclApp.range['A1:'+chr(zds+64)+'1'].VerticalAlignment :=  xlBottom;
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Name := '宋体';
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Size := 14;

   eclApp.range['A2:'+chr(zds+64)+'2'].font.bold:=true;
   eclApp.range['A2:'+chr(zds+64)+'2'].Font.Size := 10;

   eclApp.cells[1,1]:=
   inttostr(year)+'年'+inttostr(month)+'月'+inttostr(day)+
                 '日-----'+inttostr(year1)+'年'+inttostr(month1)+'月'+inttostr(day1)+'日'
   +'入库明细';
   eclApp.cells[2,1]:='入库单号';
   eclApp.cells[2,2]:='入库序号';
   eclApp.cells[2,3]:='药名';
   eclApp.cells[2,4]:='规格';
   eclApp.cells[2,5]:='剂型';
   eclApp.cells[2,6]:='进价';
   eclApp.cells[2,7]:='零售价';
   eclApp.cells[2,8]:='数量';
   eclApp.cells[2,9]:='单位';
   eclApp.cells[2,10]:='进价金额';
   eclApp.cells[2,11]:='零售金额';
   eclApp.cells[2,12]:='入库日期';
   eclApp.cells[2,13]:='失效日期';
   eclApp.cells[2,14]:='厂家';
   eclApp.cells[2,15]:='供货单位';
   eclApp.cells[2,16]:='药品编码';
   eclApp.cells[2,17]:='批号';
   eclApp.cells[2,18]:='类别';
   eclApp.cells[2,19]:='批文号';
   eclApp.cells[2,20]:='生产日期';
for J:=1 to  zds do
  eclApp.cells[row+1,J]:='=SUM('+chr(J+64)+'3'+':'+chr(J+64)+inttostr(row) + ')';
  J:=3;
  dm.q_public.first;
  while not dm.q_public.eof do
  begin
   for k:=1 to zds do
    begin
      temp:=dm.q_public.Fields[k-1].Value ;
      eclApp.cells[j,k]:=temp;
    end;
    dm.q_public.next;
    j:=j+1;
  end;

   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].HorizontalAlignment := xlRight;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].VerticalAlignment :=xlBottom;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].Font.size := 10;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].RowHeight := 14;

   eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Borders.LineStyle := 1;//加边界
   eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Columns.AutoFit;//列自适应

   WorkBook.saveas(xlsFileName);
   application.MessageBox('数据导出到excel成功','提示信息',mb_iconinformation);
   WorkBook.close;
   eclApp.Quit;
except
  ShowMessage('不能正确操作Excel文件。可能是该文件已被其他程序打开,或系统错误。');
  WorkBook.close;
  eclApp.Quit;
end;
end;


procedure TFm_ypsearch.BitBtn5Click(Sender: TObject);
begin
   fm_lsz.EdCode.Text :=dm.q_public.fieldbyname('ypbh').asstring;
   fm_lsz.Ed_rkxh.Text :=dm.q_public.fieldbyname('rkxh').asstring;
   fm_lsz.DaTe_from.datetime :=dm.q_public.fieldbyname('rkrq').asdatetime;
   fm_lsz.DaTe_to.datetime :=dm.q_public.fieldbyname('rkrq').asdatetime;
   fm_lsz.lab_rkxh.visible:=True;
   fm_lsz.Ed_rkxh.visible:=True;
   fm_lsz.tag:=2;
   fm_lsz.showmodal;
end;

procedure TFm_ypsearch.DBG_rktjDblClick(Sender: TObject);
begin
  If not DBG_rktj.DataSource.DataSet.IsEmpty Then BitBtn5Click(Sender);
end;

procedure TFm_ypsearch.btn_exitClick(Sender: TObject);
begin
 Self.Close;
end;


procedure TFm_ypsearch.BitBtn10Click(Sender: TObject);
begin
  if dm.Search_InbankBill(datefrom_rkdtj.DateTime,dateto_rkdtj.DateTime,RadioGroup3.ItemIndex) then
  begin
    DBGrid6.DataSource:=dm.ds_comm;
    DBGrid6.sumlist.active:=True;
    DBGrid6.Columns[0].Footer.valuetype:=fvtStaticText;
    DBGrid6.Columns[0].Footer.Value := '合计';
    if RadioGroup3.ItemIndex=4 then
    begin
      DBGrid6.Columns[1].Footer.valuetype:=fvtSum;
      DBGrid6.Columns[2].Footer.valuetype:=fvtSum;
      DBGrid6.Columns[3].Footer.valuetype:=fvtSum;
    end else if RadioGroup3.ItemIndex=5 then
    begin
      DBGrid6.Columns[4].Footer.valuetype:=fvtSum;
      DBGrid6.Columns[5].Footer.valuetype:=fvtSum;
      DBGrid6.Columns[6].Footer.valuetype:=fvtSum;
    end else
    begin
      DBGrid6.Columns[2].Footer.valuetype:=fvtSum;
      DBGrid6.Columns[3].Footer.valuetype:=fvtSum;
      DBGrid6.Columns[4].Footer.valuetype:=fvtSum;
    end;
  end;
end;

procedure TFm_ypsearch.BitBtn12Click(Sender: TObject);
var   eclApp,WorkBook:Variant;
  //声明为OLE Automation 对象
  xlsFileName:string;
  zds,i,j,k,row:integer;
  temp:variant;
begin

   if DBGrid6.DataSource.DataSet.IsEmpty then exit;
   SaveDialog1.Filter := 'xls files (*.xls)|*.xls|All files (*.*)|*.*';
  IF (SaveDialog1.Execute) and (trim(SaveDialog1.filename)<>'')   then
  begin
    xlsFileName:=SaveDialog1.filename;
  end
  else exit;
  try
//创建OLE对象Excel Application与 WorkBook
   decodedate(datefrom.date,year,month,day);
   decodedate(dateto.date,year1,month1,day1);
   eclApp:=CreateOleObject('Excel.Application');
   WorkBook:=CreateOleobject('Excel.Sheet');
  except
    ShowMessage('您的机器里未安装Microsoft Excel。');
    Exit;
  end;
 try
   workBook:=eclApp.workBooks.Add;
   //zds:=dm.Q_public.FieldCount;
   zds:=DBGrid6.FieldCount;
   row:=DBGrid6.DataSource.DataSet.recordcount+2;

   eclApp.range['A1:'+chr(zds+64)+'1'].Merge(True);
  // eclApp.range['A1:'+chr(zds+64)+'1'].HorizontalAlignment :=  xlCenter;
//   eclApp.range['A1:'+chr(zds+64)+'1'].VerticalAlignment :=  xlBottom;
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Name := '宋体';
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Size := 14;

   eclApp.range['A2:'+chr(zds+64)+'2'].font.bold:=true;
   eclApp.range['A2:'+chr(zds+64)+'2'].Font.Size := 10;
   eclApp.cells[1,1]:=
       inttostr(year)+'年'+inttostr(month)+'月'+inttostr(day)+
                       '日-----'+inttostr(year1)+'年'+inttostr(month1)+'月'+inttostr(day1)+'日'
        +'按供货单位合计报表';
   eclApp.cells[2,1]:='编号';
   eclApp.cells[2,2]:='供货单位';
   eclApp.cells[2,3]:='入库金额';
   eclApp.cells[2,4]:='应付金额';
   eclApp.cells[2,5]:='差价';

    for J:=10 to  10 do
    eclApp.cells[row+1,J]:='=SUM('+chr(J+64)+'3'+':'+chr(J+64)+inttostr(row) + ')';
  J:=3;
  DBGrid6.DataSource.DataSet.first;
  while not DBGrid6.DataSource.DataSet.eof do
  begin
    for k:=1 to zds do
    begin
      //temp:=Dm.Q_public.Fields[k-1].Value ;
      temp:=DBGrid6.Fields[k-1].Value;
      eclApp.cells[j,k]:=temp;
    end;
    DBGrid6.DataSource.DataSet.next;
    j:=j+1;
  end;

   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].Font.size := 10;
   eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].RowHeight := 14;

   eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Borders.LineStyle := 1;//加边界
   eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Columns.AutoFit;//列自适应

   WorkBook.saveas(xlsFileName);
   application.MessageBox('数据导出到excel成功','提示信息',mb_iconinformation);
   WorkBook.close;
   eclApp.Quit;
except
  ShowMessage('不能正确操作Excel文件。可能是该文件已被其他程序打开,或系统错误。');
  WorkBook.close;
  eclApp.Quit;
end;

end;

procedure TFm_ypsearch.BitBtn11Click(Sender: TObject);
begin
  case RadioGroup3.ItemIndex of
      0:begin
          Fm_report.Flb:='西药';
          Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\入库单统计.frf');
        end;
      1:begin
          Fm_report.Flb:='中药';
          Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\入库单统计.frf');
        end ;
      2:begin
          Fm_report.Flb:='草药';
          Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\入库单统计.frf');
        end;
      3:begin
          Fm_report.Flb:='合计';
          Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\入库单统计.frf');
        end;
      4:begin
           Fm_report.Flb:='合计';
           Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\入库单统计.frf');
        end;
      5:begin
          Fm_report.Flb:='供货单位合计';
          Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\入库单统计(供货单位).frf');
        end;
  end;
  Fm_report.Fdatefrom:=datetostr(datefrom_rkdtj.date);
  Fm_report.Fdateto:=datetostr(dateto_rkdtj.date);
  Fm_report.frReport1.ShowReport;
end;

procedure TFm_ypsearch.btn_sellClick(Sender: TObject);
begin
 InitGrid(1,'MedStore_YpProfit.xml',cxgrdbtblvw_detail);
 with dm.Q_sell do
 begin
   close;
   sql.clear;
   sql.Add('exec total_medbid :datefrom,:dateto,:lb,:kind');
   parambyname('datefrom').asdate := datefrom_sell.Date;
   parambyname('dateto').asdate := dateto_sell.Date;
   parambyname('lb').AsInteger :=rg_type_sell.ItemIndex ;
   parambyname('kind').AsInteger :=rg_kind_sell.ItemIndex+1 ;
   open;
   cxgrdbtblvw_detail.DataController.DataSource :=dm.ds_sell;
 end;
end;

procedure TFm_ypsearch.BitBtn14Click(Sender: TObject);
var xlsFileName:string ;
begin
 if cxgrdbtblvw_detail.DataController.DataSource=nil  then Exit;
  if cxgrdbtblvw_detail.DataController.DataSet.IsEmpty then Exit;
  SaveDialog1.Filter := 'xls files (*.xls)|*.xls|All files (*.*)|*.*';
  IF (SaveDialog1.Execute) and (trim(SaveDialog1.filename)<>'')   then
  begin
    xlsFileName:=SaveDialog1.filename;
  end
  else exit;
  begin
    try
      ExportGrid4ToEXCEL(xlsFileName,cxgrd_data,true,True,true);
      application.MessageBox('数据导出到excel成功！','提示信息',64);
    except
      application.MessageBox('数据导出到excel失败！','提示信息',16);
    end ;
  end;
end;

procedure TFm_ypsearch.Bbtn_statics_ypClick(Sender: TObject);
begin
  with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('select b.ypbh,a.ym,a.gg,e.jx,cksl=sum(d.cksl),a.jldw,d.pfj,d.lsj');
    sql.add(',ckjhjqe=sum(d.cksl*d.pfj),ckje=sum(d.cksl*d.lsj)');
    sql.add('from xyzb a,xykr b,xykchu d,ypjx e,jgxx f');
    sql.add('where a.ypbh=b.ypbh and a.jxbm=e.jxbm and b.rkxh=d.rkxh and f.ksbm=d.ksbm');
    sql.add('and datediff(day,:aadate,ckrq)>=0  and  datediff(day,ckrq,:zzdate)>=0 ');
    if rg_type_ck.ItemIndex<>0 then
    begin
       sql.add('and a.lb=:lb');
       parambyname('lb').AsInteger:=rg_type_ck.ItemIndex;
    end;
    If Trim(Ed_yznr.text)<>'' Then
    begin
     sql.add('and b.ypbh=:ypbh');
     parambyname('ypbh').asstring:=Ed_yznr.text;
    end;
    If Trim(Ed_ksmc.text)<>'' Then
    begin
     sql.add('and d.ksbm=:ksbm');
     parambyname('ksbm').asstring:=Ed_ksmc.text;
    end;
    If cmbx_ckkind.ItemIndex=0 Then
       sql.add('and d.ksbm<>888')
    else
       sql.add('and d.ksbm=888');
    if trim(cmbx_storetype2.Text)<>'全部' then
   begin
     sql.add('and a.storetype=:storetype');
     parambyname('storetype').asstring := trim(cmbx_storetype2.text);
   end;
   sql.add('group by b.ypbh,a.ym,a.gg,e.jx,a.jldw,d.pfj,d.lsj');
   sql.add('order by b.ypbh');

    ParamByName('aadate').asdate:=datefrom.Date;
    ParamByName('zzdate').asdate:=dateto.Date;
    open;
    DBGrid_xzghdw.DataSource :=dm.DS_comm ;

    DBGrid_xzghdw.Columns[0].Title.caption:='药品编码';
    DBGrid_xzghdw.Columns[0].width:=58;
    DBGrid_xzghdw.Columns[1].Title.caption:='药名';
    DBGrid_xzghdw.Columns[1].width:=122;
    DBGrid_xzghdw.Columns[2].Title.caption:='规格';
    DBGrid_xzghdw.Columns[2].width:=78;
    DBGrid_xzghdw.Columns[3].Title.caption:='剂型';
    DBGrid_xzghdw.Columns[3].width:=40;
    DBGrid_xzghdw.Columns[4].Title.caption:='数量';
    DBGrid_xzghdw.Columns[4].width:=36;
    DBGrid_xzghdw.Columns[5].Title.caption:='药库单位';
    DBGrid_xzghdw.Columns[5].width:=36;
    DBGrid_xzghdw.Columns[6].Title.caption:='进货价';
    DBGrid_xzghdw.Columns[6].width:=55;
    DBGrid_xzghdw.Columns[7].Title.caption:='零售价';
    DBGrid_xzghdw.Columns[7].width:=55;
    DBGrid_xzghdw.Columns[8].Title.caption:='进货金额';
    DBGrid_xzghdw.Columns[8].width:=61;
    DBGrid_xzghdw.Columns[9].Title.caption:='出库金额';
    DBGrid_xzghdw.Columns[9].width:=61;
    DBGrid_xzghdw.sumlist.active:=True;
    DBGrid_xzghdw.Columns[0].Footer.valuetype:=fvtStaticText;
    DBGrid_xzghdw.Columns[0].Footer.Value := '合计';
    DBGrid_xzghdw.Columns[1].Footer.valuetype:=fvtcount;
    DBGrid_xzghdw.Columns[8].Footer.valuetype:=fvtSum;
    DBGrid_xzghdw.Columns[9].Footer.valuetype:=fvtSum;
  end;
  btn_print.tag:=3;
end;

procedure TFm_ypsearch.bbtn_search_accordClick(Sender: TObject);
begin
 With dm.Q_use Do
 Begin
   Close;
   Sql.Clear ;
   sql.add('select dh,rq from pub_ypkcdb ');
   sql.add('where ksbm=:ksbm and rq>=:datefrom and rq<=:dateto');
   parambyname('ksbm').asinteger:=fm_czydl.ed_ksmc.tag ;
   parambyname('datefrom').asdatetime :=
     strtodatetime(datetostr(datefrom_accord.date)+' '+timetostr(timefrom_accord.time));
   parambyname('dateto').asdatetime :=
     strtodatetime(datetostr(dateto_accord.date)+' '+timetostr(timeto_accord.time));
   Open;
   DBG_accord.DataSource :=dm.DS_use ;
 End;
end;

procedure TFm_ypsearch.DBG_accordDblClick(Sender: TObject);
begin
  if not DBG_accord.DataSource.DataSet.Active then Exit;
  if DBG_accord.DataSource.DataSet.RecordCount < 1 then Exit;
  with Dm.q_kcl do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select a.ypbh,b.ym,b.gg,a.kcl,b.zxdw,dj=a.lsj,jx=c.jx,');
    sql.add('je=round(a.lsj*a.kcl,4),a.jhj,jhjqe=round(a.jhj*a.kcl,4)');
    Sql.Add('from pub_ypkcmxb a,xyzb b,ypjx c');
    Sql.Add('where a.ypbh=b.ypbh and b.jxbm=c.jxbm and a.dh=:dh and a.ksbm=:ksbm');
    if chk_kcl_accord.Checked=False then
      begin
        SQL.Add('and  a.kcl<>0');
      end;
    If Trim(Ed_yznr_accord.text)<>'' Then
     begin
       SQL.Add('and  a.ypbh=:ypbh');
       ParamByName('ypbh').Asstring:= Ed_yznr_accord.Text;
     end
    Else
     begin
        if strtoint(copy(cbb_checklb_accord.Text,1,pos(':',cbb_checklb_accord.Text)-1))<>0 then
        begin
          sql.add('and b.checklb=:checklb');
          ParamByName('checklb').asinteger:=strtoint(copy(cbb_checklb_accord.Text,1,pos(':',cbb_checklb_accord.Text)-1));
        end ;
     end;
    Sql.add('order by b.lb,a.ypbh');
    ParamByName('dh').asinteger:=dm.q_use.fieldbyname('dh').asinteger;
    ParamByName('ksbm').assmallint:=fm_czydl.ed_ksmc.tag;
    Open;
    DBG_kcl_accord.DataSource :=dm.Ds_kcl ;
    DBG_kcl_accord.Columns[0].Footer.valuetype:=fvtStaticText;
    DBG_kcl_accord.Columns[0].Footer.Value := '合计';
    DBG_kcl_accord.Columns[1].Footer.valuetype:=fvtcount;
    DBG_kcl_accord.Columns[7].Footer.valuetype:=fvtSum;
    DBG_kcl_accord.Columns[9].Footer.valuetype:=fvtSum;
  end;
end;

procedure TFm_ypsearch.DBG_accordMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  StatusBar1.Panels[1].Text:='双击左边列表右边显示明细数据';
end;

procedure TFm_ypsearch.bbtn_detailsearch_accordClick(Sender: TObject);
begin
  DBG_accordDblClick(DBG_accord);
end;

procedure TFm_ypsearch.bbtn_dataout_accordClick(Sender: TObject);
var
  eclApp,WorkBook:Variant;
  xlsFileName:string;
  zds,i,j,k,row:integer;
  temp:variant;
begin
  If DBG_accord.DataSource.DataSet.isempty Then exit;
  If DBG_kcl_accord.DataSource.DataSet.isempty Then exit;
  decodedate(DBG_accord.DataSource.DataSet.FieldByName('rq').AsDateTime,year,month,day);
  SaveDialog1.Filter := 'xls files (*.xls)|*.xls|All files (*.*)|*.*';
  IF (SaveDialog1.Execute) and (trim(SaveDialog1.filename)<>'')   then
  begin
    xlsFileName:=SaveDialog1.filename;
  end
  else exit;
  try
   eclApp:=CreateOleObject('Excel.Application');
   WorkBook:=CreateOleobject('Excel.Sheet');
  except
    ShowMessage('您的机器里未安装Microsoft Excel。');
    Exit;
  end;
 try
   workBook:=eclApp.workBooks.Add;

   zds:=DBG_kcl_accord.FieldCount ;//dm.q_public.FieldCount;
   row:=dm.q_kcl.recordcount+2;

   eclApp.range['A1:'+chr(zds+64)+'1'].Merge(True);
   eclApp.range['A1:'+chr(zds+64)+'1'].HorizontalAlignment :=  xlCenter;
   eclApp.range['A1:'+chr(zds+64)+'1'].VerticalAlignment :=  xlBottom;
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Name := '宋体';
   eclApp.range['A1:'+chr(zds+64)+'1'].Font.Size := 14;

   eclApp.range['A2:'+chr(zds+64)+'2'].font.bold:=true;
   eclApp.range['A2:'+chr(zds+64)+'2'].Font.Size := 10;

   eclApp.cells[1,1]:= inttostr(year)+'年'+inttostr(month)+'月'+inttostr(day)
       +'日参考库存表';
   for I :=0  to  zds-1 do
    begin
       eclApp.cells[2,I+1]:=DBG_kcl_accord.Columns[I].Title.Caption ;
    end;

    J:=3;

    dm.q_kcl .first;
    while not dm.q_kcl.eof do
    begin
      for k:=1 to zds do
      begin
        temp:=Trim(dm.q_kcl.fieldbyname(DBG_kcl_accord.Fields[k-1].FieldName).AsString);
        //temp:=dm.q_public.Fields[k-1].Value ;
        eclApp.cells[j,k]:=temp;
      end;
      dm.q_kcl.next;
      j:=j+1;
    end;

    eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].HorizontalAlignment := xlRight;
    eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].VerticalAlignment :=xlBottom;
    eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].Font.size := 10;
    eclApp.range['A3:'+chr(zds+64)+inttostr(row+1)].RowHeight := 14;

    eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Borders.LineStyle := 1;//加边界
    eclApp.range['A1:'+chr(zds+64)+inttostr(row+1)].Columns.AutoFit;//列自适应

    WorkBook.saveas(xlsFileName);
    application.MessageBox('数据导出到excel成功','提示信息',mb_iconinformation);
    WorkBook.close;
    eclApp.Quit;
 except
     ShowMessage('不能正确操作Excel文件。可能是该文件已被其他程序打开,或系统错误。');
     WorkBook.close;
     eclApp.Quit;
 end;
end;


procedure TFm_ypsearch.BitBtn15Click(Sender: TObject);
begin
  self.close;
end;

procedure TFm_ypsearch.Ed_yznr_accordKeyPress(Sender: TObject;
  var Key: Char);
var    codelen,searchway:integer;
begin
  If key<>#13 Then Exit;
  with dm.Q_xyzb do
  begin
      Close;
      SQL.Clear;
      SQL.Add('Select a.YPBH,a.ym,a.gg,a.zxdw,YLSJ=round(a.ylsj/a.hsb,4),a.hsb,a.cfhsb,a.type,a.skintry');
      SQL.Add('from xyzb a');
      CodeLen := Ed_yznr_accord.GetTextLen;
      FirstAlpha := copy(Ed_yznr_accord.Text,1,1);
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
         ParamByName('SearchCode').AsString := '%'+Ed_yznr_accord.Text+'%';
        end;
      2:              //流水码
        begin
         SQL.Add(' WHERE a.lsm like :SearchCode');
         ParamByName('SearchCode').AsString := trim(Ed_yznr_accord.Text);
        end;
      3:           //药品编码
        begin
         SQL.Add(' WHERE a.ypbh like :SearchCode');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr_accord.Text+'%';
        end;
      4:            //药名
        begin
         SQL.Add(' WHERE a.ym like :SearchCode ');
         ParamByName('SearchCode').AsString := '%'+Ed_yznr_accord.Text+'%';
        end;
      end;
     sql.Add('and a.ylsj>0  and a.ifzy=1 ');
     Open;
      if RecordCount = 1 then  DBGrid_xyzb_accordDblClick(sender)
      else
      if RecordCount > 1 then //多条记录时可以USE KEYBORAD OR MOUSE 定位
      begin
        DBGrid_xyzb_accord.Visible := True;
        DBGrid_xyzb_accord.SetFocus;
      end
      else  Application.MessageBox('无此编码药品或库存量不足','错误信息',mb_iconerror);
  end;
end;


procedure TFm_ypsearch.DBGrid_xyzb_accordDblClick(Sender: TObject);
begin
   lab_kc_accord.caption:=dm.Q_xyzb.fieldbyname('ym').asstring+':'+dm.Q_xyzb.fieldbyname('gg').asstring;
   Ed_yznr_accord.text:=dm.Q_xyzb.fieldbyname('ypbh').asstring;
   bbtn_search_accord.SetFocus ;
end;

procedure TFm_ypsearch.DBGrid_xyzb_accordExit(Sender: TObject);
begin
  (sender as Tdbgrid).Visible :=false;
end;

procedure TFm_ypsearch.DBGrid_xyzb_accordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then DBGrid_xyzb_accordDblClick(Sender);
end;

procedure TFm_ypsearch.frm_medbnk1bbtn_kcClick(Sender: TObject);
begin
  frm_medbnk1.bbtn_kcClick(Sender);
end;

end.
