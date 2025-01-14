unit RecipeDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Mask, DBCtrls,StdCtrls, ExtCtrls, Buttons, ComCtrls,
  Menus, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCardView, cxGridTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridDBTableView, cxGrid,
  cxCheckBox, MemDS, DBAccess, Uni, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB;

type
  TFmRecipeDetail = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Label21: TLabel;
    cmbx_storetype: TComboBox;
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Ed_NO: TEdit;
    DateFrom: TDateTimePicker;
    DateTo: TDateTimePicker;
    BtnFrensh: TBitBtn;
    BtnOKMed: TBitBtn;
    btn_cfdprint: TBitBtn;
    edt_name: TEdit;
    edt_sex: TEdit;
    edt_Age: TEdit;
    edt_Cfdh: TEdit;
    edt_CheckNO: TEdit;
    spl1: TSplitter;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxgrdbtblvw_RecipeDetail: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxStyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    BitBtn7: TBitBtn;
    RG_MedClass: TRadioGroup;
    RG_SearchClass: TRadioGroup;
    btn_ReadCard: TBitBtn;
    cxgrdbtblvw_RecipeDetailym: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailgg: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailmryl: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailcfzxdw: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailts: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailusenum: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailuseunit: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailzsl: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailzxdw: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailusage: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailfrequency: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailqe: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailproduce: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailybbm_country: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailybmc_country: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailypbh: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailcfdh: TcxGridDBColumn;
    tbc1: TTabControl;
    cxgrdbclmn_RecipeDetailfyrq: TcxGridDBColumn;
    cxgrdbclmn_RecipeDetailremark: TcxGridDBColumn;
    btn_return: TBitBtn;
    cxgrdbtblvw_RecipeDetailkcl: TcxGridDBColumn;
    cxgrdbtblvw_RecipeDetailzxdw1: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    Grd_MedSendList: TcxGridDBTableView;
    cxGridcfdh: TcxGridDBColumn;
    cxGridname: TcxGridDBColumn;
    cxGridsex: TcxGridDBColumn;
    cxGridage: TcxGridDBColumn;
    cxGridqe: TcxGridDBColumn;
    cxGridcfrq: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxgrdbyfrq: TcxGridDBColumn;
    cxgrdbclGrdmzh: TcxGridDBColumn;
    edt_patname: TEdit;
    lbl1: TLabel;
    Grd_doctor: TcxGridDBColumn;
    btn_PrintPreview: TBitBtn;
    checkdate: TcxGridDBColumn;
    cbb_yfbm: TComboBox;
    ds_Master: TDataSource;
    ds_Detail: TDataSource;
    Q_Master: TUniQuery;
    Q_Detail: TUniQuery;
    cxgrd_sflb: TcxGridDBColumn;
    procedure BitBtnExitClick(Sender: TObject);
    procedure BtnOKMedClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnFrenshClick(Sender: TObject);
    procedure Grd_MedSendListCellClick(Column: TColumn);
    procedure bbtn_printClick(Sender: TObject);
    procedure btn_cfdprintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxgrdbtblvw_RecipeDetailStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure RBut_nocyClick(Sender: TObject);
    procedure RBut_cyClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btn_ReadCardClick(Sender: TObject);
    procedure RG_SearchClassClick(Sender: TObject);
    procedure RG_MedClassClick(Sender: TObject);
    procedure tbc1Change(Sender: TObject);
    procedure btn_returnClick(Sender: TObject);
    procedure Grd_MedSendList1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edt_patnameKeyPress(Sender: TObject; var Key: Char);
    procedure btn_PrintPreviewClick(Sender: TObject);
    procedure cbb_yfbmChange(Sender: TObject);
    procedure edt_patnameEnter(Sender: TObject);
    procedure edt_patnameExit(Sender: TObject);
  private
    { Private declarations }
    Fmzh: string;
    Fname: string;
    Fksmc: string;
    Fysbm: string;
    Fys_name: string;
    Fage: string;
    Fghrq: tdatetime;
    Fadress: string;
    Fsflb: string;
    fsex: string;
    Fcflb: string;
    FMedClinical : string;
    FAllergyHistory : string;
    Fcfdh:string;
    Fpsn_no:string; //个人编号
    FReturnMzh:string; //查询电子凭证返回的门诊号
    procedure SetStatusBar();
    function  SearchPrescription(SearchClass:integer;datefrom,dateto:tdatetime;mzh:string;ifxy,yfbm,SendMedType:integer;PatName:string):boolean;  //查询处方
    procedure SearchPrescriptionDetail(yfbm,cfdh:integer);//查询处方明细
    procedure GetPrescriptionValue;    //获取处方患者信息
    procedure ClearScreen();
  public
    { Public declarations }
  end;

