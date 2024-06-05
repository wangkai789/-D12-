unit MedStoreChangeStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCardView, cxGridTableView,
  Grids, DBGrids, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridDBTableView, cxGrid, StdCtrls, ComCtrls,
  Buttons, ExtCtrls, MemDS, DBAccess, Uni, UExcelAdapter, XLSAdapter,
  UCustomFlexCelReport, UFlexCelReport, BaseFrame;

type
  TFrame_MedstoreChangeStore = class(TFrame)
    Frame_base1: TFrame_base;
    procedure Frame_base1btn_SearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses InterfaceMedStore;

{$R *.dfm}

procedure TFrame_MedstoreChangeStore.Frame_base1btn_SearchClick(Sender: TObject);
var  MYMedStore:IMedStore;
begin
  MYMedStore:=TMedStore.Create;
  with Frame_base1 do
  begin
    Frame_base1.FTemplateName:='盘点变化表';
    MYMedStore.SearchStoreChange(Q_Result,DT_from.date,DT_to.Date,rg1.itemindex,0,edt_SearchCondition.Text);
  end;
end;

end.
