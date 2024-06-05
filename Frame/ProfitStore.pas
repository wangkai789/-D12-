unit ProfitStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, BaseFrame;

type
  TFrame_ProfitStore = class(TFrame)
    Frame_base1: TFrame_base;
    rg_kind_sell: TRadioGroup;
    procedure Frame_base1btn_SearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses InterfaceMedStore,data;

procedure TFrame_ProfitStore.Frame_base1btn_SearchClick(Sender: TObject);
var  MYMedStore:IMedStore;
begin
  MYMedStore:=TMedStore.Create;
  with Frame_base1 do
  begin
    Frame_base1.FTemplateName:='销售利润表';
    MYMedStore.SearchProfitStore(Q_Result,rg1.itemindex,rg_kind_sell.ItemIndex+1,DT_from.date,DT_to.Date);
  end;
end;

end.