var
  FmRecipeDetail: TFmRecipeDetail;

implementation

uses Data,
     czydl,
     //report,
     reportform,
     InterfaceMedStore,
    // UIFORMEXT,
     factory,
     medReturn;
{$R *.DFM}

procedure TFmRecipeDetail.BitBtnExitClick(Sender: TObject);
begin
  dm.q_public.close;
  dm.Q_comm.Close;
  Close;
end;

procedure TFmRecipeDetail.BtnOKMedClick(Sender: TObject);
var  AMsg:string;
     ayfbm:integer;
begin
  AMsg:='是否发 '+trim(edt_Name.Text)+' 的药品?';
  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  if MessageDlg(AMsg, mtConfirmation, [mbYes, mbNo], 0)<> mrYes then exit;
  with DM.Q_comm do
  begin
    Close;
    sql.Clear;
    sql.Add('exec mz_yffy_acf :cfdh ,:opid ,:opid_name,:ksbm');
    //ParamByName('cfdh').AsInteger := Q_Master['cfdh'];
    ParamByName('cfdh').AsInteger := strtointdef(edt_Cfdh.text,0);
    ParamByName('opid').AsInteger := strtoint(dm.Fopid);
    ParamByName('opid_name').Asstring := trim(dm.FopidName);
    ParamByName('ksbm').AsInteger :=ayfbm;
  try
    ExecSQL;
    Application.MessageBox('发药成功！','提示信息',MB_ICONINFORMATION);
    case dm.Sysinfo.OutPatRipPrint of
    1,2:btn_cfdprint.Click;
    end;
    BtnFrensh.Click;
  except
   on E: Exception do
   begin
     application.MessageBox(pchar('处方确认时出现错误:'+e.Message),'错误信息',16);
     exit;
   end;
  end;
  end;
end;

procedure TFmRecipeDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm.Q_public1.close;
end;

procedure TFmRecipeDetail.FormShow(Sender: TObject);
var MYMedStore:IMedStore;
begin
  dm.SetStoreValue(cmbx_storetype);
  //--2024.14.22 wk 库房类别
  MYMedStore:=TMedStore.Create;
  MYMedStore.GetYfbm(dm.Q_comm,cbb_yfbm,false);
  cbb_yfbm.ItemIndex:=dm.GetComboxIndex(cbb_yfbm,dm.sysinfo.yfmc);//设置默认药房
  //---

  DateFrom.Date := Date();
  DateTo.Date := Date();
  Panel2.Caption:=dm.sysinfo.hospitalName+dm.sysinfo.yfmc+'发药';
  edt_patname.Clear;

end;

procedure TFmRecipeDetail.BtnFrenshClick(Sender: TObject);
var acfdh,aMedClass,aSendMedType,ayfbm:integer;
begin

  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  case RG_MedClass.ItemIndex of
  0:aMedClass:=0; //全部
  1:aMedClass:=1 ;//西药中成药
  2:aMedClass:=2 ;//中草药
  end;

  case RG_SearchClass.ItemIndex of
  0:FReturnMzh:='';
  1:
  end;

  //发药列表类型 0--待发药 1--已发药 2--作废
  aSendMedType:=tbc1.TabIndex;

  if SearchPrescription(RG_SearchClass.ItemIndex,DateFrom.DateTime,dateto.DateTime,FReturnMzh,aMedClass,ayfbm,aSendMedType,trim(edt_patname.Text)) then
  begin
    GetPrescriptionValue;
    acfdh:=strtointdef(edt_Cfdh.text,0);
    SearchPrescriptionDetail(ayfbm,acfdh);

    if aSendMedType=0 then
      BtnOKMed.Enabled:=true
    else
      BtnOKMed.Enabled:=false;

    //Grd_MedSendList.DataController.DataSource:=dm.DS_public;
    //cxgrdbtblvw_RecipeDetail.DataController.DataSource :=dm.DS_public1;
    cxGrid2.SetFocus ;
  end else
  begin
    BtnOKMed.Enabled:=false;
    Q_Detail.Close;
    ClearScreen;
  end;
