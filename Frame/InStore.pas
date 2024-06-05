unit InStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, cxGridCardView,
  cxGridTableView, Grids, DBGrids, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, ComCtrls, Buttons, BaseFrame, MemDS, DBAccess, Uni;

type
  TFrame_InStore = class(TFrame)
    ds_xyzb: TDataSource;
    Q_xyzb: TUniQuery;
    Frame_base1: TFrame_base;
    rg_SearchCondition: TRadioGroup;
    procedure Frame_base1btn_SearchClick(Sender: TObject);
    procedure Frame_base1btn_SearchInStoreTotalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses InterfaceMedStore,data;

{$R *.dfm}

procedure TFrame_InStore.Frame_base1btn_SearchClick(Sender: TObject);
var  MYMedStore:IMedStore;
begin
  MYMedStore:=TMedStore.Create;
  with Frame_base1 do
  begin
    dm.InitGrid(1,'MedStore_InStore.xml',Frame_base1.cxgrdbtblvw);
    Frame_base1.FTemplateName:='Èë¿â±í';
    MYMedStore.SearchInStore(Q_Result,rg1.itemindex,rg_SearchCondition.ItemIndex,DT_from.date,DT_to.Date,edt_SearchCondition.Text);
  end;
end;

procedure TFrame_InStore.Frame_base1btn_SearchInStoreTotalClick(
  Sender: TObject);
var  MYMedStore:IMedStore;
begin
  MYMedStore:=TMedStore.Create;
  with Frame_base1 do
  begin
    dm.InitGrid(1,'MedStore_InStoreTotal.xml',cxgrdbtblvw);
    MYMedStore.SearchInStoreTotal(Q_Result,dm.Fksbm,DT_from.date,DT_to.Date);
  end;
end;

end.
