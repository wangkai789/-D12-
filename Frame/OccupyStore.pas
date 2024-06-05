unit OccupyStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCardView, cxGridTableView,MemDS,
  DBAccess, Uni, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridDBTableView, cxGrid, ExtCtrls, ComCtrls,
  StdCtrls, Buttons, cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters,
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
  TFrame_OccupyStore = class(TFrame)
    GroupBox3: TGroupBox;
    Label18: TLabel;
    Label39: TLabel;
    btn_Search: TBitBtn;
    edt_SearchCondition: TEdit;
    BitBtn11: TBitBtn;
    btn_SearchDetail: TBitBtn;
    cbb_yfbm: TComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    cxgrd: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvw: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    Q_Master: TUniQuery;
    DS_master: TDataSource;
    Q_detail: TUniQuery;
    DS_detail: TDataSource;
    Q_detailALL: TUniQuery;
    DS_detailALL: TDataSource;
    Q_xyzb: TUniQuery;
    DS_xyzb: TDataSource;
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
    cxstyl1: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    btn_DeleteOccupy: TBitBtn;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxgrdbtblvwdetail: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    procedure btn_SearchClick(Sender: TObject);
    procedure btn_SearchDetailClick(Sender: TObject);
    procedure cxgrdbtblvwCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_DeleteOccupyClick(Sender: TObject);
    procedure cxgrdbtblvwdetailDblClick(Sender: TObject);
    procedure edt_SearchConditionKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses  InterfaceMedStore,data;

{$R *.dfm}

procedure TFrame_OccupyStore.btn_SearchClick(Sender: TObject);
var  MYMedStore:IMedStore;
     ayfbm:integer;
     aypbh,aLocateypbh:string;
begin
  MYMedStore:=TMedStore.Create;
  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  aypbh:=trim(edt_SearchCondition.Text);
  if Q_master.IsEmpty then
    aLocateypbh:=''
  else
  aLocateypbh:=Q_master.FieldByName('ypbh').AsString;
  if MYMedStore.SearchStoreOccupyMaster(Q_master,ayfbm,aypbh) then
  begin
    Q_master.Locate('ypbh',aLocateypbh, []);
    cxgrd.SetFocus;
    btn_SearchDetail.Click;
  end;
end;

procedure TFrame_OccupyStore.btn_SearchDetailClick(Sender: TObject);
var  MYMedStore:IMedStore;
     ayfbm:integer;
     aypbh:string;
begin
  if Q_master.IsEmpty then exit;
  MYMedStore:=TMedStore.Create;
  ayfbm:=strtoint(dm.GetComboxValue(cbb_yfbm,':',true));
  aypbh:=Q_master.fieldbyname('ypbh').asstring;
  MYMedStore.SearchStoreOccupyDetail(Q_detail,ayfbm,aypbh);
end;

procedure TFrame_OccupyStore.cxgrdbtblvwCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btn_SearchDetail.Click;
end;

procedure TFrame_OccupyStore.btn_DeleteOccupyClick(Sender: TObject);
var  MYMedStore:IMedStore;
     arowid:integer;
     aypbh:String ;
begin
  if Q_detail.IsEmpty then exit;
  if Q_master.IsEmpty then exit;
  MYMedStore:=TMedStore.Create;
  arowid:=Q_detail.fieldbyname('rowid').AsInteger;
  if application.messagebox('是否删除记录？','信息',mb_yesno+MB_DEFBUTTON2+MB_ICONQUESTION)=idno  then exit;
  MYMedStore.DeleteStoreOccupy(Q_detail,arowid);
  btn_Search.Click;
end;

procedure TFrame_OccupyStore.cxgrdbtblvwdetailDblClick(Sender: TObject);
begin
  btn_DeleteOccupy.Click;
end;

procedure TFrame_OccupyStore.edt_SearchConditionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then  btn_Search.Click;
end;

end.
