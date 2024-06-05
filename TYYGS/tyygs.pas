unit tyygs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Mask, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  Tfm_tyygs = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    L_man: TLabel;
    Label9: TLabel;
    L_date: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit4: TEdit;
    DBGrid2: TDBGrid;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Editthsl: TEdit;
    DBGrid3: TDBGrid;
    btn_qd: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditthslKeyPress(Sender: TObject; var Key: Char);
    procedure btn_qdClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    SearchWay: integer;
    { Public declarations }
  end;

var
  fm_tyygs: Tfm_tyygs;
  const
    MEDNAME_CODE = 100;
    SPELL_CODE = 101;
    PIPE_CODE = 102;
    MEDCODE_CODE = 103;
    NOENTER = 104;
    ISEnter = 105;
    ArrayLen=11;

implementation

uses data, q_tyygsqd, czydl;

{$R *.DFM}

procedure Tfm_tyygs.FormShow(Sender: TObject);
begin
L_DATE.Caption :=DATETOSTR(NOW);
l_man.Caption :=fm_czydl.Ed_xm.Text;//'0';//login_xm;
dm.q_comm.close;
dm.q_public.close;
dm.q_public1.close;
dm.Q_tyygs.close;
edit4.setfocus;
end;

procedure Tfm_tyygs.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
//if key=#13 then edit4.setfocus;
end;

procedure Tfm_tyygs.Edit4KeyPress(Sender: TObject; var Key: Char);
var
LenOfEdCode: integer;
CodeLen: integer;
FirstAlpha: string;
begin
   if key=#13   then
   begin
     LenOfEdCode:=edit4.GetTextLen;
     if (LenOfEdCode <= 0) then Exit;
     if trim(edit4.text)='' then exit;
     with dm do
     begin
     Q_comm.Close;
     Q_comm.SQL.Clear;
     Q_comm.SQL.Add('Select DISTINCT 药名=a.ym,计量单位=a.jldw ,规格=a.gg,剂型=b.jx,最小单位=a.zxdw, 换算比=a.hsb,药品编号=a.YPBH,流水码=a.lsm');
     Q_comm.SQL.Add('from XYZB a,ypjx b where a.jxbm=b.jxbm');
     CodeLen:=edit4.GetTextLen;
     FirstAlpha:=edit4.Text;
     FirstAlpha:=FirstAlpha[1];
     SearchWay:=MEDNAME_CODE;
     if (UpperCase(FirstAlpha) <= 'Z') and (UpperCase(FirstAlpha) >= 'A')  then
       SearchWay:= SPELL_CODE;
     if (UpperCase(FirstAlpha)<= '9') and (UpperCase(FirstAlpha) >= '0') and (CodeLen <= 4) then
      SearchWay:=PIPE_CODE;
     if (UpperCase(FirstAlpha)<= '9') and (UpperCase(FirstAlpha) >= '0') and (CodeLen > 4) then
       SearchWay:=MEdCode_CODE;
     case SearchWay of
      SPELL_CODE:             //拼音码
        begin
         Q_comm.SQL.Add('and pym like :SearchCode');
         Q_comm.ParamByName('SearchCode').AsString := '%'+edit4.Text+'%';
        end;
      PIPE_CODE:              //流水码
        begin
         Q_comm.SQL.Add('and lsm like :SearchCode');
         Q_comm.ParamByName('SearchCode').AsString := trim(edit4.Text);
        end;
      MEdCode_CODE:           //药品编码
        begin
         Q_comm.SQL.Add('and ypbh like :SearchCode');
         Q_comm.ParamByName('SearchCode').AsString := '%'+edit4.Text+'%';
        end;
      MEDNAME_CODE:            //药名
        begin
         Q_comm.SQL.Add('and ym like :SearchCode');
         Q_comm.ParamByName('SearchCode').AsString := '%'+edit4.Text+'%';
      end;
    end;
    Q_comm.Prepare;
    Q_comm.Open;
    if Q_comm.RecordCount = 1 then
      begin
       edit4.Text := dm.Q_comm['药品编号'];
       dbgrid1.Visible:=true;
       //Q_comm.next;
       dbgrid1.SetFocus;
       end;
    if Q_comm.RecordCount > 1 then //多条记录时可以USE KEYBORAD OR MOUSE 定位
      begin
        dbgrid1.Visible := True;
        dbgrid1.SetFocus;
        Q_comm.next;
      end;
    if Q_comm.RecordCount =0 then
      begin
        dbgrid1.Visible := false;
        application.MessageBox('无此药品，请重新输入！','提示',48);
        edit4.clear;
      end;
   end;
  end;
end;

procedure Tfm_tyygs.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
dbgrid2.Visible :=true;
dbgrid2.setfocus;
end;

end;

procedure Tfm_tyygs.DBGrid1Exit(Sender: TObject);
var i:integer;
begin
with dm.Q_public do
begin
  close;
  SQL.clear;
  SQL.add('select * from xyzb where ypbh=:ypbh');
  params[0].asstring:=dm.Q_comm.fieldbyname('药品编号').asstring;
  open;
end;
bitbtn2.Enabled :=true;
bitbtn3.Enabled :=true;
btn_qd.enabled:=true;
edit4.Text := dm.Q_public['ypbh'];
edit2.text  := dm.Q_public['ym'];
edit3.text := dm.Q_public['gg'];
edit6.text := CURRTOSTRf(STRTOCURR(dm.Q_public['ylsj']),fffixed,2);
with dm.Q_public1 do
begin
  close;
  sql.clear;
  SQL.add('select jx from ypjx where jxbm=:jxbm');
  ParamByName('jxbm').asinteger:=dm.Q_public['jxbm'];
  open;