end;

procedure TFmRecipeDetail.Grd_MedSendListCellClick(Column: TColumn);
var acfdh,ayfbm:integer;
begin
  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  if Grd_MedSendList.DataController.DataSource=nil then exit;
  GetPrescriptionValue;
  acfdh:=strtointdef(edt_Cfdh.text,0);
  SearchPrescriptionDetail(ayfbm,acfdh);
  SetStatusBar;
end;

procedure TFmRecipeDetail.SetStatusBar;
begin
  //  StatusBar1.Panels[0].Text:='病人姓名:'+Grd_MedSendList.Fields[1].AsString;
   case RG_MedClass.ItemIndex of
   0:StatusBar1.Panels[1].Text:='药品类别:西药中成药';
   1:StatusBar1.Panels[1].Text:='药品类别:中草药';
   end;
   StatusBar1.Panels[2].Text:='记录数:'+inttostr( cxgrdbtblvw_RecipeDetail.DataController.DataSource.DataSet.RecordCount);
end;

procedure TFmRecipeDetail.bbtn_printClick(Sender: TObject);
var acfdh,aMedClass:integer;
    MYMedStore:IMedStore;
begin
  if  trim(edt_Cfdh.text)='' then
  begin
    application.MessageBox('没有发药信息不能打印！','信息',MB_ICONWARNING);
    exit;
  end;
  MYMedStore:=TMedStore.Create;
  acfdh:=strtointdef(edt_Cfdh.text,0);
  case RG_MedClass.ItemIndex of
  0:aMedClass:=WesternMed;
  1:aMedClass:=ChineseMed;
  end;
  if MYMedStore.SearchSendMedInfo(dm.Q_cfcx,OutPatient,acfdh) then
  MYMedStore.PrintSendMedInfo(Fm_report.frxrprt1,OutPatient,aMedClass);
end;

procedure TFmRecipeDetail.btn_cfdprintClick(Sender: TObject);
var amzh,acfdh,aMedClass,ano:integer;
    MYMedStore:IMedStore;
begin
  if  trim(edt_Cfdh.text)='' then
  begin
    application.MessageBox('没有病人处方信息不能打印！','信息',MB_ICONWARNING);
    exit;
  end;

  amzh:=strtointdef(trim(Ed_NO.text),0);
  acfdh:=strtointdef(trim(edt_Cfdh.text),0);
  ano:=strtointdef(trim(edt_CheckNO.text),0);

  case RG_MedClass.ItemIndex of
  0: begin
    if (Q_Master.FieldByName('ifxy').AsInteger and 255)=1 then
     aMedClass:= WesternMed
    else
    aMedClass:= ChineseMed;
  end;
  1:aMedClass:=WesternMed;
  2:aMedClass:=ChineseMed;
  end;
  MYMedStore:=TMedStore.Create;
  MYMedStore.PrintRipInfo(Fm_report.frxrprt1,dm.Q_RipTitle,dm.qrcfview1,dm.qrcfview2,dm.qrcfview3,dm.qrcfview4,dm.Q_temp,amzh,acfdh,aMedClass,ano);
end;

