unit MedPlaceUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, DBCtrls,IniFiles,ComCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, MemDS, DBAccess, Uni, ActnList, ImgList,
  ToolWin, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  System.Actions, System.ImageList;

type
  TFrm_MedPlace = class(TForm)
    pgc_info: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    EdCode: TEdit;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    dbgrd_ypkind: TDBGrid;
    Panel3: TPanel;
    Label2: TLabel;
    EdCode_kind: TEdit;
    btn_add: TButton;
    btn_del: TButton;
    ed_ym: TEdit;
    ed_gg: TEdit;
    ed_jx: TEdit;
    ed_zxdw: TEdit;
    Ed_produce: TEdit;
    dbgrd_xyzb: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    BitBtn1: TBitBtn;
    Q_Detail: TUniQuery;
    DS_detail: TDataSource;
    cxgrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxgrdbtblvw_Detail: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    tlb1: TToolBar;
    ToolButton1: TToolButton;
    btnSave: TToolButton;
    btnExport: TToolButton;
    btnclose: TToolButton;
    il1: TImageList;
    actlst1: TActionList;
    act_search: TAction;
    Act_export: TAction;
    act_Save: TAction;
    act_close: TAction;
    btnUpdate: TToolButton;
    act_Update: TAction;
    rg_MedClass: TRadioGroup;
    procedure EdCodeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure EdCodeEnter(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure EdCode_kindEnter(Sender: TObject);
    procedure EdCode_kindKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrd_xyzbDblClick(Sender: TObject);
    procedure dbgrd_xyzbKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd_xyzbExit(Sender: TObject);
    procedure pgc_infoChange(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure act_UpdateExecute(Sender: TObject);
    procedure act_searchExecute(Sender: TObject);
    procedure act_SaveExecute(Sender: TObject);
    procedure act_closeExecute(Sender: TObject);
    procedure Act_exportExecute(Sender: TObject);
  private
    { Private declarations }
    function list_ypkind():boolean;
  public
    { Public declarations }
  end;

var
  Frm_MedPlace: TFrm_MedPlace;
  FirstAlpha:string[1];

implementation

uses data, Factory,InterfaceMedStore;

{$R *.DFM}
function TFrm_MedPlace.list_ypkind():boolean;
begin
  with dm.Q_MedStore do
  begin
    Close;
    SQL.Clear ;
    SQL.Add('select * From pub_ypsendset');
    Open ;
    dbgrd_ypkind.DataSource :=dm.DS_MedStore;
  end;
end;
procedure TFrm_MedPlace.EdCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if key<>#13 then exit;
  act_search.Execute;
end;

procedure TFrm_MedPlace.DBGrid1ColExit(Sender: TObject);
begin
//  if dbgrid1.selectedfield.FieldName=dblookupcombobox1.field.fieldname then  dblookupcombobox1.Visible:=false;
end;

procedure TFrm_MedPlace.EdCodeEnter(Sender: TObject);
begin
EdCode.Clear;
end;

procedure TFrm_MedPlace.btn_closeClick(Sender: TObject);
begin
  Close ;
end;

procedure TFrm_MedPlace.FormShow(Sender: TObject);
begin
   list_ypkind();
   pgc_info.ActivePageIndex :=0 ;
   dm.InitGrid(1,'MedStore_StoreInplace.xml',cxgrdbtblvw_Detail);
   cxgrdbtblvw_Detail.OptionsData.Editing:=false;
end;

procedure TFrm_MedPlace.btn_addClick(Sender: TObject);
begin
  if Trim(ed_ym.Text)='' then Exit ;
  with dm.Q_comm do
  begin
    Close ;
    SQL.Clear ;
    SQL.Add('insert into pub_ypsendset(ypbh,ym,gg,jx,zxdw,produce)') ;
    SQL.Add('values (:ypbh,:ym,:gg,:jx,:zxdw,:produce)') ;
    ParamByName('ypbh').AsString :=Trim(EdCode_kind.Text);
    ParamByName('ym').AsString :=Trim(Ed_ym.Text);
    ParamByName('gg').AsString :=Trim(Ed_gg.Text);
    ParamByName('jx').AsString :=Trim(Ed_jx.Text);
    ParamByName('zxdw').AsString :=Trim(Ed_zxdw.Text);
    ParamByName('produce').AsString :=Trim(Ed_produce.Text);
    try
      ExecSQL ;
      application.messagebox(PChar('药品发药大类添加成功!'),'提示信息',64);
    except
       on E: Exception do
        begin
          application.messagebox(PChar('药品发药大类添加错误:'+e.Message),'出错信息',mb_iconerror);
          Exit ;
        end;
    end ;
  end;
  list_ypkind();
  EdCode_kind.SetFocus ;
end;

procedure TFrm_MedPlace.btn_delClick(Sender: TObject);
var ypbh:string ;
begin
  if dbgrd_ypkind.DataSource=nil then Exit ;
  if dbgrd_ypkind.DataSource.DataSet.RecordCount=0 then Exit ;
  ypbh:=dbgrd_ypkind.DataSource.DataSet.fieldbyname('ypbh').AsString ;
  with dm.Q_comm do
  begin
    Close ;
    SQL.Clear ;
    SQL.Add('delete pub_ypsendset where ypbh=:ypbh') ;
    ParamByName('ypbh').AsString :=Trim(ypbh);
    try
      ExecSQL ;
      application.messagebox(PChar('药品发药大类删除成功!'),'提示信息',64);
    except
       on E: Exception do
        begin
          application.messagebox(PChar('药品发药大类删除错误:'+e.Message),'出错信息',mb_iconerror);
          Exit ;
        end;
    end ;
  end;
  list_ypkind();
end;

procedure TFrm_MedPlace.EdCode_kindEnter(Sender: TObject);
begin
  EdCode_kind.Clear ;
  Ed_ym.Clear ;
  Ed_gg.Clear ;
  Ed_jx.Clear ;
  Ed_zxdw.Clear ;
  Ed_produce.Clear ;
end;

procedure TFrm_MedPlace.EdCode_kindKeyPress(Sender: TObject; var Key: Char);
var  codelen,searchway:integer;
begin
  If key<>#13 then Exit;
  with dm.Q_xyzb do
  begin
      Close;
      SQL.Clear;
      SQL.Add('Select a.YPBH,a.ym,a.gg,a.zxdw,YLSJ=round(a.ylsj/a.hsb,4),a.hsb');
      SQL.Add(',a.cfhsb,a.type,a.cfzxdw,a.jx,a.produce');
      SQL.Add('from xyzb a');
      CodeLen := EdCode_kind.GetTextLen;
      FirstAlpha := copy(EdCode_kind.Text,1,1);
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
         ParamByName('SearchCode').AsString := '%'+EdCode_kind.Text+'%';
        end;
      2:              //流水码
        begin
         SQL.Add(' WHERE a.lsm like :SearchCode');
         ParamByName('SearchCode').AsString := trim(EdCode_kind.Text);
        end;
      3:           //药品编码
        begin
         SQL.Add(' WHERE a.ypbh like :SearchCode');
         ParamByName('SearchCode').AsString := '%'+EdCode_kind.Text+'%';
        end;
      4:            //药名
        begin
         SQL.Add(' WHERE a.ym like :SearchCode ');
         ParamByName('SearchCode').AsString := '%'+EdCode_kind.Text+'%';
        end;
      end;
     sql.Add('and a.ylsj>0  and a.ifzy=1 ');
     Open;
      if RecordCount = 1 then  dbgrd_xyzbDblClick(sender)
      else
      if RecordCount > 1 then //多条记录时可以USE KEYBORAD OR MOUSE 定位
      begin
        dbgrd_xyzb.Visible := True;
        dbgrd_xyzb.SetFocus;
      end
      else  Application.MessageBox('无此编码药品!','错误信息',mb_iconerror);
  end;
end;

procedure TFrm_MedPlace.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dbgrd_ypkind.DataSource :=nil ;
end;

procedure TFrm_MedPlace.dbgrd_xyzbDblClick(Sender: TObject);
begin
  EdCode_kind.text:=dm.Q_xyzb.fieldbyname('ypbh').asstring;
  Ed_ym.text:=dm.Q_xyzb.fieldbyname('ym').asstring;
  Ed_gg.text:=dm.Q_xyzb.fieldbyname('gg').asstring;
  Ed_jx.text:=dm.Q_xyzb.fieldbyname('jx').asstring;
  Ed_zxdw.text:=dm.Q_xyzb.fieldbyname('zxdw').asstring;
  Ed_produce.text:=dm.Q_xyzb.fieldbyname('produce').asstring;
  btn_add.SetFocus ;
end;

procedure TFrm_MedPlace.dbgrd_xyzbKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then dbgrd_xyzbDblClick(Sender);
end;

procedure TFrm_MedPlace.dbgrd_xyzbExit(Sender: TObject);
begin
  (sender as Tdbgrid).Visible :=false;
end;

procedure TFrm_MedPlace.pgc_infoChange(Sender: TObject);
begin
  if pgc_info.ActivePageIndex =1 then EdCode_kind.SetFocus ;
end;

procedure TFrm_MedPlace.btn_saveClick(Sender: TObject);
begin
 Q_Detail.Refresh;
end;

procedure TFrm_MedPlace.act_UpdateExecute(Sender: TObject);
begin
   cxgrdbtblvw_Detail.OptionsData.Editing:=true;
end;

procedure TFrm_MedPlace.act_searchExecute(Sender: TObject);
begin
  with Q_Detail do
  begin
    Close;
    SQL.Clear;
    sql.add('select *  from xyzb  where ifzy=1 and pym like :pym');
    IF rg_MedClass.ItemIndex=0 then
      sql.Add(' ')
    else
    begin
      sql.Add(' AND  lb=:MedClass ');
      ParamByName('MedClass').AsInteger:=rg_MedClass.ItemIndex;
    end;
    parambyname('pym').AsString :='%'+TRIM(EdCode.Text)+'%';
    open;
    if isempty then
    begin
      application.MessageBox('无此药品!','错误提示',0+mb_iconstop);
      exit;
    end;
  end;
end;

procedure TFrm_MedPlace.act_SaveExecute(Sender: TObject);
begin
  Q_Detail.Refresh;
  application.MessageBox('保存成功！','信息',MB_ICONINFORMATION);
  cxgrdbtblvw_Detail.OptionsData.Editing:=false;
end;

procedure TFrm_MedPlace.act_closeExecute(Sender: TObject);
begin
 self.Close;
end;

procedure TFrm_MedPlace.Act_exportExecute(Sender: TObject);
var  MYMedStore:IMedStore;
     aTemplateName:string;
     adatetime:tdatetime;
begin
  MYMedStore:=TMedStore.Create;
  aTemplateName:='药品货位';
  adatetime:=date();
  //MYMedStore.ExportXLS(FlexCelReport1,XLSAdapter1,adatetime,adatetime,aTemplateName,1);
end;

end.
