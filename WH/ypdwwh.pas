unit ypdwwh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids;

type
  TFm_ypdwwh = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Shape1: TShape;
    Label26: TLabel;
    Shape2: TShape;
    Label28: TLabel;
    Label29: TLabel;
    Label14: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Ed_hsb: TEdit;
    ed_cfhsb: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape3: TShape;
    Label7: TLabel;
    Shape4: TShape;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ComBox_zxdw_new: TComboBox;
    ComBox_jldw_new: TComboBox;
    Combox_cfzxdw_new: TComboBox;
    Ed_hsb_new: TEdit;
    ed_cfhsb_new: TEdit;
    ComBox_kind_new: TComboBox;
    GroupBox3: TGroupBox;
    Ed_ypbh: TLabeledEdit;
    Ed_ym: TLabeledEdit;
    Ed_gg: TLabeledEdit;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label30: TLabel;
    Ed_ykkc: TEdit;
    ed_zyyfkc: TEdit;
    Label15: TLabel;
    ed_mzyfkc: TEdit;
    GroupBox5: TGroupBox;
    Label20: TLabel;
    ed_jzyfkc: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    ed_jzyfkc_new: TEdit;
    ed_mzyfkc_new: TEdit;
    ed_zyyfkc_new: TEdit;
    Ed_ykkc_new: TEdit;
    DBG_yp: TDBGrid;
    ed_bm: TLabeledEdit;
    Ed_ylsj: TLabeledEdit;
    Ed_jx: TLabeledEdit;
    Ed_jldw: TEdit;
    Ed_zxdw: TEdit;
    Ed_cfzxdw: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Shape5: TShape;
    Ed_kind: TEdit;
    Label39: TLabel;
    Label40: TLabel;
    ed_skintry: TEdit;
    com_skintry_new: TComboBox;
    BitBtn3: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBG_ypDblClick(Sender: TObject);
    procedure DBG_ypKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_ypbhKeyPress(Sender: TObject; var Key: Char);
    procedure DBG_ypExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComBox_zxdw_newChange(Sender: TObject);
    procedure Ed_ypbhEnter(Sender: TObject);
    procedure Combox_cfzxdw_newChange(Sender: TObject);
    procedure ed_cfhsb_newChange(Sender: TObject);
  private
    { Private declarations}
    Function  search_ykkc(ypbh:string):currency;
    Function  search_zyyfkc(ypbh:string):currency;
    Function  search_mzyfkc(ypbh:string):currency;
    Function  search_jzyfkc(ypbh:string):currency;
    Function  Check():boolean;
  public
    { Public declarations }
  end;

var
  Fm_ypdwwh: TFm_ypdwwh;

implementation

uses data, czydl;

{$R *.dfm}
Function  TFm_ypdwwh.Check():boolean;
begin
   If trim(ComBox_zxdw_new.text)='' then
      begin
        showmessage('药房单位不能为空 ');
        result:=true;
        exit;
      end;

   If trim(ComBox_cfzxdw_new.text)='' then
      begin
        showmessage('医嘱单位不能为空 ');
        result:=true;
        exit;
      end;

    if (Trim(Ed_hsb_new.text)='0') Or  (Trim(Ed_hsb_new.text)='') then
      begin
        showmessage('药库单位/药房单位(比例)不能等于0或空');
        result:=true;
        exit;
      end;

    if (Trim(Ed_cfhsb_new.text)='0') Or  (Trim(Ed_cfhsb_new.text)='') then
      begin
        showmessage('药房单位/医嘱单位(比例)不能等于0或空');
        result:=true;
        exit;
      end;
 If trim(ComBox_jldw_new.text)=trim(Combox_zxdw_new.text) then
    begin
      if Trim(Ed_hsb_new.text)<>'1' then
          begin
            showmessage('药库单位与药房单位相同，药库单位/药房单位(比例)应该等于1');
            result:=true;
            exit;
          end;
    end
 Else
    begin
       if Trim(Ed_hsb_new.text)='1' then
          begin
            showmessage('药库单位与药房单位不相同，药库单位/药房单位(比例)应该不等于1');
            result:=true;
            exit;
          end;
    end;
   result:=false;
end;