function TFmRecipeDetail.SearchPrescription(SearchClass:integer;datefrom,dateto:tdatetime;mzh:string;ifxy,yfbm,SendMedType:integer;patname:string):boolean;
begin
 result:=false;
  case SearchClass of
  0:begin
      with Q_Master do
      begin
        close;
        sql.Clear;
        sql.add('exec Medstore_SearchSendMedlist :datefrom,:dateto,:ifxy,0,:yfbm,:SendMedType');
        ParamByName('DateFrom').AsDatetime := datefrom;
        ParamByName('DateTo').AsDatetime := dateto;
        parambyname('ifxy').assmallint:=ifxy;
        parambyname('yfbm').asinteger:=yfbm;//sysinfo.Ksbm ;
        parambyname('SendMedType').asinteger:=SendMedType;
        open;
        if isempty then exit;
      end;
     end;
  1:begin
      with Q_Master do
      begin
        close;
        sql.Clear;
        sql.add('exec mz_fy_cxcf_mzh :mzh,:ifxy,0,:yfbm'); //
        parambyname('mzh').asstring:=mzh;
        parambyname('ifxy').assmallint:=ifxy;
        parambyname('yfbm').asinteger:=yfbm;//sysinfo.Ksbm ;
        open;
        if isempty then exit;
     end;
  end;
  2:begin
    with Q_Master do
    begin
      close;
      sql.Clear;
      sql.add(' SELECT    distinct    ');
      sql.add('              a.mzh,   ');
      sql.add('              a.[Name],');
      sql.add('              c.qe,    ');
      sql.add('              a.age,   ');
      sql.add('              a.Sex,   ');
      sql.add('              b.[no],  ');
      sql.add('              c.CFDH,  ');
      sql.add('              b.checkdate, ');
      sql.add('              c.cfrq,  ');
      sql.add('              c.fyrq,  ');
      sql.add('              c.ifxy,  ');
      sql.add('          doctor=e.xm ');
      sql.add('FROM DepPatientInfo a(nolock)');
      sql.add('    ,DepCheck b (nolock)     ');
      sql.add('    ,Mzcfdb c (nolock)       ');
      sql.add('    ,zgzb e (nolock)       ');

      case SendMedType of
      0,1:sql.add(' ');
      2,3:sql.add(',medstore_Return d(nolock)');
      end;
      sql.add('     WHERE  a.mzh = b.Mzh     ');
      sql.add('          AND b.[NO] = c.[no] ');
      sql.add('          AND c.cfys = e.bh ');
      sql.add('          AND c.yfbm = :yfbm  ');
      case ifxy of
      0:sql.add('');
      1,2: sql.add(' AND ( c.ifxy&255 ) = :ifxy');
      end;
      sql.add('          AND a.ifjz = 0       ');

      case SendMedType of
      0:begin
          sql.add('AND b.no_zf IS NULL  ');
          sql.add('AND c.fyr IS NULL    ');
          sql.add('AND fyrq IS NULL ');
          sql.add('AND b.qe > 0         ');
          sql.add('AND datediff(day,c.cfrq,:datefrom)<=0');
          sql.add('AND datediff(day,c.cfrq,:dateto)>=0');
      end;
      1:begin
          sql.add('AND b.no_zf IS NULL  ');
          sql.add('AND fyrq IS not NULL ');
          sql.add('AND b.qe > 0         ');
          sql.add('and b.no not in (select jsdh from medstore_Return)');
          sql.add('AND datediff(day,c.fyrq,:datefrom)<=0');
          sql.add('AND datediff(day,c.fyrq,:dateto)>=0');
      end;
      2:begin
         sql.add(' and b.[no]=d.jsdh');
         sql.add(' and a.mzh=d.zyh');
         sql.add(' AND fyrq IS not NULL ');
         sql.add(' and d.affirmopid is null');
         sql.add('AND datediff(day,c.fyrq,:datefrom)<=0');
         sql.add('AND datediff(day,c.fyrq,:dateto)>=0');

      end;
      3:begin
         sql.add(' and b.[no]=d.jsdh');
         sql.add(' and a.mzh=d.zyh');
         sql.add(' AND fyrq IS not NULL ');
         sql.add(' and d.affirmopid is not null');
         sql.add('AND datediff(day,c.fyrq,:datefrom)<=0');
         sql.add('AND datediff(day,c.fyrq,:dateto)>=0');
        end;
      end;
      sql.add('and a.[Name] like :name');
      parambyname('yfbm').asinteger:=yfbm;//sysinfo.Ksbm ;
      case ifxy of
      1,2: parambyname('ifxy').assmallint:=ifxy;
      end;
      parambyname('name').AsString:=patname+'%';
      parambyname('datefrom').AsDateTime:=datefrom;
      parambyname('dateto').AsDateTime:=dateto;
      open;
      if isempty then exit;
    end;
  end;
 end;
  result:=true;
end;

