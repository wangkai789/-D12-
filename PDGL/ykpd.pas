unit ykpd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, Data.DB;

type
  Tfm_ykpd = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    bitprint: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bitprintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_ykpd: Tfm_ykpd;

implementation

uses data;

{$R *.DFM}

procedure Tfm_ykpd.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure Tfm_ykpd.BitBtn1Click(Sender: TObject);
begin
with dm.Q_comm do
begin
  Close;
  sql.clear;
  sql.add('yk_pdgl :zlbm');
  parambyname('zlbm').assmallint:=RadioGroup1.ItemIndex;
  open;
end;
end;

procedure Tfm_ykpd.FormShow(Sender: TObject);
begin
dm.q_comm.close;
RadioGroup1.ItemIndex:=0;
end;

procedure Tfm_ykpd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.q_comm.close;
end;

procedure Tfm_ykpd.bitprintClick(Sender: TObject);
begin
//f_report_cftj.Rep_pdgl.Preview;
end;

end.