Function TFm_ypdwwh.search_ykkc(ypbh:string):currency;
begin
  with dm.q_comm do
  begin
     Close;
     Sql.clear;
     Sql.Add('select ykkc=sum(kcl) From xykcun where ypbh=:ypbh');
     Parambyname('ypbh').AsString := Ed_ypbh.Text ;
     open;
     result:=fieldbyname('ykkc').AsCurrency;
  end;
end;
Function TFm_ypdwwh.search_zyyfkc(ypbh:string):currency;
begin
  with dm.q_comm do
  begin
     Close;
     Sql.clear;
     Sql.Add('select zyyfkc=sum(kcl) From nkyc where ypbh=:ypbh');
     Parambyname('ypbh').AsString := Ed_ypbh.Text ;
     open;
     result:=fieldbyname('zyyfkc').AsCurrency;
  end;
end;
Function TFm_ypdwwh.search_mzyfkc(ypbh:string):currency;
begin
  with dm.q_comm do
  begin
     Close;
     Sql.clear;
     Sql.Add('select mzyfkc=sum(kcl) From nkyc  where ksbm=501 and ypbh=:ypbh');
     Parambyname('ypbh').AsString := Ed_ypbh.Text ;
     open;
     result:=fieldbyname('mzyfkc').AsCurrency;
  end;
end;
Function TFm_ypdwwh.search_jzyfkc(ypbh:string):currency;
begin
  with dm.q_comm do
  begin
     Close;
     Sql.clear;
     Sql.Add('select jzyfkc=sum(kcl) From nkyc  where ksbm=503 and  ypbh=:ypbh');
     Parambyname('ypbh').AsString := Ed_ypbh.Text ;
     open;
     result:=fieldbyname('jzyfkc').AsCurrency;
  end;
end;
procedure TFm_ypdwwh.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TFm_ypdwwh.DBG_ypDblClick(Sender: TObject);
begin
    Ed_ypbh.text:=dm.Q_xyzb.fieldbyname('ypbh').asstring;
    Ed_ym.text:=dm.Q_xyzb.fieldbyname('ym').asstring;
    Ed_gg.text:=dm.Q_xyzb.fieldbyname('gg').asstring;
    Ed_bm.text:=dm.Q_xyzb.fieldbyname('bm').asstring;
    Ed_ylsj.text:=dm.Q_xyzb.fieldbyname('ylsj').asstring;
    Ed_jx.text:=dm.Q_xyzb.fieldbyname('jx').asstring;
    Ed_jldw.text:=dm.Q_xyzb.fieldbyname('jldw').asstring;
    Ed_zxdw.text:=dm.Q_xyzb.fieldbyname('zxdw').asstring;
    Ed_cfzxdw.text:=dm.Q_xyzb.fieldbyname('cfzxdw').asstring;
    Ed_hsb.text:=dm.Q_xyzb.fieldbyname('hsb').asstring;
    Ed_hsb_new.text:=dm.Q_xyzb.fieldbyname('hsb').asstring;
    Ed_cfhsb.text:=dm.Q_xyzb.fieldbyname('cfhsb').asstring;
    If dm.Q_xyzb.fieldbyname('skintry').asinteger=0 Then
       Ed_skintry.Text :='不需要'
    Else
       Ed_skintry.Text :='需要';
    case dm.Q_xyzb.fieldbyname('type').asinteger of
       1:Ed_kind.text:='液体';
       2:Ed_kind.text:='抗生素';
       3:Ed_kind.text:='其他';
       99:Ed_kind.text:='固体';
       Else Ed_kind.text:='其他';
    end;
    Ed_ykkc.text:=currtostr(search_ykkc(Ed_ypbh.text)) ;
    Ed_ykkc_new.text:=currtostr(search_ykkc(Ed_ypbh.text)) ;
    Ed_zyyfkc.text:=currtostr(search_zyyfkc(Ed_ypbh.text)) ;
    Ed_zyyfkc_new.text:=currtostr(search_zyyfkc(Ed_ypbh.text)) ;
    Ed_mzyfkc.text:=currtostr(search_mzyfkc(Ed_ypbh.text)) ;
    Ed_mzyfkc_new.text:=currtostr(search_mzyfkc(Ed_ypbh.text)) ;
    Ed_jzyfkc.text:=currtostr(search_jzyfkc(Ed_ypbh.text)) ;
    Ed_jzyfkc_new.text:=currtostr(search_jzyfkc(Ed_ypbh.text)) ;

    ComBox_jldw_new.Text :=Trim(Ed_jldw.text);
    Label22.Caption :=Ed_jldw.text;
    Label35.Caption :=Ed_jldw.text;
    Label36.Caption :=Ed_zxdw.text;
    ComBox_zxdw_new.Text :=Trim(Ed_zxdw.text);
    Label37.Caption :=Ed_zxdw.text;
    Label38.Caption :=Ed_zxdw.text;
    Label39.Caption :='修改前包装说明(1'+Ed_zxdw.text+ed_cfhsb.text+Ed_cfzxdw.Text+')';

    DBG_yp.Visible :=false;
