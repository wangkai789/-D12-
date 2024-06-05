unit About;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, jpeg,Registry,Dialogs ;

type
  TFmAbout = class(TForm)
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    Memo2: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Memo3: TMemo;
    Image2: TImage;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    lab_name: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmAbout: TFmAbout;

implementation
uses  main;
{$R *.DFM}

procedure TFmAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFmAbout.FormShow(Sender: TObject);
begin
  label6.Caption :=application.Title;
  lab_name.Caption :=Fm_main.Label_hospital.caption;
end;

procedure TFmAbout.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TFmAbout.BitBtn2Click(Sender: TObject);
var
  Reg: TRegistry;
  path:string;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('\Software\Microsoft\Shared tools\msinfo', True) then
   begin
      path:=trim(Reg.readstring('path'));
      if trim(path)<>'' then
      winexec(pansichar(path),SW_SHOWNA)
      else
      application.MessageBox('您的操作系统未安装MSInfo32.exe','提示信息',mb_iconinformation);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
    inherited;
  end;
end;

end.

