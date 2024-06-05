unit cjcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons;

type
  Tfm_cjcx = class(TForm)
    DBGrid1: TDBGrid;
    btn_exit: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_cjcx: Tfm_cjcx;

implementation

uses data;

{$R *.DFM}

procedure Tfm_cjcx.FormShow(Sender: TObject);
begin
   with dm.q_public do
   begin
   close;
   sql.clear;
   case self.tag of
   1:   sql.add('select 厂家编码=cjbm,厂家名称=cm,厂家性质=xz,拼音码=pym from sccj');
   2:   sql.add('select 单位编码=inc_code,供货单位=inc_name,拼音码=inc_call from ghdw');
   end;
   open;
   end;
end;

procedure Tfm_cjcx.btn_exitClick(Sender: TObject);
begin
close;
end;

procedure Tfm_cjcx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
