unit BoilMed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, DB, MemDS, DBAccess, Uni,cxControls, cxGrid, StdCtrls,
  Buttons, ComCtrls, ExtCtrls, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxNavigator, dxDateRanges, dxScrollbarAnnotations;

type
  TFrame_BoilMed = class(TFrame)
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label7: TLabel;
    btn_Search: TBitBtn;
    DT_from: TDateTimePicker;
    DT_to: TDateTimePicker;
    btn_ExportXls: TBitBtn;
    BitBtn11: TBitBtn;
    rg1: TRadioGroup;
    rg_SearchCondition: TRadioGroup;
    RadioGroup1: TRadioGroup;
    cxgrd: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvw: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    Q_Result: TUniQuery;
    DS_Result: TDataSource;
    procedure btn_SearchClick(Sender: TObject);
    procedure btn_ExportXlsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses InterfaceMedStore, data;

{$R *.dfm}

procedure TFrame_BoilMed.btn_SearchClick(Sender: TObject);
var  MYMedStore:IMedStore;
     arkrq:string;
begin
  MYMedStore:=TMedStore.Create;
  MYMedStore.SearchBoilMedFee(Q_Result,RadioGroup1.ItemIndex,DT_from.DateTime,dt_to.DateTime);
end;

procedure TFrame_BoilMed.btn_ExportXlsClick(Sender: TObject);
var  MYMedStore:IMedStore;
     aTemplateName:string;
begin
  if not Q_Result.IsEmpty then
  begin
    aTemplateName:='煎药费';
    MYMedStore:=TMedStore.Create;
    MYMedStore.ExportXLS('Q_Result',Q_Result,DT_from.date,DT_to.Date,aTemplateName);
  end  else
  begin
    MessageDlg('没有数据不能导出XLS！',mtInformation,[mbOK],0);
    exit;
  end;

end;

end.
