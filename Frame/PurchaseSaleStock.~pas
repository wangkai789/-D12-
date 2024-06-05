unit PurchaseSaleStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, BaseFrame;

type
  TFrame_PurchaseSaleStock = class(TFrame)
    Frame_base1: TFrame_base;
    procedure Frame_base1btn_SearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses InterfaceMedStore,data;

{$R *.dfm}

procedure TFrame_PurchaseSaleStock.Frame_base1btn_SearchClick(
  Sender: TObject);
var  MYMedStore:IMedStore;
begin
  MYMedStore:=TMedStore.Create;
  with Frame_base1 do
  begin
    Frame_base1.FTemplateName:='½øÏú´æ±í';
    //MYMedStore.MyDataSet:=Q_result;
    MYMedStore.SearchPurchaseSaleStock(Q_result,strtoint(dm.Fopid),DT_from.date,DT_to.Date);
  end;

end;

end.
