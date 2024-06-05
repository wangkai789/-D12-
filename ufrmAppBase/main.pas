unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Buttons, ToolWin, ComCtrls, jpeg, ExtCtrls, StdCtrls, mmsystem,
  ShellApi, DateUtils, ypgd, Vcl.FormTabsBar;

type
  TFrameClass = class of TFrame;

type
  TFm_main = class(TForm)
    GroupBox1: TGroupBox;
    SpdBut_login: TSpeedButton;
    SpdBut_bmly: TSpeedButton;
    SpdBut_tj: TSpeedButton;
    SpdBut2: TSpeedButton;
    SpdBut_quit: TSpeedButton;
    SpdBut_update: TSpeedButton;
    SpeedButton1: TSpeedButton;
    StatusBar1: TStatusBar;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel1: TPanel;
    Image1: TImage;
    Label_hospital: TLabel;
    SpeedButton7: TSpeedButton;
    MainMenu1: TMainMenu;
    N10: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    MainMenu2: TMainMenu;
    MenuItem1: TMenuItem;
    R1: TMenuItem;
    N21: TMenuItem;
    C1: TMenuItem;
    N15: TMenuItem;
    MenuItem2: TMenuItem;
    N38: TMenuItem;
    MenuItem7: TMenuItem;
    N43: TMenuItem;
    N12: TMenuItem;
    N25: TMenuItem;
    N32: TMenuItem;
    N36: TMenuItem;
    N33: TMenuItem;
    N35: TMenuItem;
    N37: TMenuItem;
    N29: TMenuItem;
    J1: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N16: TMenuItem;
    N26: TMenuItem;
    N42: TMenuItem;
    N27: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N17: TMenuItem;
    N11: TMenuItem;
    N18: TMenuItem;
    N9: TMenuItem;
    N28: TMenuItem;
    N30: TMenuItem;
    MenuItem3: TMenuItem;
    N41: TMenuItem;
    B1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N44: TMenuItem;
    N22: TMenuItem;
    N6: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N19: TMenuItem;
    M1: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem12: TMenuItem;
    N14: TMenuItem;
    MenuItem14: TMenuItem;
    N31: TMenuItem;
    MenuItem4: TMenuItem;
    M2: TMenuItem;
    N49: TMenuItem;
    N34: TMenuItem;
    N13: TMenuItem;
    N20: TMenuItem;
    N401: TMenuItem;
    N210: TMenuItem;
    N110: TMenuItem;
    MenuItem5: TMenuItem;
    Q1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
    SpdBut_rk: TSpeedButton;
    N67: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    N70: TMenuItem;
    N71: TMenuItem;
    N73: TMenuItem;
    N75: TMenuItem;
    N76: TMenuItem;
    N72: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure SpdBut_loginClick(Sender: TObject);
    procedure SpdBut_quitClick(Sender: TObject);
    procedure M2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure SpdBut_bmlyClick(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Q1Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure Label_hospitalClick(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure SpdBut_tjClick(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure SpdBut_updateClick(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N110Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N55Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure N53Click(Sender: TObject);
    procedure N66Click(Sender: TObject);
    procedure N65Click(Sender: TObject);
    procedure N64Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N76Click(Sender: TObject);
    procedure N70Click(Sender: TObject);
    procedure N73Click(Sender: TObject);
    procedure N75Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function system_sq(level: integer): boolean;
    procedure memnu(temp: boolean);
  end;

var
  Fm_main: TFm_main;
  year, month: integer;

implementation

uses czydl, Factory, data, ChangePassWord, About, ypadd, yprk, bmly,
  kccx, ypcx, sccjwh, fkcl, ghdwkccx, sccjkccx, aqldcx, sxypcx,
  rkdcd, rkdzf, qldcd, ykpd, jyfcx, reportform,
  qlyp, ypdwwh, depqlyp, ypxg, zpckgl, ck, ypjc, qxwh, ParamSet, buyPlan,
  qld_del,
  IntegratedQuery,
  InStore,
  PriceAdjustment,
  StoreTransfer,
  //门诊发药
  RecipeDetail,
  //住院发药
  SendMedUnit,
  //住院发药重打
  SendMedRePrintUnit,
  medReturncheck,
  CheckUnit,
  SendMedRipUnit,
  MedPlaceUnit,
  MedInStoreUnit;

{$R *.DFM}
{$R foo.res}

procedure TFm_main.FormShow(Sender: TObject);
const
  Model = 'yyyy/mm/dd,hh:mm:ss'; { 设定时间格式 }
var
  Tp: TSearchRec; { 申明Tp为一个查找记录 }
  Msg: string;
  Tf, T2: string;
  Y, M, D: word;
  AMonthFirst, AMonthLast: TDateTime;
begin
  SpdBut_login.Click;
  { 系统升级 }
  Tf := Application.ExeName;
  FindFirst(Tf, faAnyFile, Tp); { 查找目标文件 }
  // T2:=FormatDateTime(Model,CovFileDate(Tp.FindData.ftLastWriteTime));{ 返回文件的修改时间 }
  if CovFileDate(Tp.FindData.ftLastWriteTime) < Factory.sys_updatetime then
  begin
    if Application.MessageBox('管理系统检测到新版本，您需要升级吗？', '提示信息',
      mb_yesno + mb_iconquestion + mb_defbutton1) = idyes then
    begin
      shellexecute(self.Handle, 'open', 'UpdateSoftware.exe', nil, nil,
        sw_normal);
      Application.Terminate;
    end;
  end;
  FindClose(Tp);
  GetMonthDay(date(), AMonthFirst, AMonthLast);
  year := YearOf(date);
  month := MonthOf(date);
  dm.Inital_SystemData;
  self.Caption :=dm.sysinfo.hospitalName+'-'+'药库系统' + dm.FVer;
end;

procedure TFm_main.SpdBut_loginClick(Sender: TObject);
var
  temp: boolean;
begin
  dataset_open(dm.q_comm, 'select * from hospital_info');
  Label_hospital.Caption := dm.q_comm.fieldbyname('name').asstring;
  dm.SysInfo.hospitalName := Label_hospital.Caption;
  dm.SysInfo.HospitalYBCode := dm.q_comm.fieldbyname('bh_country').asstring;
  self.Caption := dm.SysInfo.HospitalYBCode + ':' + dm.SysInfo.hospitalName+':' + '药库系统';
  self.Tag := 500;
  fm_czydl.showmodal;
  if fm_czydl.Tag = 0 then
  begin
    temp := false;
    Application.Terminate
  end
  else
    temp := true;
  SpdBut_login.Down := temp;
  if temp then
  begin
    { if not dm.settime then
      begin
      application.messagebox('系统校时错误，请重新登陆系统！','错误提示',mb_iconstop);
      temp:=false;
      end; }
    SpdBut_login.Caption := '挂起系统'
  end
  else
    SpdBut_login.Caption := '登录系统';

  if not fm_czydl.supperuser then
  begin
    if temp then
    begin
      if not system_sq(fm_czydl.level) then
        memnu(false)
    end
    else
      memnu(temp)
  end
  else
    memnu(temp);
end;

procedure TFm_main.SpdBut_quitClick(Sender: TObject);
begin
  // fm_zzycx.showmodal;
  close;
end;

procedure TFm_main.M2Click(Sender: TObject);
var
  temp: TFmChangePassword;
begin
  temp := TFmChangePassword.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N1Click(Sender: TObject);
var
  temp: TFmAbout;
begin
  temp := TFmAbout.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.MenuItem11Click(Sender: TObject);
begin
  Fm_main.Tag := 3;
  Fm_ypadd.showmodal;
end;

procedure TFm_main.SpdBut_bmlyClick(Sender: TObject);
var
  temp: TFm_buyPlan;
begin
  temp := TFm_buyPlan.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N23Click(Sender: TObject);
var
  temp: TFrm_PriceAdjustment;
begin
  temp := TFrm_PriceAdjustment.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N27Click(Sender: TObject);
var
  temp: TFm_kccx;
begin
  temp := TFm_kccx.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N2Click(Sender: TObject);
var
  temp: TFm_ypcx;
begin
  temp := TFm_ypcx.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.Q1Click(Sender: TObject);
begin
  close;
end;

procedure TFm_main.MenuItem14Click(Sender: TObject);
begin
  fm_sccjwh.showmodal;
end;

procedure TFm_main.Label_hospitalClick(Sender: TObject);
begin
  // fm_fkcl.showmodal;
end;

procedure TFm_main.MenuItem7Click(Sender: TObject);
var
  temp: Tfm_fkcl;
begin
  temp := Tfm_fkcl.create(self);
  temp.showmodal;
  temp.free
end;

procedure TFm_main.N70Click(Sender: TObject);
begin
  Frm_SendMed:=TFrm_SendMed.Create(self);
  Frm_SendMed.showmodal;
  Frm_SendMed.free;
end;

procedure TFm_main.N71Click(Sender: TObject);
begin
  Frm_SendMedRip:=TFrm_SendMedRip.Create(self);
  Frm_SendMedRip.showmodal;
  Frm_SendMedRip.free;
end;

procedure TFm_main.N72Click(Sender: TObject);
var
  temp: TFrm_MedPlace;
begin
  temp := TFrm_MedPlace.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N73Click(Sender: TObject);
begin
  fm_medReturncheck:=Tfm_medReturncheck.Create(self);
  fm_medReturncheck.showmodal;
  fm_medReturncheck.free;
end;

procedure TFm_main.N75Click(Sender: TObject);
begin
  Frm_check:=TFrm_check.Create(self);
  Frm_check.showmodal;
  Frm_check.free;
end;

procedure TFm_main.N76Click(Sender: TObject);
begin
  Frm_SendMedRePrint:=TFrm_SendMedRePrint.Create(self);
  Frm_SendMedRePrint.showmodal;
  Frm_SendMedRePrint.free;
end;

procedure TFm_main.N7Click(Sender: TObject);
var
  temp: Tfm_ghdwkccx;
begin
  temp := Tfm_ghdwkccx.create(self);
  temp.showmodal;
  temp.free
end;

procedure TFm_main.N8Click(Sender: TObject);
var
  temp: Tfm_sccjkccx;
begin
  temp := Tfm_sccjkccx.create(self);
  temp.showmodal;
  temp.free
end;

procedure TFm_main.SpdBut_tjClick(Sender: TObject);
begin
  N23Click(Sender);
end;

procedure TFm_main.N9Click(Sender: TObject);
var
  temp: tfm_aqldcx;
begin
  temp := tfm_aqldcx.create(self);
  temp.showmodal;
  temp.free
end;

procedure TFm_main.N33Click(Sender: TObject);
begin
  fm_rkdcd.Tag := 1;
  fm_rkdcd.showmodal;
end;

procedure TFm_main.N35Click(Sender: TObject);
begin
  fm_rkdzf.showmodal;
end;

procedure TFm_main.N40Click(Sender: TObject);
begin
  fm_ykpd.showmodal;
end;

procedure TFm_main.N36Click(Sender: TObject);
var
  temp: tfm_qldcd;
begin
  temp := tfm_qldcd.create(self);
  temp.showmodal;
  temp.free
end;

procedure TFm_main.N41Click(Sender: TObject);
var
  temp: Tfm_jyfcx;
begin
  temp := Tfm_jyfcx.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.memnu(temp: boolean);
begin
  SpdBut_login.Down := temp;
  MenuItem1.Enabled := temp;
  C1.Enabled := temp;
  J1.Enabled := temp;
  B1.Enabled := temp;
  M1.Enabled := temp;
  Q1.Enabled := temp;
end;

function TFm_main.system_sq(level: integer): boolean;
var
  icount, j: integer;
begin
  with dm.Q_public do
  begin
    close;
    sql.clear;
    sql.add('select * from  permission where powerlevel=:powerlevel and PartID=:PartID');
    parambyname('PartID').asinteger := self.Tag;
    parambyname('powerlevel').assmallint := level;
    open;
    if isempty then
      exit;
    for icount := 0 to self.ComponentCount - 1 do
    begin
      if self.Components[icount] is TMenuItem then
      begin
        with dm.q_comm do
        begin
          close;
          sql.clear;
          sql.add('select * from permission where ItemID=:ItemID and PartID=:PartID and Powerlevel=:Level and [select]=1');
          parambyname('ItemID').assmallint :=
            TMenuItem(self.Components[icount]).Tag;
          parambyname('PartID').assmallint := self.Tag;
          parambyname('Level').assmallint := level;
          open;
          if recordcount > 0 then
            TMenuItem(self.Components[icount]).Enabled := true
          else
            TMenuItem(self.Components[icount]).Enabled := false;
        end;
      end;
    end;

    for j := 0 to self.ComponentCount - 1 do
    begin
      if self.Components[j] is TSpeedButton then
      begin
        with dm.q_comm do
        begin
          close;
          sql.clear;
          sql.add('select * from permission where ItemID=:ItemID and PartID=:PartID '
            + '    and Powerlevel=:Level and [select]=1');
          parambyname('ItemID').assmallint :=
            (self.Components[j] as TSpeedButton).Tag;
          parambyname('PartID').assmallint := self.Tag;
          parambyname('Level').assmallint := level;
          open;
          if recordcount > 0 then
            (self.Components[j] as TSpeedButton).Enabled := true
          else
            (self.Components[j] as TSpeedButton).Enabled := false;
        end;
      end;
    end;
  end;
end;

procedure TFm_main.N51Click(Sender: TObject);
begin
  close;
end;

procedure TFm_main.N52Click(Sender: TObject);
var
 temp:TFm_yprk;
begin
  Fm_yprk.Tag:=0;
  Fm_yprk.showmodal;
end;

procedure TFm_main.N53Click(Sender: TObject);
var
  temp: TFm_buyPlan;
begin
  temp := TFm_buyPlan.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N55Click(Sender: TObject);
begin
  fm_ck.Tag := 100;
  fm_ck.show;
end;

procedure TFm_main.N56Click(Sender: TObject);
begin
  fm_zpckgl.Tag := 200;
  fm_zpckgl.showmodal;
end;

procedure TFm_main.N57Click(Sender: TObject);
var
  temp: TFm_StoreTransfer;
begin
  temp := TFm_StoreTransfer.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N58Click(Sender: TObject);
var
  temp: TFrm_IntegratedQuery;
begin
  temp := TFrm_IntegratedQuery.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N59Click(Sender: TObject);
var
  temp: TFm_ypchange;
begin
  temp := TFm_ypchange.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N60Click(Sender: TObject);
begin
  fm_sccjwh.showmodal;
end;

procedure TFm_main.N61Click(Sender: TObject);
var
  temp: TFmChangePassword;
begin
  temp := TFmChangePassword.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N62Click(Sender: TObject);
begin
  frm_wh.showmodal;
end;

procedure TFm_main.N63Click(Sender: TObject);
var
  temp: TFrm_ParamSet;
begin
  temp := TFrm_ParamSet.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N64Click(Sender: TObject);
var
  temp: TFm_yppd;
begin
  temp := TFm_yppd.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N65Click(Sender: TObject);
begin
  DeleteIECache('');
  shellexecute(self.Handle, 'open', 'UpdateSoftware.exe', nil, nil, sw_normal);
  Application.Terminate;
end;

procedure TFm_main.N66Click(Sender: TObject);
begin
  Fm_report.frxrprt1.DesignReport;
end;

procedure TFm_main.N68Click(Sender: TObject);
var
  temp: TFmRecipeDetail;
begin
  temp:=TFmRecipeDetail.create(self);
  temp.showmodal;
  temp.Free;
end;

procedure TFm_main.N14Click(Sender: TObject);
begin
  Fm_ypdwwh.showmodal;
end;

procedure TFm_main.N25Click(Sender: TObject);
begin
  Fm_depqlyp.showmodal;
end;

procedure TFm_main.MenuItem12Click(Sender: TObject);
begin
  Fm_ypchange.showmodal;
end;

procedure TFm_main.SpdBut_updateClick(Sender: TObject);
begin
  DeleteIECache('');
  shellexecute(self.Handle, 'open', 'UpdateSoftware.exe', nil, nil, sw_normal);
  Application.Terminate;
  // application.Terminate ;
  // ShellExecute(Application.handle,'open','PAutoUpate.exe',nil,'AutoUpdate',sw_normal);
end;

procedure TFm_main.N38Click(Sender: TObject);
begin
  fm_zpckgl.Tag := 200;
  fm_zpckgl.showmodal;
end;

procedure TFm_main.N3Click(Sender: TObject);
var
  temp: TFrm_PriceAdjustment;
begin
  temp := TFrm_PriceAdjustment.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N21Click(Sender: TObject);
var
  temp: TFm_ypjc;
begin
  temp := TFm_ypjc.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.R1Click(Sender: TObject);
begin
  fm_yprk.Tag := 0;
  fm_yprk.showmodal;
end;

procedure TFm_main.SpeedButton2Click(Sender: TObject);
begin
  fm_ck.Tag := 100;
  fm_ck.show;
end;

procedure TFm_main.N12Click(Sender: TObject);
var
  temp: TFm_qlyp;
begin
  temp := TFm_qlyp.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N110Click(Sender: TObject);
var
  temp: TFm_yppd;
begin
  temp := TFm_yppd.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N34Click(Sender: TObject);
var
  temp: TFrm_ParamSet;
begin
  temp := TFrm_ParamSet.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N31Click(Sender: TObject);
var
  temp: TFm_qld_del;
begin
  temp := TFm_qld_del.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.SpeedButton1Click(Sender: TObject);
var
  temp: TFrm_IntegratedQuery;
begin
  temp := TFrm_IntegratedQuery.create(self);
  temp.showmodal;
  temp.free;
end;

procedure TFm_main.N29Click(Sender: TObject);
var
  temp: TFm_StoreTransfer;
begin
  temp := TFm_StoreTransfer.create(self);
  temp.showmodal;
  temp.free;
end;

end.