procedure TFmRecipeDetail.SearchPrescriptionDetail(yfbm,cfdh:integer);
begin

  with q_detail do
  begin
    close;
    sql.Clear;
    //sql.add('Select  b.ym,b.gg,a.mryl,b.cfzxdw,a.ts,a.usenum,a.useunit,a.zsl,b.zxdw,a.usage,a.frequency,a.qe,b.produce,b.ybbm_country,b.ybmc_country,b.ypbh,a.cfdh,c.fyrq');
    sql.add('SELECT a.cfdh,');
    sql.add('   c.ypbh,');
    sql.add('   c.ym, ');
    sql.add('   c.gg, ');
    sql.add('   b.mryl,');
    sql.add('   c.cfzxdw,');
    sql.add('   b.ts,    ');
    sql.add('   b.usenum,');
    sql.add('   b.useunit,');
    sql.add('   b.zsl,    ');
    sql.add('   c.zxdw,   ');
    sql.add('   b.usage,  ');
    sql.add('   b.frequency,');
    sql.add('   b.qe,       ');
    sql.add('   c.produce,  ');
    sql.add('   c.ybbm_country,');
    sql.add('   c.ybmc_country,');
    sql.add('   c.ybbm_country,');
    sql.add('   c.ybmc_country,');
    sql.add('   kcl=sum(d.kcl),         ');
    sql.add('   zxdw1=c.zxdw   ');
    sql.add('FROM   mzcfdb a (nolock)  ');
    sql.add('   INNER JOIN Mzcfyb b (nolock) ');
    sql.add('      ON a.cfdh = b.cfdh ');
    sql.add('   INNER JOIN xyzb c  (nolock)    ');
    sql.add('      ON b.ypbh = c.ypbh ');
    sql.add('   left JOIN  nkyc d   (nolock)   ');
    sql.add('      ON b.ypbh = d.ypbh ');
    sql.add('     and a.yfbm = d.ksbm ');
    sql.add('WHERE  a.cfdh = :cfdh    ');
    sql.add('group by a.cfdh,c.ypbh,c.ym,c.gg,b.mryl,c.cfzxdw,');
    sql.add('         b.ts,b.usenum,b.useunit,b.zsl,c.zxdw,b.usage,');
    sql.add('         b.frequency,b.qe,c.produce,c.ybbm_country,c.ybmc_country,');
    sql.add('         c.ybbm_country,c.ybmc_country,b.xh');
    sql.add('ORDER  BY b.xh           ');
    parambyname('cfdh').AsInteger:=cfdh;
    open;
  end;
end;

procedure TFmRecipeDetail.GetPrescriptionValue;
begin
   Ed_NO.Text:=q_master.fieldbyname('mzh').asstring;
   edt_name.Text:=q_master.fieldbyname('Name').asstring;
   edt_sex.Text:=q_master.fieldbyname('sex').asstring;
   edt_Age.Text:=q_master.fieldbyname('age').asstring;
   edt_Cfdh.Text:=q_master.fieldbyname('cfdh').asstring;
   edt_CheckNO.Text:=q_master.fieldbyname('NO').asstring;
end;

procedure TFmRecipeDetail.ClearScreen;
begin
   Ed_NO.Clear;
   edt_name.Clear;
   edt_sex.Clear;
   edt_Age.Clear;
   edt_Cfdh.Clear;
   edt_CheckNO.Clear;
   //edt_patname.Clear;
end;

procedure TFmRecipeDetail.FormCreate(Sender: TObject);
begin
  //dm.InitGrid(1,'MedStore_RecipeDetail.xml',cxgrdbtblvw_RecipeDetail);
end;

procedure TFmRecipeDetail.cxgrdbtblvw_RecipeDetailStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  //--2022.07.12 wk 量药量显示红色
 // if AItem.Index=7 then
 // AStyle:=cxStyle25;
end;

procedure TFmRecipeDetail.RBut_nocyClick(Sender: TObject);
begin
  BtnFrensh.click;
end;

procedure TFmRecipeDetail.RBut_cyClick(Sender: TObject);
begin
  BtnFrensh.click;
end;

procedure TFmRecipeDetail.BitBtn7Click(Sender: TObject);
begin
  self.close;
end;

procedure TFmRecipeDetail.btn_ReadCardClick(Sender: TObject);
var  MYMedStore:IMedStore;
    outparam:PAnsiChar;
begin

{  outparam := StrAlloc(1024);
  GetReadICKForm(1).ShowModel_OutParam(APPLICATION.Handle,PAnsiChar(trim(Fpsn_no)),outparam);

  if trim(string (outparam))<>'|' then
  begin
    Fpsn_no:=Getstr(trim(string(outparam))+'|','|',2);
    MYMedStore:=TMedStore.Create;
    FReturnMzh:=MYMedStore.SearchRegisterID(dm.Q_public,OutPatient,Fpsn_no);
    BtnFrensh.Click;
  end;
  StrDispose(outparam);   }
end;

