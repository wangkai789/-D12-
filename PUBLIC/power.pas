unit power;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,StdCtrls;

type
  TFm_power = class(TForm)
    ed_input: TEdit;
    Label1: TLabel;
    btn_xg: TButton;
    btn_exit: TButton;
    procedure btn_exitClick(Sender: TObject);
    procedure btn_xgClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed_inputKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_power: TFm_power;

implementation

{$R *.DFM}

procedure TFm_power.btn_exitClick(Sender: TObject);
begin
self.close;
end;

procedure TFm_power.btn_xgClick(Sender: TObject);
begin
    if trim(ed_input.Text)='' then
    begin
      application.MessageBox('请输入角色','信息',32);
      ed_input.SetFocus;
      exit;
    end;
    close;
    self.ModalResult:=mrok;
end;

procedure TFm_power.FormShow(Sender: TObject);
begin
  ed_input.clear;
end;

procedure TFm_power.ed_inputKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) and (trim(ed_input.text)<>'') then   btn_xg.Click;
end;

end.