end;

procedure TFm_ypdwwh.DBG_ypKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then  DBG_ypDblClick(Sender);
end;

procedure TFm_ypdwwh.Ed_ypbhKeyPress(Sender: TObject; var Key: Char);
begin
   if key<>#13 then exit;
   with dm.Q_xyzb do
   begin
      Close;
      Sql.clear;
      Sql.Add('select a.ypbh,a.ym,a.gg,a.bm,a.ylsj,b.jx,a.jldw,a.zxdw,a.cfzxdw,a.hsb,a.cfhsb,a.skintry,a.type');
      Sql.Add('From xyzb a,ypjx b where a.jxbm=b.jxbm ');
      Sql.Add('and (a.pym like :pym or a.ypbh like :pym)  ');
      Sql.Add('and a.lb<>2 and a.ylsj>0 ');
      Parambyname('pym').AsString := '%'+Ed_ypbh.Text+'%';
      Open;
      case recordcount of
        0:application.MessageBox('无此药品!','错误提示',0+mb_iconstop)
        Else
          begin
            DBG_yp.DataSource :=dm.DS_xyzb ;
            DBG_yp.Visible :=true;
            DBG_yp.SetFocus ;
          end;
      end;
   end;
end;

procedure TFm_ypdwwh.DBG_ypExit(Sender: TObject);
begin
  Tdbgrid(sender).Visible :=false;
end;

procedure TFm_ypdwwh.FormShow(Sender: TObject);
begin
 with dm.q_comm do
  begin
    close;
    Sql.clear;
    SQL.add('select zjdw from zjdw');
    open;
    while not Eof do
    begin
    ComBox_zxdw_new.Items.Append(fields[0].asstring);
    Next;
    end;
  end;
  ComBox_jldw_new.Items.Assign(ComBox_zxdw_new.Items);
  ComBox_cfzxdw_new.Items.Assign(ComBox_zxdw_new.Items);
  ComBox_kind_new.ItemIndex:=-1 ;
  Ed_ypbh.SetFocus ;
end;

