unit BalancesStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, BaseFrame;

type
  TFrame_BalancesStore = class(TFrame)
    Frame_base1: TFrame_base;
    procedure Frame_base1btn_SearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
uses InterfaceMedStore,data;

procedure TFrame_BalancesStore.Frame_base1btn_SearchClick(Sender: TObject);
var  MYMedStore:IMedStore;
begin
  MYMedStore:=TMedStore.Create;
  with Frame_base1 do
  begin
    Frame_base1.FTemplateName:='½á´æ±í';
    MYMedStore.SearchBalancesStore(Q_Result,dm.Fksbm,rg1.itemindex,DT_from.date,DT_to.Date,edt_SearchCondition.Text);
  end;
end;

end.
