unit Balance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, ComCtrls, Buttons, cxGridCardView,MemDS,
  DBAccess, Uni, Grids, DBGrids, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxScrollbarAnnotations;

type
  TFrame_Balance = class(TFrame)
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label7: TLabel;
    lbl_MedName: TLabel;
    Label2: TLabel;
    btn_Search: TBitBtn;
    DT_from: TDateTimePicker;
    DT_to: TDateTimePicker;
    btn_ExportXls: TBitBtn;
    BitBtn11: TBitBtn;
    rg1: TRadioGroup;
    btn_SearchDetail: TBitBtn;
    btn_print: TBitBtn;
    cbb_yfbm: TComboBox;
    cxgrd: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvw: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    Splitter1: TSplitter;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Q_Master: TUniQuery;
    DS_master: TDataSource;
    Q_detail: TUniQuery;
    DS_detail: TDataSource;
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
    edt_SearchCondition: TEdit;
    Q_xyzb: TUniQuery;
    DS_xyzb: TDataSource;
    DBGrid_xyzb: TDBGrid;
    procedure btn_SearchClick(Sender: TObject);
    procedure btn_SearchDetailClick(Sender: TObject);
    procedure cxgrdbtblvwCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edt_SearchConditionKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_xyzbDblClick(Sender: TObject);
    procedure DBGrid_xyzbExit(Sender: TObject);
    procedure DBGrid_xyzbKeyPress(Sender: TObject; var Key: Char);
    procedure btn_ExportXlsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses data,InterfaceMedStore;

{$R *.dfm}

procedure TFrame_Balance.btn_SearchClick(Sender: TObject);
var  MYMedStore:IMedStore;
     ayfbm,aMedClass:integer;
     aypbh:string;
begin
  MYMedStore:=TMedStore.Create;
  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  aypbh:=trim(edt_SearchCondition.Text);
  aMedClass:=rg1.ItemIndex;
  //dm.InitGrid(1,'MedStore_BalanceMaster.xml',cxgrdbtblvw);
  MYMedStore.SearchBalanceMaster(Q_master,DT_from.date,DT_to.date,ayfbm,aypbh,aMedClass);
  Q_detail.Close;
end;

procedure TFrame_Balance.btn_SearchDetailClick(Sender: TObject);
var  MYMedStore:IMedStore;
     ayfbm,aMedClass:integer;
     aypbh:string;
begin
  if Q_master.IsEmpty then exit;
  MYMedStore:=TMedStore.Create;
  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  aypbh:=Q_master.fieldbyname('ypbh').AsString;
  aMedClass:=rg1.ItemIndex;
  //dm.InitGrid(1,'MedStore_Balancedetail.xml',cxGridDBTableView4);
  MYMedStore.SearchBalancedetail(Q_detail,DT_from.date,DT_to.date,ayfbm,aypbh);
end;

procedure TFrame_Balance.cxgrdbtblvwCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btn_SearchDetail.Click;
end;

procedure TFrame_Balance.edt_SearchConditionKeyPress(Sender: TObject; var Key: Char);
var  MYMedStore:IMedStore;
     ayfbm:integer;
begin
 IF (key<>#13) THEN exit;
 ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
 MYMedStore:=TMedStore.Create;
 IF MYMedStore.SearchMedinfo(Q_xyzb,ayfbm,edt_SearchCondition.Text) THEN
 begin
   DBGrid_XYZB.Visible := True;
   DBGrid_XYZB.SetFocus;
 end;

end;

procedure TFrame_Balance.DBGrid_xyzbDblClick(Sender: TObject);
VAR  aypbh,aym:STRING;
begin
  aypbh:=DBGrid_xyzb.DataSource.DataSet.fieldbyname('ypbh').AsString;
  aym:=DBGrid_xyzb.DataSource.DataSet.fieldbyname('ym').AsString+DBGrid_xyzb.DataSource.DataSet.fieldbyname('gg').AsString;
  edt_SearchCondition.Text:=aypbh;
  lbl_MedName.Caption:=aym;
  btn_Search.SetFocus;

end;

procedure TFrame_Balance.DBGrid_xyzbExit(Sender: TObject);
begin
  (sender as Tdbgrid).Visible :=false;
end;

procedure TFrame_Balance.DBGrid_xyzbKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then DBGrid_xyzbDblClick(Sender);
end;

procedure TFrame_Balance.btn_ExportXlsClick(Sender: TObject);
var  MYMedStore:IMedStore;
     aMyTitle:TMyTitle;
     aTemplateName,arklbName,aghdw:string;
begin
    if not Q_Master.IsEmpty then
    begin
      aTemplateName:='结存汇总表';
      aMyTitle:=TMyTitle.Create;
      aMyTitle.Title:='结存汇总表';
      aMyTitle.FDateFrom:=datetostr(DT_from.date)+'至'+datetostr(DT_to.Date);
      aMyTitle.FopidName:=dm.FopidName;
      aMyTitle.FDeptName:=dm.GetComboxValue(cbb_yfbm,':',false);
      MYMedStore:=TMedStore.Create;
      //MYMedStore.ExportXLSTitle(FlexCelReport1,XLSAdapter1,DT_from.date,DT_to.Date,aTemplateName,aMyTitle);
    end  else
    begin
      MessageDlg('没有数据不能导出XLS！',mtInformation,[mbOK],0);
      exit;
    end;
end;

end.
