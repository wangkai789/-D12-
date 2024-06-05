unit ExamRecord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, BaseFrame;

type
  TFrame_ExamRecord = class(TFrame)
    Frame_base1: TFrame_base;
    procedure Frame_base1btn_SearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses data,InterfaceMedStore;

{$R *.dfm}

procedure TFrame_ExamRecord.Frame_base1btn_SearchClick(Sender: TObject);
var  MYMedStore:IMedStore;
begin
  MYMedStore:=TMedStore.Create;
  with Frame_base1 do
  begin
    dm.InitGrid(1,'MedStore_ExamRecord.xml',Frame_base1.cxgrdbtblvw);
    Frame_base1.FTemplateName:='验收记录表';
    MYMedStore.SearchExamRecord(Q_Result,rg1.itemindex,DT_from.date,DT_to.Date);
  end;

end;

end.
