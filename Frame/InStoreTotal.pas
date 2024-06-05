unit InStoreTotal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, BaseFrame;

type
  TFrame_InStoreTotal = class(TFrame)
    Frame_base1: TFrame_base;
    procedure Frame_base1btn_SearchClick(Sender: TObject);
    procedure Frame_base1btn_ExportXlsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses InterfaceMedStore,data;

procedure TFrame_InStoreTotal.Frame_base1btn_SearchClick(Sender: TObject);
var  MYMedStore:IMedStore;
begin
  MYMedStore:=TMedStore.Create;
  with Frame_base1 do
  begin
    Frame_base1.FTemplateName:='³ö¿â»ã×Ü±í';
    case rg1.itemindex of
    0..3:
     dm.InitGrid(1,'MedStore_InStoreTotal.xml', Frame_base1.cxgrdbtblvw);
    4:
     dm.InitGrid(1,'MedStore_InStoreTotalOne.xml', Frame_base1.cxgrdbtblvw);
    5:
     dm.InitGrid(1,'MedStore_InStoreTotalTwo.xml', Frame_base1.cxgrdbtblvw);
    end;
    MYMedStore.SearchInStoreTotal(Q_Result,rg1.itemindex,DT_from.date,DT_to.Date);
  end;

end;

procedure TFrame_InStoreTotal.Frame_base1btn_ExportXlsClick(
  Sender: TObject);
begin
  Frame_base1.btn_ExportXlsClick(Sender);

end;

end.
