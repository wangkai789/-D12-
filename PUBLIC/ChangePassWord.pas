unit ChangePassWord;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, StdCtrls, Buttons;

type
  TFmChangePassword = class(TForm)
    BtnOK: TBitBtn;
    BtnCancel: TBitBtn;
    EdOldPass: TEdit;
    EdName: TEdit;
    EdNewPassFirst: TEdit;
    EdNewPassConfirm: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    procedure BtnCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdNewPassFirstEnter(Sender: TObject);
    procedure EdNewPassConfirmExit(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    CurLoginID: integer;
    OldPassISOK: Boolean;
    NewPassConfirmISOK: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmChangePassword: TFmChangePassword;

implementation

uses Data, czydl,Factory;

{$R *.DFM}

procedure TFmChangePassword.BtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFmChangePassword.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(ActiveControl,True,True);
  end;
end;

procedure TFmChangePassword.EdNewPassFirstEnter(Sender: TObject);
begin
//THE OLD PASSWORD IS ERROR
  with DM.Q_comm do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select mm from mmb where bh = :bh');
    ParamByName('bh').AsInteger := StrToInt(fm_czydl.Ed_bh.Text);
    Open;
  end;
//  if ProcessPassword(EdOldPass.Text) <> DM.Q_comm['mm'] then

  if MD5String(pchar(Trim(EdOldPass.Text)))<> trim(DM.Q_comm['mm']) then
  begin
    Application.MessageBox(' 旧口令效验有误！','口令有误',0);
    OldPassISOK := False;
    SelectNext(ActiveControl,False,True);
    Exit;
  end;
//THE OLD PASSWORD IS OK
  EdNewPassConfirm.Enabled := True;
  OldPassISOK := True;
  BtnOK.Enabled := True;
end;

procedure TFmChangePassword.EdNewPassConfirmExit(Sender: TObject);
begin
  NewPassConfirmISOK := False;
  if OldPassISOK and (EdNewPassFirst.Text = EdNewPassConfirm.Text) then  NewPassConfirmISOK := True;
  if NewPassConfirmISOK then  //COMMITE THE NEW PASSWORD
  BtnOK.Enabled := True;
end;


procedure TFmChangePassword.BtnOKClick(Sender: TObject);
begin
  BtnOK.Enabled := False;
  EdNewPassConfirm.Enabled := False;
  if NewPassConfirmISOK then  //COMMITE THE NEW PASSWORD
  begin
    NewPassConfirmISOK := False;
    with DM.Q_comm do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Update mmb set mm = :mm where bh = :bh');
      ParamByName('mm').AsString := MD5String(pchar(Trim(EdNewPassConfirm.Text)));
//      ParamByName('mm').AsString := ProcessPassword(EdNewPassConfirm.Text);
      ParamByName('bh').AsInteger := CurLoginID;
    end;
    try
      DM.Q_comm.ExecSQL;
    except
      Application.MessageBox('  口令更改失败！请与系统管理员联系','信息提示',mb_iconerror);
      Exit;
    end;
      Application.MessageBox('  口令更改成功！以后请用新口令登录','信息提示',mb_iconinformation);
      Exit;
  end;
  Application.MessageBox('  前后输入的口令不一致，更改不成功','信息提示',mb_iconinformation);
end;

procedure TFmChangePassword.FormShow(Sender: TObject);
begin
  begin
    EdOldPass.Clear;
    EdNewPassFirst.Clear;
    EdNewPassConfirm.Clear;
  end;
  OldPassISOK := False;
  NewPassConfirmISOK := False;
  CurLoginID := StrToInt(fm_czydl.Ed_bh.Text);
  EdName.Text := fm_czydl.Ed_xm.Text;
end;

procedure TFmChangePassword.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