procedure TFmRecipeDetail.RG_SearchClassClick(Sender: TObject);
begin
 case RG_SearchClass.ItemIndex of
 0:btn_ReadCard.Enabled:=false;
 1:btn_ReadCard.Enabled:=true;
 2:edt_patname.SetFocus;
 end;
end;

procedure TFmRecipeDetail.RG_MedClassClick(Sender: TObject);
begin
  BtnFrensh.Click;
end;

procedure TFmRecipeDetail.tbc1Change(Sender: TObject);
begin
  case tbc1.TabIndex of
  0:begin
     Grd_MedSendList.Styles.Content:=cxStyle13;
     btn_return.Enabled:=false;
    end;
  1:begin
      Grd_MedSendList.Styles.Content:=cxStyle10;
      btn_return.Enabled:=true;
    end;
  2:begin
     Grd_MedSendList.Styles.Content:=cxStyle25;
      btn_return.Enabled:=true;
    end;
  3:begin
       Grd_MedSendList.Styles.Content:=cxStyle25;
      btn_return.Enabled:=false;
    end;
  end;
  BtnFrensh.Click;
end;

procedure TFmRecipeDetail.btn_returnClick(Sender: TObject);
begin
  fm_medReturn:=Tfm_medReturn.Create(self);
  fm_medReturn.Edt_no.Text:=trim(edt_CheckNO.text);
  fm_medReturn.Fyfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  fm_medReturn.showmodal;
  fm_medReturn.free;
end;

procedure TFmRecipeDetail.cbb_yfbmChange(Sender: TObject);
begin
 Panel2.Caption:= dm.GetComboxValue(cbb_yfbm,':',false);
 BtnFrensh.Click;
end;

procedure TFmRecipeDetail.Grd_MedSendList1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var acfdh,ayfbm:integer;
begin
  if Grd_MedSendList.DataController.DataSource=nil then exit;
  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  GetPrescriptionValue;
  acfdh:=strtointdef(edt_Cfdh.text,0);
  SearchPrescriptionDetail(ayfbm,acfdh);
  SetStatusBar;
end;

procedure TFmRecipeDetail.edt_patnameEnter(Sender: TObject);
begin
  RG_SearchClass.ItemIndex:=2;
end;

procedure TFmRecipeDetail.edt_patnameExit(Sender: TObject);
begin
  RG_SearchClass.ItemIndex:=0;
end;

procedure TFmRecipeDetail.edt_patnameKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then  BtnFrensh.Click;
end;

procedure TFmRecipeDetail.btn_PrintPreviewClick(Sender: TObject);
var amzh,acfdh,aMedClass,ano,aSendMedType,applyID:integer;
    MYMedStore:IMedStore;
begin
  aSendMedType:=tbc1.TabIndex;
  if  trim(edt_Cfdh.text)='' then
  begin
    application.MessageBox('没有病人处方信息不能打印！','信息',MB_ICONWARNING);
    exit;
  end;

  amzh:=strtointdef(trim(Ed_NO.text),0);

  ano:=strtointdef(trim(edt_CheckNO.text),0);
  case RG_MedClass.ItemIndex of
  0: begin
    if (Q_Master.FieldByName('ifxy').AsInteger and 255)=1 then
       aMedClass:= WesternMed
    else
      aMedClass:= ChineseMed;
  end;
  1:aMedClass:=WesternMed;
  2:aMedClass:=ChineseMed;
  end;
  MYMedStore:=TMedStore.Create;
  case aSendMedType of
  0,1:begin
    acfdh:=strtointdef(trim(edt_Cfdh.text),0);
    MYMedStore.PrintRipInfoPreview(Fm_report.frxrprt1,dm.Q_RipTitle,dm.qrcfview1,dm.qrcfview2,dm.qrcfview3,dm.qrcfview4,dm.q_temp,amzh,acfdh,aMedClass,ano);
  end;
  2,3:begin
     //applyID:=MYMedStore.SearchReturnApplyID(DM.Q_song, ANO,AMZH);
     acfdh:=strtointdef(trim(edt_Cfdh.text),0);
     MYMedStore.PrintRipInfoReturnPreview(Fm_report.frxrprt1,dm.Q_RipTitle,dm.qrcfview1,dm.qrcfview2,dm.qrcfview3,dm.qrcfview4,dm.q_temp,amzh,acfdh,aMedClass,ano);
  end;
 end;
end;

end.
