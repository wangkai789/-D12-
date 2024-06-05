unit testbalance;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Spin, Grids, DBGrids;

type
  Tfm_testbalance = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Animate1: TAnimate;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_testbalance: Tfm_testbalance;

implementation

uses data;

{$R *.DFM}

procedure Tfm_testbalance.BitBtn2Click(Sender: TObject);
begin
 close;
end;

procedure Tfm_testbalance.BitBtn1Click(Sender: TObject);
begin
  Animate1.Visible :=true;
  Animate1.Active  :=true;
  with dm.q_comm do
  begin
    close;
    sql.Clear;
    sql.add('exec pub_ykbalance :year,:month');
    parambyname('year').assmallint:=SpinEdit1.Value ;
    parambyname('month').assmallint:=SpinEdit2.Value ;
    open;
    DBGrid1.DataSource :=dm.DS_comm ;
    Animate1.Visible :=false;
    Animate1.Active  :=false;
    if recordcount=0 then  application.messagebox('药库药品无不平衡记录','提示信息',mb_iconinformation);
   end;
 end;

procedure Tfm_testbalance.FormShow(Sender: TObject);
begin
  SpinEdit1.text:=formatdatetime('yyyy',date());
  SpinEdit2.text:=formatdatetime('mm',date());
  Animate1.Visible :=false;
  Animate1.Active  :=false;
end;

procedure Tfm_testbalance.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