procedure TFm_ypdwwh.BitBtn1Click(Sender: TObject);
begin
  if  Check() then exit;
  Try
  With dm.q_comm do
  Begin
     Close;
     Sql.Clear;
     Sql.Add('update xyzb  set skintry=:skintry  ');
     parambyname('skintry').assmallint:=com_skintry_new.ItemIndex;
     If Trim(Ed_jldw.text)<>Trim(combox_jldw_new.text) Then
         Begin
           sql.add(',jldw=:jldw');
           Parambyname('jldw').AsString := combox_jldw_new.text ;
         End;
     If Trim(Ed_zxdw.text)<>Trim(combox_zxdw_new.text) Then
         Begin
           sql.add(',zxdw=:zxdw');
           Parambyname('zxdw').AsString := combox_zxdw_new.text ;
         End;
     If Trim(Ed_cfzxdw.text)<>Trim(combox_cfzxdw_new.text) Then
         Begin
           sql.add(',cfzxdw=:cfzxdw');
           Parambyname('cfzxdw').AsString := combox_cfzxdw_new.text ;
         End;
     If Trim(Ed_hsb.text)<>Trim(Ed_hsb_new.text) Then
         Begin
           sql.add(',hsb=:hsb');
           Parambyname('hsb').AsString := Ed_hsb_new.text ;
         End;
     If Trim(Ed_cfhsb.text)<>Trim(Ed_cfhsb_new.text) Then
         Begin
           sql.add(',cfhsb=:cfhsb');
           Parambyname('cfhsb').AsString := Ed_cfhsb_new.text ;
         End;
     If ComBox_kind_new.ItemIndex<>-1  Then
         Begin
           sql.add(',type=:type');
           parambyname('type').asinteger:=StrToint(copy(ComBox_kind_new.text,1,pos(':',ComBox_kind_new.text)-1));
         End;

     Sql.Add('where ypbh=:ypbh ');
     Sql.Add('insert into xyzb_del(ypbh,hsb_old,cfhsb_old,type_old,jldw_old,zxdw_old,cfzxdw_old,skintry_old,ykkc_old,mzkc_old,jzkc_old,zykc_old,');
     Sql.Add('type,hsb,cfhsb,jldw,zxdw,cfzxdw,skintry,ykkc,mzkc,jzkc,zykc,delopid,deldate)');
     Sql.Add('values(:ypbh,:hsb_old,:cfhsb_old,:type_old,:jldw_old,:zxdw_old,:cfzxdw_old,:skintry_old,:ykkc_old,:mzkc_old,:jzkc_old,:zykc_old,');
     Sql.Add(':type,:hsb,:cfhsb,:jldw,:zxdw,:cfzxdw,:skintry,:ykkc,:mzkc,:jzkc,:zykc,:delopid,getdate())');
     Parambyname('ypbh').AsString := Ed_ypbh.Text ;
     Parambyname('hsb_old').AsString := Trim(Ed_hsb.text);
     Parambyname('cfhsb_old').AsString :=Trim(Ed_cfhsb.text);
     Parambyname('type_old').AsInteger := dm.Q_xyzb.fieldbyname('type').asinteger;
     Parambyname('jldw_old').AsString := Trim(Ed_jldw.text) ;
     Parambyname('zxdw_old').AsString :=Trim(Ed_zxdw.text) ;
     Parambyname('cfzxdw_old').AsString :=Trim(Ed_cfzxdw.text) ;
     Parambyname('skintry_old').AsInteger:=dm.Q_xyzb.fieldbyname('skintry').asinteger ;
     Parambyname('ykkc_old').AsCurrency := StrTocurrdef(Ed_ykkc.Text,0.0);
     Parambyname('mzkc_old').AsCurrency := StrTocurrdef(ed_mzyfkc.Text,0.0);
     Parambyname('jzkc_old').AsCurrency := StrTocurrdef(ed_jzyfkc.Text,0.0);
     Parambyname('zykc_old').AsCurrency := StrTocurrdef(ed_zyyfkc.Text,0.0);
     parambyname('type').asinteger:=StrToint(copy(ComBox_kind_new.text,1,pos(':',ComBox_kind_new.text)-1));
     Parambyname('hsb').AsString := Ed_hsb_new.text ;
     Parambyname('cfhsb').AsString := Ed_cfhsb_new.text ;
     Parambyname('jldw').AsString := combox_jldw_new.text ;
     Parambyname('zxdw').AsString := combox_zxdw_new.text ;
     Parambyname('cfzxdw').AsString := combox_cfzxdw_new.text ;
     parambyname('skintry').assmallint:=com_skintry_new.ItemIndex;
     Parambyname('ykkc').AsCurrency := StrTocurrdef(Ed_ykkc_new.Text,0.0);
     Parambyname('mzkc').AsCurrency := StrTocurrdef(ed_mzyfkc_new.Text,0.0);
     Parambyname('jzkc').AsCurrency := StrTocurrdef(ed_jzyfkc_new.Text,0.0);
     Parambyname('zykc').AsCurrency := StrTocurrdef(ed_zyyfkc_new.Text,0.0);
     Parambyname('delopid').Asinteger := StrToint(fm_czydl.ed_bh.text);
     execsql;
  End;
   // If Trim(Ed_ykkc.text)<>Trim(Ed_ykkc_new.text) Then
      With dm.q_comm do
      Begin
         Close;
         Sql.Clear;
         Sql.Add('update xykcun set kcl=:kcl where  ypbh=:ypbh ');
         Parambyname('kcl').Ascurrency := StrTocurrdef(Ed_ykkc_new.Text,0.0) ;
         Parambyname('ypbh').AsString := Ed_ypbh.Text ;
         execsql;
      End;
 // If Trim(ed_zyyfkc.text)<>Trim(ed_zyyfkc_new.text) Then
      With dm.q_comm do
      Begin
         Close;
         Sql.Clear;
         Sql.Add('update nkyc set kcl=:kcl where  ksbm=502 and ypbh=:ypbh ');
         Parambyname('kcl').Ascurrency := StrTocurrdef(ed_zyyfkc_new.Text,0.0) ;
         Parambyname('ypbh').AsString := Ed_ypbh.Text ;
         execsql;
      End;
 // If Trim(ed_mzyfkc.text)<>Trim(ed_mzyfkc_new.text) Then
      With dm.q_comm do
      Begin
         Close;
         Sql.Clear;
         Sql.Add('update nkyc set kcl=:kcl where ksbm=501 and ypbh=:ypbh ');
         Parambyname('kcl').Ascurrency := StrTocurrdef(ed_mzyfkc_new.Text,0.0) ;
         Parambyname('ypbh').AsString := Ed_ypbh.Text ;
         execsql;
      End;
 // If Trim(ed_jzyfkc.text)<>Trim(ed_jzyfkc_new.text) Then
      With dm.q_comm do
      Begin
         Close;
         Sql.Clear;
         Sql.Add('update nkyc set kcl=:kcl where ksbm=503 and ypbh=:ypbh ');
         Parambyname('kcl').Ascurrency := StrTocurrdef(ed_jzyfkc_new.Text,0.0) ;
         Parambyname('ypbh').AsString := Ed_ypbh.Text ;
         execsql;
      End;
       showmessage('药品单位修改成功，药品单位发生改变，请调整''药库药房库存''+''药品调价''');
       BitBtn3.SetFocus ;
 except
   showmessage('修改失败');
 end;
   Ed_ypbh.SetFocus ;

