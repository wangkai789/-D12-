unit ypjc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFm_ypjc = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_ypjc: TFm_ypjc;

implementation

uses czydl, data, testbalance;

{$R *.dfm}

procedure TFm_ypjc.BitBtn3Click(Sender: TObject);
begin
 close;
end;

procedure TFm_ypjc.BitBtn2Click(Sender: TObject);
begin
  if application.messagebox(pchar('您确实要进行药库药品结存吗？'#13'注意：药库药品结存后本月不能再办理业务'),
  '提示信息',mb_iconquestion+mb_yesno+MB_DEFBUTTON2)=idno  then exit;
  with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('exec pub_ypjc :ksbm,:kind,:opid');
    parambyname('ksbm').asinteger:=fm_czydl.Ed_ksmc.tag;
    parambyname('kind').asinteger:=1;
    parambyname('opid').asinteger:=strtoint(fm_czydl.ed_bh.text);
    try
      execsql;
      showmessage('药库药品结存成功！');
    except
      showmessage('药库药品结存失败！');
      exit;
    end;
  end;
end;

procedure TFm_ypjc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree ;
end;

procedure TFm_ypjc.BitBtn1Click(Sender: TObject);
var temp:Tfm_testbalance;
begin
  temp:=Tfm_testbalance.create(self);
  temp.showmodal;
  temp.free;
end;

end.
