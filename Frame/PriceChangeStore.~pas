unit PriceChangeStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, BaseFrame;

type
  TFrame_PriceChangeStore = class(TFrame)
    Frame_base1: TFrame_base;
    procedure Frame_base1btn_SearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses InterfaceMedStore;

procedure TFrame_PriceChangeStore.Frame_base1btn_SearchClick(
  Sender: TObject);
var  MYMedStore:IMedStore;
begin
  MYMedStore:=TMedStore.Create;
  with Frame_base1 do
  begin
    Frame_base1.FTemplateName:='µ÷¼Û±í';
    MYMedStore.SearchPriceChangeStore(Q_Result,rg1.itemindex,DT_from.date,DT_to.Date,edt_SearchCondition.Text);
  end;
end;

end.
