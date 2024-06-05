unit ReturnStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, BaseFrame, StdCtrls, ExtCtrls;

type
  TFrame_ReturnStore = class(TFrame)
    Frame_base1: TFrame_base;
    rg_patclass: TRadioGroup;
    procedure Frame_base1btn_SearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses InterfaceMedStore,data;

{$R *.dfm}

procedure TFrame_ReturnStore.Frame_base1btn_SearchClick(Sender: TObject);
var  MYMedStore:IMedStore;
     ayfbm,aPatClass,aDTClass:integer;
begin
  ayfbm:=strtoint(dm.GetComboxValue(Frame_base1.cbb_yfbm,':',true));
  aPatClass:=rg_patclass.ItemIndex;
  aDTClass:=Frame_base1.RG1.ItemIndex;
 
  MYMedStore:=TMedStore.Create;
  with Frame_base1 do
  begin
    Frame_base1.FTemplateName:='ÕÀ“©±Ì';
    MYMedStore.SearchReturnStore(Q_Result,ayfbm,aPatClass,aDTClass,DT_from.date,DT_to.Date,edt_SearchCondition.Text);
  end;
end;

end.