end;
edit5.text :=dm.Q_public1.fieldbyname('jx').asstring;
dbgrid1.Visible:=false;
  with dm.Q_tyygs do
  begin
  close;
   label10.caption:='入库序号';
   dbedit1.DataField :='入库序号';
   label15.caption:='退货数量';
  sql.clear;
  sql.add('select  入库序号=b.rkxh,生产厂家=d.cm,发票号=c.rkdh, 供货单位=e.inc_name,零售价=a.ylsj, 药品批号=c.ypph, 单位=a.jldw, 库存量=b.kcl, 退货数量=0, a.ypbh, a.hsb '+
               ' from xyzb a, xykcun b, xykr c, sccj d, ghdw e '+
               ' where  b.ypbh='''+edit4.text+'''  and b.ypbh=a.ypbh '+
               ' and b.rkxh=c.rkxh and c.ghdw=e.inc_code '+
               ' and c.cjbm=d.cjbm Order by b.ypbh, b.rkxh ');  //b.kcl>0 and
  open;
  end;
if dm.Q_tyygs.RecordCount<1 then
begin
application.MessageBox('该药并无库存！','提醒',64);
edit4.SetFocus ;
end
else
begin
 dbgrid2.visible:=true;
 for i:=0 to 6 do
 dbgrid2.Columns[i].fieldname:=dm.Q_tyygs.Fields[i].fieldname;
 edit1.text:=dm.Q_tyygs['发票号'];
 editthsl.text:='0';
 editthsl.SetFocus ;
end;

end;

procedure Tfm_tyygs.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tfm_tyygs.BitBtn2Click(Sender: TObject);
begin
dm.Q_tyygs.Close;
edit4.SetFocus ;
edit1.Text :='';
edit4.Text :='';
edit2.Text :='';
edit3.Text :='';
edit5.Text :='';
edit6.Text :='';
editthsl.text:='';
dbgrid2.Visible :=false;
dbgrid3.Visible :=false;
end;

procedure Tfm_tyygs.EditthslKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then btn_qd.setfocus;
end;

procedure Tfm_tyygs.btn_qdClick(Sender: TObject);
begin
if label10.Caption ='入库序号' then
begin
if edit1.Text ='' then
begin
application.MessageBox('请输入发票号！','提示',64);
edit1.SetFocus ;
exit;
end;
 try
 strtofloat(editthsl.text);
 except editthsl.text:='0';
 end;
 if  strtofloat(editthsl.text)>dm.q_tyygs.fieldbyname('库存量').asinteger then
 begin
 application.MessageBox('退库数量不能大于库存量。请重新录入。','提示',64);

 editthsl.SetFocus ;
 exit;
 end;
if editthsl.text<>'0' then
begin
  with dm.q_public do
  begin
  close;
  sql.clear;
  sql.add('exec tyygs :rkxh,:cksl,:tyr,:fph ');  
  parambyname('rkxh').asinteger:=dm.q_tyygs.fieldbyname('入库序号').asinteger;
  //parambyname('ypbh').asstring:=edit4.text;
  parambyname('cksl').asfloat:=strtofloat(editthsl.text);
  parambyname('tyr').asinteger:=strtoint(fm_czydl.Ed_bh.Text); 
  parambyname('fph').asstring:=edit1.text;
  try
  execsql;
  application.MessageBox('退库已成功.','提示',64);
  except
  application.MessageBox('退库失败.','提示',64);
  end;
  end;
dm.q_tyygs.close;
dm.q_tyygs.open;
editthsl.text:='0';
end;
 
end;
end;


procedure Tfm_tyygs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
l_man.Caption:='';
l_date.Caption:='';
edit1.clear;edit4.clear;
edit2.clear;edit3.clear;
edit6.clear;edit5.clear;
editthsl.clear;
bitbtn2.enabled:=false;
bitbtn3.enabled:=false;
btn_qd.enabled:=false;
dm.Q_tyygs.close;
dm.q_public.close;
dm.q_public1.close;
dm.q_comm.close;
action:=cafree;
end;

procedure Tfm_tyygs.BitBtn3Click(Sender: TObject);
begin
with dm.q_public do
begin
  close;
  sql.clear;
  sql.add('select 供货单位=h.inc_name ,退货日期=a.tyrq,保管员=i.xm,发票号=a.fph,药品编号=b.ypbh,药名=b.ym,规格=b.gg,');
  sql.add('剂型=g.jx,厂家=c.cm,零售价=b.ylsj,退货数量=a.sl,金额=b.ylsj*a.sl from');
  sql.add('tyygsxb a,xyzb b,sccj c,xykr e ,xykcun f,ypjx g,ghdw h,zgzb i');
  sql.add('where  a.rkxh=f.rkxh and a.rkxh=:rkxh and i.bh=e.bgy');
  sql.add('and f.ypbh=b.ypbh and e.cjbm=c.cjbm and e.rkxh=f.rkxh');
  sql.add('and g.jxbm=b.jxbm and h.inc_code=e.ghdw');
  sql.add('order by 供货单位, 药品编号');
  parambyname('rkxh').asstring:=dm.q_tyygs['入库序号'];
  open;
end;
qr_tyygsqd.preview;
end;

procedure Tfm_tyygs.Edit4Enter(Sender: TObject);
begin
dm.q_tyygs.close;
edit4.clear;edit1.clear;edit2.clear;edit3.clear;
edit5.clear;edit6.clear;Editthsl.clear;
end;

procedure Tfm_tyygs.Edit2Change(Sender: TObject);
begin
if edit2.text<>'' then Editthsl.enabled:=true else  Editthsl.enabled:=false;
end;

end.