end;

procedure TFm_ypdwwh.ComBox_zxdw_newChange(Sender: TObject);
begin
   Label23.Caption :=Combox_zxdw_new.text;
   Label33.Caption :=Combox_zxdw_new.text;
   Label34.Caption :=Combox_zxdw_new.text;
   If Trim(ComBox_zxdw_new.text)=Trim(Ed_zxdw.text) then
       begin
          ed_zyyfkc_new.Text:=ed_zyyfkc.text;
          ed_mzyfkc_new.Text:=ed_mzyfkc.text;
          ed_jzyfkc_new.Text:=ed_jzyfkc.text;
//          ed_zyyfkc_new.Enabled :=False;
//          ed_mzyfkc_new.Enabled :=False;
//          ed_jzyfkc_new.Enabled :=False;
       end
   Else
       begin
          ed_zyyfkc_new.Text:='0';
          ed_mzyfkc_new.Text:='0';
          ed_jzyfkc_new.Text:='0';
//          ed_zyyfkc_new.Enabled :=True;
//          ed_mzyfkc_new.Enabled :=True;
//          ed_jzyfkc_new.Enabled :=True;
          showmessage('药房单位发生变化，请修改住院药房，门诊药房,急诊药房库存');
       end;
  Label39.Caption :='包装说明(1'+ComBox_zxdw_new.text+ed_cfhsb_new.text+Combox_cfzxdw_new.Text+')';
end;

procedure TFm_ypdwwh.Ed_ypbhEnter(Sender: TObject);
begin
  Ed_ypbh.clear;
  Ed_ykkc_new.clear;
  Ed_zyyfkc_new.clear;
  Ed_mzyfkc_new.clear;
  Ed_jzyfkc_new.clear;
  Label22.Caption:='';
  Label23.Caption:='';
  Label33.Caption:='';
  Label34.Caption:='';
  ComBox_jldw_new.ItemIndex:=-1;
  ComBox_zxdw_new.ItemIndex:=-1;
  ComBox_cfzxdw_new.ItemIndex:=-1;
  Ed_hsb_new.Text:='1';
  Ed_cfhsb_new.Text:='1';
end;

procedure TFm_ypdwwh.Combox_cfzxdw_newChange(Sender: TObject);
begin
  Label39.Caption :='包装说明(1'+ComBox_zxdw_new.text+ed_cfhsb_new.text+Combox_cfzxdw_new.Text+')';
end;

procedure TFm_ypdwwh.ed_cfhsb_newChange(Sender: TObject);
begin
  Label39.Caption :='包装说明(1'+ComBox_zxdw_new.text+ed_cfhsb_new.text+Combox_cfzxdw_new.Text+')';
end;

end.
