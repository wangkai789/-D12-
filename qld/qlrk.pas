unit qlrk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids;

type
  TFm_qlrk = class(TForm)
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Ed_qldh: TEdit;
    BtnGet: TBitBtn;
    BitBtn1: TBitBtn;
    BtnGetMed: TBitBtn;
    DBGrid1: TDBGrid;
    DBGridNoteNO: TDBGrid;
    BitBtn2: TBitBtn;
    procedure BtnGetClick(Sender: TObject);
    procedure DBGridNoteNODblClick(Sender: TObject);
    procedure Ed_qldhEnter(Sender: TObject);
    procedure BtnGetMedClick(Sender: TObject);
    procedure Ed_qldhKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridNoteNOKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_qlrk: TFm_qlrk;

implementation

uses data, czydl, ssph,classlib;

{$R *.DFM}

procedure TFm_qlrk.BtnGetClick(Sender: TObject);
begin
  With DM.Q_comm do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select 请领单号=qldh,请领日期 = qlrq,发药日期=fyrq,出库号=ckh FROM qlyf');
    SQL.Add('WHERE ckh is not null and yfbm = :yfbm ');
    SQL.Add('and   fyrq is not null and yfqr is null');
    case  self.Tag of
    0:SQL.Add('and   ifty=0');
    1:SQL.Add('and   ifty=1');
    end;
    ParamByName('yfbm').AsString :=inttostr(sysinfo.ksbm);
    if Ed_qldh.GetTextLen > 0 then
    begin
      SQL.Add('      and  qldh = :QLDH');
      ParamByName('qldh').AsInteger:=strtoint(trim(ed_qldh.text));
    end;
    Open;
    case RecordCount of
      0:begin
          application.MessageBox('该药房无需入库药品！'+#13#13+'1、无此请领单号。'+#13#13+'2、药库没确认发药。','错误提示',0+mb_iconstop);
          DM.Q_public.Close;
        end;
      //1:DBGridNoteNODblClick(Sender);
      else
      begin DBGridNoteNO.Visible := True; DBGridNoteNO.SetFocus; end;
    end;
  end;
end;

procedure TFm_qlrk.DBGridNoteNODblClick(Sender: TObject);
begin
  Ed_qldh.Text:=DM.Q_comm['请领单号'];
  With DM.Q_public do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select 药名=ym,规格=gg,实发量=SFL,药品编号=a.ypbh ');
    SQL.Add('FROM QLDB a,XYZB b ');
    SQL.Add('WHERE a.YPBH = b.YPBH AND a.QLDH = :QLDH ');
    ParamByName('QLDH').AsInteger := strtoint(Ed_qldh.text);
    Open;
  end;
  if DM.Q_comm.IsEmpty then Exit;
  DBGridNoteNO.Visible:=false;
  DBGrid1.SetFocus;
  BtnGetMed.Enabled := True;
end;

procedure TFm_qlrk.Ed_qldhEnter(Sender: TObject);
begin
  Ed_qldh.Clear; dm.Q_public.Close;
end;

procedure TFm_qlrk.BtnGetMedClick(Sender: TObject);
begin
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.add('exec mz_mzyf_qlrk :qldh');
    parambyname('qldh').asinteger:=strtoint(Ed_qldh.Text);
    try
      execsql;
      case self.tag of
      0:application.MessageBox('该请领单入库成功','提示',0);
     1:begin
          with dm.Q_public  do
            begin
               close;
               sql.Clear;
               sql.add('update nkyc set lockid=lockid-1 '
                    +' where ypbh in (select ypbh from qldb where     '
                    +' qldh=:qldh) and ksbm=:ksbm');
                parambyname('qldh').asinteger:=strtoint(Ed_qldh.Text);
                ParamByName('ksbm').AsString :=inttostr(sysinfo.ksbm);
                execsql;
             end;
             application.MessageBox('出库成功','提示',0);
          end;
      end;
        with dm.Q_public do
         begin
           close;
           sql.clear;
           sql.add('select   药名=c.ym,规格=c.gg,原库存量=a.oldkcl,实发量=b.SFL,核算比=a.yphsb,现库存量=a.kcl,编码=a.ypbh');
           sql.add('from nkyc  a,qldb b,xyzb c');
           sql.add('where b.qldh=:qldh and  a.ypbh=b.ypbh and a.ksbm=:ksbm and b.ypbh=c.ypbh');
           parambyname('qldh').asinteger:=strtoint(Ed_qldh.Text);
           ParamByName('ksbm').AsString :=inttostr(sysinfo.ksbm);
           open;
         end;
    except
      application.MessageBox('该请领单入库失败，请重试！！','错误提示',0+mb_iconstop);
      exit;
    end;
  end;
  BtnGetMed.Enabled := false;
end;

procedure TFm_qlrk.Ed_qldhKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then BtnGetClick(Sender);
end;

procedure TFm_qlrk.DBGridNoteNOKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGridNoteNODblClick(Sender);
end;

procedure TFm_qlrk.BitBtn1Click(Sender: TObject);
begin
dm.Q_public.Close;
dm.Q_comm.Close;
end;

procedure TFm_qlrk.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var i :integer;
begin
  for i:=0 to DBGrid1.Columns.Count-1 do
  DBGrid1.Columns[i].Title.Alignment:=tacenter;
end;

procedure TFm_qlrk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.q_public.close;
  dm.q_comm.close;
  action:=cafree;
end;

procedure TFm_qlrk.BitBtn2Click(Sender: TObject);
begin
  fm_ssph.showmodal;
end;

end.
