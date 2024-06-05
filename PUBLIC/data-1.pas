unit data;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables,IniFiles,StdCtrls,Menus,Buttons,ComCtrls;
  
type
  TSysInfo = record
    face:string;
    explain:string;
    StoreCondition:string;
    CheckConclusion:string;
    certify:string;

    storeA:String;
    storeB:String;
    storeC:String;
    storeD:String;
    safekeep:string;
    purchase:string;
    accountant:string;
    AdditionRateMed:string;
    AdditionRateCMed:string;
    yfbm:string;
    yfmc:string;
    hospitalName:string;

 end;


 type
  Txyzb=record
    ypbh:string;
    ym:string;
    pym:string;
    lsm:string;
    zlbm:smallint;
    zlm:string;
    gf:smallint;
    jxbm:smallint;
    jx:string;
    gg:string;
    zxdw:string;
    hsb:integer;
    jldw:string;
    pfj:currency;
    ypj:currency;
    ylsj:currency;
    bm:string;
    ywm:string;
    lb:smallint;
    lbm:string;
    ddd:integer;
    jjyp:boolean;
    cfhsb:integer;
    cfzxdw:string;
    ifzy:boolean;
    selfyp:string;
    oper_date:tdatetime;
    operbh:integer;
    up_date:tdatetime;
    upbh:smallint;
    skintry:smallint;
    atype:smallint;
    Inp_Place:string;
    Outp_Place:string;
    bank_place:string;
    xnhbm:string;
    xnhkind:string;
    xnhbl:real;
    ybbm:string;
    ybkind:string;
    lbA:string;
    lbB:string;
    produce:string;
    cjbm:integer;
    basic:boolean;
    StoreType:STRING;
    mzylsj:currency;
    dosage:Currency;
    checklb:integer;
    checklbm:string;
    barcode:string;
end;


type
  Tdm = class(TDataModule)
    Database_yy: TDatabase;
    Q_comm: TQuery;
    DS_comm: TDataSource;
    Q_MedStore: TQuery;
    DS_MedStore: TDataSource;
    Q_public: TQuery;
    DS_public: TDataSource;
    Q_public1: TQuery;
    DS_public1: TDataSource;
    Q_tyygs: TQuery;
    Ds_tyygs: TDataSource;
    Q_public2: TQuery;
    DS_public2: TDataSource;
    Q_xyzb: TQuery;
    DS_xyzb: TDataSource;
    Q_song: TQuery;
    DS_song: TDataSource;
    Q_sumrk: TQuery;
    DS_sumrk: TDataSource;
    Q_sumck1: TQuery;
    DS_sumck1: TDataSource;
    Q_sumck2: TQuery;
    DS_sumck2: TDataSource;
    Q_sumck3: TQuery;
    DS_sumck3: TDataSource;
    Q_kcun: TQuery;
    DS_kcun: TDataSource;
    Q_use: TQuery;
    DS_use: TDataSource;
    Q_cx: TQuery;
    DS_cx: TDataSource;
    Q_tj: TQuery;
    DS_tj: TDataSource;
    Q_ks: TQuery;
    DS_ks: TDataSource;
    Q_master: TQuery;
    DS_master: TDataSource;
    Q_detail: TQuery;
    DS_detail: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Q_MXYZB: TQuery;
    DS_MXYZB: TDataSource;
    Q_comm1: TQuery;
    Ds_comm1: TDataSource;
    q_zb2: TQuery;
    ds_zb2: TDataSource;
    q_zd: TQuery;
    ds_zd: TDataSource;
    qry_yp: TQuery;
    DS_yp: TDataSource;
    Q_qldb: TQuery;
    DS_qldb: TDataSource;
    UpdateSQL: TUpdateSQL;
    UpdateSQL_Outbank: TUpdateSQL;
    Q_rktemp: TQuery;
    DS_rktemp: TDataSource;
    Q_sell: TQuery;
    Ds_sell: TDataSource;
    Q_inbank: TQuery;
    procedure DataModuleCreate(Sender: TObject);
  private

    { Private declarations }
    FMainPath:STRING;
  public
    { Public declarations }
    Fopid:string;
    Fyfbm:integer;
    FopidName:string;
    Flevel:integer;
    FSq:integer;
    sysinfo:TSysInfo;
    function settime():boolean;
    function SaveToIniFile_String(FileName, Section, Indent, Vaule: string):Boolean;
    function LoadFromIniFile_String(FileName, Section, Indent, Default: string):string;
    function SaveToIniFile_Integer(FileName, Section, Indent: string; Vaule:Integer): Boolean;
    function LoadFromIniFile_Integer(FileName, Section, Indent: string; Default:integer): integer;
    function SaveToIniFile_Boolean(FileName, Section, Indent: string; Vaule:Boolean): Boolean;
    function LoadFromIniFile_Boolean(FileName, Section, Indent: string; Default:Boolean): Boolean;
    function  listProduce(pym:string):TDataSource;
    function SearchMedLog(datefrom,dateto:tdatetime):TDataSource;
    function searchkc(query:Tquery;ypbh:string;var ykkc:currency;var mzkc:currency ;var zykc:currency):boolean;
    procedure UpdateMed(Medinfo:Txyzb;opid:string);
    function  AddMed(Medinfo:Txyzb;opid:string):boolean;
    procedure AddMedLog(opid,opidname,Msg:string);
    procedure PrintInBankInfo(lsh,year,month:integer);
    procedure PrintCancelInBankInfo(lsh,year,month:integer);
    function  AddMedBackInfo(ypbh: string): boolean;
    function  SearchQlTemp(opid:integer):boolean;
    function  SearchdepQlTemp(opid:integer):boolean;
    procedure SetStoreValue(MyComboBox: TComboBox);

    procedure SetAdditionRateValue(MyComboBox: TComboBox);
    procedure UpdateInBankInfo(lsh:integer;InbankDate:tdatetime);
    function  SearchInBankInfo(lsh:integer;InbankDate:tdatetime):TDataSource;
    function  CheckOutBankStatus(lsh:integer;InbankDate:tdatetime):boolean;
    procedure CancelInBankInfo(lsh: integer; InbankDate: tdatetime;opid:integer);
    function  Search_InbankBill(datefrom,dateto:tdatetime;BillType:integer):boolean;
    function  UpdateSupply(lsh,id:integer):boolean;
    function  UpdateProduce(lsh,id:integer):boolean;
    function  listSupply(pym:string):TDataSource;
    function  SetCmbxValue(MyComboBox: TComboBox;Sqlstr:string;ParamCount:integer):boolean;
    function Inital_SystemData:Boolean;
    function Save_SystemData():Boolean;
    function  Search_bank(Medlb,MaxValue,MedType:integer;Medcode:string;Zero:boolean):boolean;
    function  System_sq(myform:TForm;sq,level:integer):boolean;

  end;

var
  dm: Tdm;
  //function settime(temp:tquery):boolean;stdcall;external 'changetime.dll' name 'settime';

implementation

uses reportform;

{$R *.DFM}
function Tdm.AddMed(Medinfo: Txyzb; opid: string):boolean;
begin
  result:=false;
 with dm.Q_PUBLIC do
  begin
    close;
    sql.Clear;
    sql.Add('exec  MedBank_AddMed  :ypbh,:ym,:pym,:lsm,:zlbm,:zlm,:gf,:jxbm ,:jx,:gg,:zxdw,:hsb,:jldw,:pfj,:ypj,:ylsj,:mzylsj,:bm,:ywm');
    sql.Add(',:lb ,:lbm,:ddd,:jjyp ,:cfhsb ,:cfzxdw ,:ifzy,:selfyp ,:oper_date,:operbh,:up_date,:upbh');
    sql.Add(',:skintry,:type,:Inp_Place ,:Outp_Place ,:bank_place ,:xnhbm,:xnhkind,:xnhbl ,:ybbm,:ybkind,:lbA,:lbB ,:produce,:basic,:cjbm,:storetype,:dosage,:checklb,:checklbm,:barcode');
    try
      parambyname('ypbh').AsString:=trim(Medinfo.ypbh);
      parambyname('ym').AsString:=trim(Medinfo.ym);
      parambyname('pym').AsString:=trim(Medinfo.pym);
      parambyname('lsm').AsString:=trim(Medinfo.lsm);
      parambyname('zlbm').asinteger:=Medinfo.zlbm;
      parambyname('zlm').AsString:=trim(Medinfo.zlm);
      parambyname('gf').assmallint:=Medinfo.gf;
      parambyname('jxbm').assmallint:=Medinfo.jxbm;
      parambyname('jx').AsString:=trim(Medinfo.jx);
      parambyname('gg').AsString:=trim(Medinfo.gg);
      parambyname('zxdw').AsString:=trim(Medinfo.zxdw);
      parambyname('hsb').asinteger:=Medinfo.hsb;
      parambyname('jldw').AsString:=trim(Medinfo.jldw);
      parambyname('pfj').ascurrency:=Medinfo.pfj;
      parambyname('ypj').ascurrency:=Medinfo.ypj;
      parambyname('ylsj').ascurrency:=Medinfo.ylsj;
      parambyname('mzylsj').ascurrency:=Medinfo.mzylsj;
      parambyname('bm').AsString:=trim(Medinfo.bm);
      parambyname('ywm').AsString:=trim(Medinfo.ywm);
      parambyname('lb').asinteger:=Medinfo.lb;
      parambyname('lbm').AsString:=trim(Medinfo.lbm);
      parambyname('ddd').asinteger:=Medinfo.ddd;
      parambyname('jjyp').asboolean:=Medinfo.jjyp;
      parambyname('cfhsb').asinteger:=Medinfo.cfhsb;
      parambyname('cfzxdw').AsString:=trim(Medinfo.cfzxdw);
      parambyname('ifzy').asboolean:=Medinfo.ifzy;
      parambyname('selfyp').AsString:=trim(Medinfo.selfyp);
      parambyname('oper_date').asdatetime:=Medinfo.oper_date;
      parambyname('operbh').asinteger:=Medinfo.operbh;
      parambyname('up_date').asdatetime:=Medinfo.up_date;
      parambyname('upbh').asinteger:=Medinfo.upbh;
      parambyname('skintry').asinteger:=Medinfo.skintry;
      parambyname('type').asinteger:=Medinfo.atype;
      parambyname('Inp_Place').AsString:=trim(Medinfo.Inp_Place);
      parambyname('Outp_Place').AsString:=trim(Medinfo.Outp_Place);
      parambyname('bank_place').AsString:=trim(Medinfo.bank_place);
      parambyname('xnhbm').AsString:=Medinfo.xnhbm;
      parambyname('xnhkind').AsString:=trim(Medinfo.xnhkind);
      parambyname('xnhbl').ascurrency:=Medinfo.xnhbl;
      parambyname('ybbm').AsString:=trim(Medinfo.ybbm);
      parambyname('ybkind').AsString:=trim(Medinfo.ybkind);
      parambyname('lbA').AsString:=trim(Medinfo.lbA);
      parambyname('lbB').AsString:=trim(Medinfo.lbB);
      parambyname('produce').AsString:=trim(Medinfo.produce);
      parambyname('basic').asboolean:=Medinfo.basic;
      parambyname('cjbm').AsInteger:=Medinfo.cjbm;
      parambyname('storetype').asstring:=Medinfo.StoreType;
      parambyname('dosage').AsCurrency:=Medinfo.dosage;
      parambyname('checklb').asinteger:=Medinfo.checklb;
      parambyname('checklbm').asstring:=Medinfo.checklbm;
      parambyname('barcode').asstring:=Medinfo.barcode;
      ExecSQL;
      Application.MessageBox('新增药品成功。','提示',0);
      result:=true;
    except
       on E: Exception do MEssageDlg(e.Message, mterror, [mbok], 0);
    end;
  end;
end;

function Tdm.AddMedBackInfo(ypbh: string): boolean;
begin
  result:=false;
  with dm.Q_comm do
   begin
     close;
     sql.clear;
     sql.add('exec proc_yktk_ypadd :ypbh');
     parambyname('ypbh').asstring:=trim(ypbh);
     try
       ExecSQL;
       result:=true;
     except
       exit;
     end;
   end;

end;

procedure Tdm.AddMedLog(opid, opidname, Msg: string);
begin
  with dm.Q_public do
 begin
   close;
   sql.Clear;
   sql.add('insert into MedUpdateLog(opid,name,up_date,content) select :opid,:name,getdate(),:content');
   parambyname('opid').asstring:=opid;
   parambyname('name').asstring:=opidname;
   parambyname('content').asstring:=Msg;
   ExecSQL;
 end;
end;

procedure Tdm.CancelInBankInfo(lsh: integer; InbankDate: tdatetime;
  opid: integer);
begin
  with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('exec MedBank_InbankCancel :lsh,:inbankdate,:opid');   //datediff(month,rkdate,getdate())=0  grze=@ze,ce=@ce,
    parambyname('lsh').asinteger:=lsh;
    parambyname('inbankdate').asdatetime:=InbankDate;
    ParamByName('opid').asinteger:=opid;
    try
      ExecSQL;
      application.messagebox('作废成功！','提示',48);
    except
      application.messagebox('作废出错,请重试！','提示',48);
    end;
  end;
end;

function Tdm.CheckOutBankStatus(lsh: integer;
  InbankDate: tdatetime): boolean;
begin
   with dm.q_comm do
  begin
    close;
    sql.clear;
    sql.add('if (select top 1 rkxh from xykchu  where rkxh in (select rkxh  from xykr  where lsh=:lsh and datediff(month,rkrq,:InbankDate)=0)) is not  null ');
    sql.add('select outbank=1 else select outbank=0 ');
    parambyname('lsh').asinteger:=lsh;
    parambyname('inbankdate').asdatetime:=InbankDate;
    try
      open;
      result:=q_comm.fieldbyname('outbank').AsVariant;
    except
      application.messagebox('检查入库单状态出错！','提示',48);
    end;
  end;
end;

function Tdm.Inital_SystemData: Boolean;
begin
   dm.sysinfo.face:=dm.LoadFromIniFile_String(FMainPath +            'HisYk_Console.ini', 'RK', 'face', '');
   dm.sysinfo.explain :=dm.LoadFromIniFile_String(FMainPath +        'HisYk_Console.ini', 'RK', 'explain', '');
   dm.sysinfo.StoreCondition:=dm.LoadFromIniFile_String(FMainPath +  'HisYk_Console.ini', 'RK', 'StoreCondition', '');
   dm.sysinfo.CheckConclusion:=dm.LoadFromIniFile_String(FMainPath + 'HisYk_Console.ini', 'RK', 'CheckConclusion', '');
   dm.sysinfo.certify:=dm.LoadFromIniFile_String(FMainPath +        'HisYk_Console.ini', 'RK', 'certify', '');
   dm.sysinfo.storeA:=dm.LoadFromIniFile_String(FMainPath +         'HisYk_Console.ini', 'storetype', 'storeA',dm.sysinfo.storeA);
   dm.sysinfo.storeB:=dm.LoadFromIniFile_String(FMainPath +         'HisYk_Console.ini', 'storetype', 'storeB',dm.sysinfo.storeB);
   dm.sysinfo.storeC:=dm.LoadFromIniFile_String(FMainPath +         'HisYk_Console.ini', 'storetype', 'storeC',dm.sysinfo.storeC);
   dm.sysinfo.storeD:=dm.LoadFromIniFile_String(FMainPath +         'HisYk_Console.ini', 'storetype', 'storeD',dm.sysinfo.storeD);
   dm.sysinfo.safekeep :=dm.LoadFromIniFile_String(FMainPath +         'HisYk_Console.ini', 'USER', 'safekeep',dm.sysinfo.safekeep);
   dm.sysinfo.purchase :=dm.LoadFromIniFile_String(FMainPath +         'HisYk_Console.ini', 'USER', 'purchase',dm.sysinfo.purchase);
   dm.sysinfo.accountant:=dm.LoadFromIniFile_String(FMainPath +         'HisYk_Console.ini', 'USER', 'accountant',dm.sysinfo.accountant);
   dm.sysinfo.AdditionRateMed :=dm.LoadFromIniFile_String(FMainPath +   'HisYk_Console.ini', 'AdditionRate', 'AdditionRateMed',dm.sysinfo.AdditionRateMed);
   dm.sysinfo.AdditionRatecMed:=dm.LoadFromIniFile_String(FMainPath +   'HisYk_Console.ini', 'AdditionRate', 'AdditionRatecMed',dm.sysinfo.AdditionRatecMed);
   sysinfo.yfbm:=dm.LoadFromIniFile_String(FMainPath +   'HisYk_Console.ini', 'storetype', 'yfbm',sysinfo.yfbm);
   sysinfo.yfmc:=dm.LoadFromIniFile_String(FMainPath +   'HisYk_Console.ini', 'storetype', 'yfmc',sysinfo.yfmc);


end;

function Tdm.listProduce(pym: string): TDataSource;
begin
  with dm.Q_use do
   begin
     close;
     sql.Clear;
     sql.Add('select 代码=cjbm,名称=cm from sccj where pym like :pym and ifzy=1 order by cjbm');
     parambyname('pym').AsString:='%'+pym+'%';
     open;
     if not isempty then result:=dm.DS_use else result:=nil;
   end;
end;

function Tdm.listSupply(pym: string): TDataSource;
begin
   with dm.Q_use do
   begin
     close;
     sql.Clear;
     sql.Add('select 代码=inc_code,名称=inc_name from  ghdw where inc_call like :pym and ifzy=1 order by inc_code');
     parambyname('pym').AsString:='%'+pym+'%';
     open;
     if not isempty then result:=dm.DS_use else result:=nil;
   end;
end;

function Tdm.LoadFromIniFile_Boolean(FileName, Section, Indent: string;Default: Boolean): Boolean;
var
  TmpIniFile: TIniFile;
begin

  Result := Default;
  TmpiniFile := TIniFile.Create(FileName);
  try
    Result := TmpiniFile.ReadBool(Section, Indent, Default);
  finally
    TmpiniFile.free;
  end;

end;

function Tdm.LoadFromIniFile_Integer(FileName, Section, Indent: string;Default: integer): integer;
var
  TmpIniFile: TIniFile;
begin
  Result := Default;
  if FileExists(FileName) then
  begin
    TmpiniFile := TIniFile.Create(FileName);
    try
      Result := TmpiniFile.ReadInteger(Section, Indent, Default);
    finally
      TmpiniFile.free;
    end;
  end;
end;


function Tdm.LoadFromIniFile_String(FileName, Section, Indent,  Default: string): string;
var    TmpIniFile: TIniFile;
begin
  Result := Default;
  if FileExists(FileName) then
  begin
    TmpiniFile := TIniFile.Create(FileName);
    try
      Result := TmpiniFile.ReadString(Section, Indent, Default);
    finally
      TmpiniFile.free;
    end;
  end; 
  if Result = '' then    Result := Default;
end;


procedure Tdm.PrintCancelInBankInfo(lsh, year, month: integer);
begin
  with dm.q_comm do
begin
  close;
  sql.clear;
  sql.add('select a.*,b.inc_name,b.bank,b.account,lsze=xy_j_je+cy_je+zcy_j_je,zs=a.zcy_j_fp_zs+a.xy_j_fp_zs+a.cy_fp_zs,plce=isnull(a.plce,0),ze=isnull(a.ze,0) ');
  sql.add('from xykr_zf_tzd a,ghdw b where a.ghdw=b.inc_code and a.lsh=:lsh and month(a.rkdate)=:mmonth and year(a.rkdate)=:myear');   //datediff(month,rkdate,getdate())=0  grze=@ze,ce=@ce,
  parambyname('lsh').asinteger:=lsh;
  parambyname('myear').asinteger:=year;
  parambyname('mmonth').asinteger:=month;
  open;
end;
with dm.q_public do
begin
  close;
  sql.clear;
  sql.add('select 药品编号=a.ypbh,药名=b.ym,规格=b.gg,计量单位=a.jldw,入库数量=a.rksl,零售价=a.lsj,金额=a.rksl*a.lsj,gre=a.jhj*a.rksl,');
  sql.add('a.cgy,a.fhr,a.rkrq,c.inc_name from xykr_zf a,xyzb b,ghdw c where c.inc_code=a.ghdw and a.ypbh=b.ypbh and a.lsh=:lsh and month(a.rkrq)=:mmonth and year(a.rkrq)=:myear ');   //datediff(month,rkdate,getdate())=0
  parambyname('lsh').asinteger:=lsh;
  parambyname('myear').asinteger:=year;
  parambyname('mmonth').asinteger:=month;
  open;
  if  isempty then
  begin
    application.MessageBox('此入库号没有作废,请重新输入入库号!','提示',0);
    exit;
  end else
  begin
    Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + '\ykreport\入库单.frf');
    //Fm_report.frReport1.FindObject('memo1').Memo.text:='洛阳东都医院药品作废单';
    //Fm_report.frReport1.FindObject('memo24').Memo.text:='洛阳东都医院入库汇总作废单';
    Fm_report.frReport1.ShowReport;
  end;
end;
end;

procedure Tdm.PrintInBankInfo(lsh, year, month: integer);
begin
    with dm.q_comm do
    begin
      close;
      sql.clear;
      sql.add('select a.*,b.inc_name,b.bank,b.account,lsze=xy_j_je+cy_je+zcy_j_je,zs=a.zcy_j_fp_zs+a.xy_j_fp_zs+a.cy_fp_zs,plce=isnull(a.plce,0),ze=isnull(a.ze,0) ');
      sql.add('from xykr_tzd a,ghdw b where a.ghdw=b.inc_code and a.lsh=:lsh and month(a.rkdate)=:mmonth and year(a.rkdate)=:myear');   //datediff(month,rkdate,getdate())=0  grze=@ze,ce=@ce,
      parambyname('lsh').asinteger:=Lsh;
      parambyname('myear').asinteger:=year;
      parambyname('mmonth').asinteger:=month;
      open;
    end;
    with dm.q_public do
    begin
      close;
      sql.clear;
      sql.add('select 药品编号=a.ypbh,药名=b.ym,规格=b.gg,计量单位=a.jldw,入库数量=a.rksl,进价=a.jhj,零售价=a.lsj,');
      sql.add('进价金额=a.rksl*a.jhj,零售金额=a.rksl*a.lsj,gre=a.jhj*a.rksl,');
      sql.add('a.cgy,a.fhr,a.rkrq,c.inc_name,a.produce,a.ypph,a.sxrq');
      sql.add('from xykr a,xyzb b,ghdw c');
      sql.add('where c.inc_code=a.ghdw and a.ypbh=b.ypbh ');
      sql.add('and a.lsh=:lsh and month(a.rkrq)=:mmonth and year(a.rkrq)=:myear ');
      parambyname('lsh').asinteger:=Lsh;
      parambyname('myear').asinteger:=year;
      parambyname('mmonth').asinteger:=month;
      open;
      if recordcount=0 then
      begin
        application.MessageBox('此入库号作废或不是本月入库号,请重新输入入库号!','提示',0);
        exit;
      end    else
      begin
       Fm_report.frReport1.clear;
       Fm_report.frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ykreport\入库单.frf');
       Fm_report.frReport1.ShowReport;

      end;
    end;
end;

function Tdm.SaveToIniFile_Boolean(FileName, Section, Indent: string;Vaule: Boolean): Boolean;
var
  TmpIniFile: TIniFile;
begin
  Result := False;
  try
    TmpiniFile := TIniFile.Create(FileName);
    try
      TmpiniFile.WriteBool(Section, Indent, Vaule);
    finally
      TmpiniFile.Free;
    end;
    result := True;
  except
  end;
end;

function Tdm.SaveToIniFile_Integer(FileName, Section, Indent: string;Vaule: Integer): Boolean;
var
  TmpIniFile: TIniFile;
begin
  Result := False;
  try
    TmpiniFile := TIniFile.Create(FileName);
    try
      TmpiniFile.WriteInteger(Section, Indent, Vaule);
    finally
      TmpiniFile.Free;
    end;
    Result := True;
  except
  end;
end;

function Tdm.SaveToIniFile_String(FileName, Section, Indent,  Vaule: string): Boolean;
var   TmpIniFile: TIniFile;
begin
  Result := False;
  try
    result := True;
    TmpiniFile := TIniFile.Create(FileName);
    try
      TmpiniFile.WriteString(Section, Indent, Vaule);
    finally
      TmpiniFile.Free;
    end;
    Result := True;
  except
  end;
end;

function Tdm.Save_SystemData: Boolean;
begin


  //---字体配置信息
  //SaveToIniFile_String(FMainPath + 'HisYk_Console.ini', 'Font', 'Font_Name', Sysinfo.Font_Name);
  //SaveToIniFile_Integer(FMainPath + 'HisYk_Console.ini', 'Font', 'Font_Size', Sysinfo.Font_Size);
  //SaveToIniFile_Integer(FMainPath + 'HisYk_Console.ini', 'Font', 'Font_Color', Sysinfo.Font_Color);

   //---字体配置信息------

   //--基本参数配置----
  SaveToIniFile_String(FMainPath + 'HisYk_Console.ini', 'storetype', 'storeA', Sysinfo.storeA);
  SaveToIniFile_String(FMainPath + 'HisYk_Console.ini', 'storetype', 'yfbm', Sysinfo.yfbm);
  SaveToIniFile_String(FMainPath + 'HisYk_Console.ini', 'storetype', 'yfmc', Sysinfo.yfmc);

  SaveToIniFile_String(FMainPath + 'HisYk_Console.ini', 'USER', 'safekeep', Sysinfo.safekeep);
  SaveToIniFile_String(FMainPath + 'HisYk_Console.ini', 'USER', 'purchase', Sysinfo.purchase);
  SaveToIniFile_String(FMainPath + 'HisYk_Console.ini', 'USER', 'accountant', Sysinfo.accountant);


  SaveToIniFile_String(FMainPath + 'HisYk_Console.ini', 'AdditionRate', 'AdditionRateMed', Sysinfo.AdditionRateMed);
  SaveToIniFile_String(FMainPath + 'HisYk_Console.ini', 'AdditionRate', 'AdditionRatecMed', Sysinfo.AdditionRatecMed);
end;

function Tdm.SearchInBankInfo(lsh: integer;
  InbankDate: tdatetime): TDataSource;
begin
   with q_mxyzb do
  begin
    close;
    sql.Clear;
    sql.Add('select a.lsh,a.rkxh,a.ypbh,b.ym,b.gg,a.jhj,a.lsj,a.rksl,zje=rksl*a.lsj,rkje=rksl*a.pfj,cje=(a.lsj-a.pfj)*rksl,c.inc_name,cm,rkrq,a.jldw');
    sql.Add(' from xykr a,xyzb b ,ghdw c,sccj d');
    sql.Add(' where a.ypbh=b.ypbh');
    sql.Add('  and a.ghdw=c.inc_code');
    sql.Add('  and a.cjbm=d.cjbm');
    sql.Add('  and a.lsh=:lsh');
    sql.Add('  and datediff(month,rkrq,:InbankDate)=0');

    parambyname('lsh').asinteger:=lsh;
    parambyname('InbankDate').asdatetime:=InbankDate;
    open;
    if not IsEmpty then  result:=dm.DS_mxyzb ELSE  result:=NIL;
  end;
end;

function Tdm.searchkc(query: Tquery; ypbh: string; var ykkc, mzkc,
  zykc: currency): boolean;
begin
  with query do
  begin
    close;
    sql.clear;
    sql.add('select');
    sql.add('ykkc=(select sum(b.kcl) From xykr a,xykcun b where a.rkxh=b.rkxh and b.ypbh=:ypbh ),');
    sql.add('mzkc=(select kcl From nkyc where ypbh=:ypbh and ksbm=501),');
    sql.add('zykc=(select kcl From nkyc where ypbh=:ypbh and ksbm=502)');
    ParamByName('ypbh').AsString:=ypbh;
    open;
    ykkc:=fieldbyname('ykkc').ascurrency;
    mzkc:=fieldbyname('mzkc').ascurrency;
    zykc:=fieldbyname('zykc').ascurrency;
    result:=True;
  end;
end;

function Tdm.SearchMedLog(datefrom, dateto: tdatetime): TDataSource;
begin
   with dm.Q_public do
 begin
   close;
   sql.Clear;
   sql.add('select * from MedUpdateLog where datediff(day,up_date,:datefrom)<=0 and datediff(day,up_date,:dateto)>=0');
   parambyname('datefrom').asdatetime:=datefrom;
   parambyname('dateto').asdatetime:=dateto;
   open;
   if not isempty then result:=dm.DS_public else result:=nil;
 end;
end;

function Tdm.SearchQlTemp(opid: integer): boolean;
begin
  Result := False;
   with dm.Q_song do
   begin
     close;
     sql.Clear;
     sql.Add('select a.ypbh,b.ym,b.gg,a.qll,b.jldw,b.zxdw,je=round(a.qll*b.ylsj,2),a.qll,produce');
     sql.Add('from  qldb_temp a,xyzb b where a.opid=:opid and a.ypbh=b.ypbh');
     parambyname('opid').asinteger:=opid;
     open;
     if  isempty then exit;
   end;
   Result:= true;
end;

procedure Tdm.SetAdditionRateValue(MyComboBox: TComboBox);
begin
  MyComboBox.Clear;
  MyComboBox.Items.Add('1');
  IF dm.sysinfo.AdditionRateMed <>'' then    MyComboBox.Items.Add(dm.sysinfo.AdditionRateMed);
  IF dm.sysinfo.AdditionRateCMed<>'' then    MyComboBox.Items.Add(dm.sysinfo.AdditionRateCMed);
  //MyComboBox.ItemIndex:=0;
end;

function Tdm.SetCmbxValue(MyComboBox: TComboBox;Sqlstr:string;ParamCount:integer): boolean;
begin
  MyComboBox.Clear;
  with dm.q_comm do
  begin
    close;
    Sql.clear;
    SQL.add(Sqlstr);
    open;
    first;
    while not Eof do
    begin
        MyComboBox.Items.Append(fields[0].asstring+':'+fields[1].asstring);
        showmessage(fields[0].asstring);
      Next;
    end;
  end;
end;

procedure Tdm.SetStoreValue(MyComboBox: TComboBox);
begin
  MyComboBox.Clear;
  IF dm.sysinfo.storeA<>'' then    MyComboBox.Items.Add(dm.sysinfo.storeA);
  IF dm.sysinfo.storeB<>'' then    MyComboBox.Items.Add(dm.sysinfo.storeB);
  IF dm.sysinfo.storeC<>'' then    MyComboBox.Items.Add(dm.sysinfo.storeC);
  IF dm.sysinfo.storeD<>'' then    MyComboBox.Items.Add(dm.sysinfo.storeD);

  MyComboBox.ItemIndex:=0;
end;

function Tdm.settime():boolean;
var
  Handle: THandle;
  settime1:function(temp: TQuery):boolean;stdcall;
begin
  Handle :=0;
  settime:=false;
  try
    Handle := LoadLibrary('changesettime.dll');
    if Handle <> 0 then
    begin
      @settime1 := GetprocAddress(Handle, 'settime');
      if @settime1 <> nil then
        settime:=settime1(q_comm);
    end;
  finally
    FreeLibrary(Handle);
  end;
end;

procedure Tdm.UpdateInBankInfo(lsh: integer; InbankDate: tdatetime);
begin
 with   dm.Q_public do
 begin
   close;
   sql.Clear;
   sql.add('exec MedBank_UpdateInBank :lsh,:inbankdate');
   parambyname('lsh').AsInteger:=lsh;
   parambyname('InbankDate').asdatetime:=InbankDate;
   try
   ExecSQL;
   except
   on E: Exception do
        begin
          application.MessageBox(pchar('出库时出错！'+'('+e.Message+')'),'错误信息',mb_iconerror);
          exit;
       end;
   end;
 end;
end;

procedure Tdm.UpdateMed(Medinfo: Txyzb; opid: string);
begin
  with dm.Q_PUBLIC do
  begin
    close;
    sql.Clear;
    sql.Add('exec  MedBank_UpdateMed  :ypbh,:ym,:pym,:lsm,:zlbm,:zlm,:gf,:jxbm ,:jx,:gg,:zxdw,:hsb,:jldw,:pfj,:ypj,:ylsj,:mzylsj,:bm,:ywm');
    sql.Add(',:lb ,:lbm,:ddd,:jjyp ,:cfhsb ,:cfzxdw ,:ifzy,:selfyp ,:oper_date,:operbh,:up_date,:upbh');
    sql.Add(',:skintry,:type,:Inp_Place ,:Outp_Place ,:bank_place ,:xnhbm,:xnhkind,:xnhbl ,:ybbm,:ybkind,:lbA,:lbB ,:produce,:basic,:cjbm,:storetype,:dosage,:checklb,:checklbm,:barcode');
    try
      parambyname('ypbh').AsString:=trim(Medinfo.ypbh);
      parambyname('ym').AsString:=trim(Medinfo.ym);
      parambyname('pym').AsString:=trim(Medinfo.pym);
      parambyname('lsm').AsString:=trim(Medinfo.lsm);
      parambyname('zlbm').asinteger:=Medinfo.zlbm;
      parambyname('zlm').AsString:=trim(Medinfo.zlm);
      parambyname('gf').assmallint:=Medinfo.gf;
      parambyname('jxbm').assmallint:=Medinfo.jxbm;
      parambyname('jx').AsString:=trim(Medinfo.jx);
      parambyname('gg').AsString:=trim(Medinfo.gg);
      parambyname('zxdw').AsString:=trim(Medinfo.zxdw);
      parambyname('hsb').asinteger:=Medinfo.hsb;
      parambyname('jldw').AsString:=trim(Medinfo.jldw);
      parambyname('pfj').ascurrency:=Medinfo.pfj;
      parambyname('ypj').ascurrency:=Medinfo.ypj;
      parambyname('ylsj').ascurrency:=Medinfo.ylsj;
      parambyname('mzylsj').ascurrency:=Medinfo.mzylsj;
      parambyname('bm').AsString:=trim(Medinfo.bm);
      parambyname('ywm').AsString:=trim(Medinfo.ywm);
      parambyname('lb').asinteger:=Medinfo.lb;
      parambyname('lbm').AsString:=trim(Medinfo.lbm);
      parambyname('ddd').asinteger:=Medinfo.ddd;
      parambyname('jjyp').asboolean:=Medinfo.jjyp;
      parambyname('cfhsb').asinteger:=Medinfo.cfhsb;
      parambyname('cfzxdw').AsString:=trim(Medinfo.cfzxdw);
      parambyname('ifzy').asboolean:=Medinfo.ifzy;
      parambyname('selfyp').AsString:=trim(Medinfo.selfyp);
      parambyname('oper_date').asdatetime:=Medinfo.oper_date;
      parambyname('operbh').asinteger:=Medinfo.operbh;
      parambyname('up_date').asdatetime:=Medinfo.up_date;
      parambyname('upbh').asinteger:=Medinfo.upbh;
      parambyname('skintry').asinteger:=Medinfo.skintry;
      parambyname('type').asinteger:=Medinfo.atype;
      parambyname('Inp_Place').AsString:=trim(Medinfo.Inp_Place);
      parambyname('Outp_Place').AsString:=trim(Medinfo.Outp_Place);
      parambyname('bank_place').AsString:=trim(Medinfo.bank_place);
      parambyname('xnhbm').AsString:=Medinfo.xnhbm;
      parambyname('xnhkind').AsString:=trim(Medinfo.xnhkind);
      parambyname('xnhbl').ascurrency:=Medinfo.xnhbl;
      parambyname('ybbm').AsString:=trim(Medinfo.ybbm);
      parambyname('ybkind').AsString:=trim(Medinfo.ybkind);
      parambyname('lbA').AsString:=trim(Medinfo.lbA);
      parambyname('lbB').AsString:=trim(Medinfo.lbB);
      parambyname('produce').AsString:=trim(Medinfo.produce);
      parambyname('basic').asboolean:=Medinfo.basic;
      parambyname('cjbm').AsInteger:=Medinfo.cjbm;
      parambyname('storetype').AsString:=Medinfo.storetype;
      parambyname('dosage').AsCurrency:=Medinfo.dosage;
      parambyname('checklb').asinteger:=Medinfo.checklb;
      parambyname('checklbm').AsString:=Medinfo.checklbm;
      parambyname('barcode').AsString:=Medinfo.barcode;
      ExecSQL;
      application.MessageBox('修改药品记录成功!','提示',0);
    except
      on E: Exception do
        begin
          application.MessageBox(pchar('出库时出错！'+'('+e.Message+')'),'错误信息',mb_iconerror);
          exit;
       end;
    end;
  end;
end;

function Tdm.UpdateProduce(lsh, id: integer): boolean;
begin
   result:=false;
   with dm.Q_public do
   begin
     close;
     sql.Clear;
     sql.Add('update xykr set cjbm=:cjbm where lsh=:lsh');
     parambyname('cjbm').AsInteger:=id;
     parambyname('lsh').AsInteger:=lsh;
     try
       execsql;
     except
       exit;
     end;
   end;
   result:=true;
end;

function Tdm.UpdateSupply(lsh, id: integer): boolean;
begin
   result:=false;
   with dm.Q_public do
   begin
     close;
     sql.Clear;
     sql.Add('update xykr     set ghdw=:ghdw where lsh=:lsh');
     sql.Add('update xykr_tzd set ghdw=:ghdw where lsh=:lsh');
     parambyname('ghdw').AsInteger:=id;
     parambyname('lsh').AsInteger:=lsh;
     try
       execsql;
     except
       exit;
     end;
   end;
   result:=true;
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
     FMainPath := ExtractFilePath(Application.ExeName);
end;

function Tdm.Search_InbankBill(datefrom, dateto: tdatetime;
  BillType: integer): boolean;
begin
  result:=false;
   with dm.q_comm do
   begin
    close;
    sql.clear;
    case BillType of
    0:sql.add('select 入库单号=lsh,供货单位=inc_name,入库金额=xy_j_je,应付金额=ze,差价=plce,入库日期=a.rkdate  from xykr_tzd a,ghdw b  where a.ghdw=b.inc_code');
    1:sql.add('select 入库单号=lsh,供货单位=inc_name,入库金额=zcy_j_je,应付金额=ze,差价=plce,入库日期=a.rkdate from xykr_tzd a,ghdw b  where a.ghdw=b.inc_code ');
    2:sql.add('select 入库单号=lsh,供货单位=inc_name,入库金额=cy_je,应付金额=ze,差价=plce,入库日期=a.rkdate    from xykr_tzd a,ghdw b  where a.ghdw=b.inc_code');
    3:sql.add('select 入库单号=lsh,供货单位=inc_name,入库金额=xy_j_je+cy_je+zcy_j_je,应付金额=ze,差价=plce,入库日期=a.rkdate from xykr_tzd a,ghdw b  where a.ghdw=b.inc_code');
    end;
    //and a.ghdw not in(76,56)');
    case BillType of
    0:sql.add('and xy_j_je<>0   and datediff(day,rkdate,:datefrom)<=0 and datediff(day,rkdate,:dateto)>=0 order by lsh');
    1:sql.add('and zcy_j_je<>0  and datediff(day,rkdate,:datefrom)<=0 and datediff(day,rkdate,:dateto)>=0 order by lsh');
    2:sql.add('and cy_je<>0     and datediff(day,rkdate,:datefrom)<=0 and datediff(day,rkdate,:dateto)>=0 order by lsh ');
    3:sql.add('and datediff(day,rkdate,:datefrom)<=0 and datediff(day,rkdate,:dateto)>=0 order by lsh');
    end;

     case BillType of
     4:begin
        sql.add('select  药品种类=case b.lb when 1 then "西药"  when 2 then "中草药" when 3 then "中成药" end,零售价=sum(rksl*lsj),进货价=sum(rksl*jhj),差价=sum(rksl*(lsj-jhj)) from xykr a,xyzb b where');
        sql.add('a.ypbh=b.ypbh   and datediff(day,rkrq,:datefrom)<=0 and datediff(day,rkrq,:dateto)>=0 group by b.lb');
       end;
     5:begin
         sql.add('select  供货商编码=a.ghdw,供货单位=inc_name,入库金额=sum(xy_j_je+cy_je+zcy_j_je),应付金额=sum(ze),差价=sum(plce)');
         sql.add('from xykr_tzd a,ghdw b');
         sql.add('where a.ghdw=b.inc_code ');
         sql.add('and datediff(day,rkdate,:datefrom)<=0 and datediff(day,rkdate,:dateto)>=0   group by  a.ghdw,inc_name order by a.ghdw');
       end;
     end;


    parambyname('datefrom').asdate:=datefrom;
    parambyname('dateto').asdate:=dateto;
    open;
    if isempty then
    begin
        application.MessageBox('选定的时间段内没有入库单！','信息',32);
        exit;
    end  else   result:=true;
  end;
end;

function Tdm.SearchdepQlTemp(opid: integer): boolean;
begin
  Result := False;
   with dm.Q_song do
   begin
     close;
     sql.Clear;
     sql.Add('select a.ypbh,b.ym,b.gg,a.qll,b.jldw,b.zxdw,je=round(a.qll*b.ylsj,2),a.qll,produce');
     sql.Add('from  depqldb_temp a,xyzb b where a.opid=:opid and a.ypbh=b.ypbh');
     parambyname('opid').asinteger:=opid;
     open;
     if  isempty then exit;
   end;
   Result:= true;
end;

function Tdm.Search_bank(Medlb, MaxValue, MedType: integer;
  Medcode: string; Zero: boolean): boolean;
begin
  result:=false;
  with dm.Q_use do
  begin
    Close;
    sql.clear;
    sql.add('MedBank_store :Medlb,:MaxValue,:MedType,:Medcode,:Zero');
    ParamByName('Medlb').AsInteger:=Medlb;
    ParamByName('MaxValue').AsInteger:=MaxValue;
    ParamByName('MedType').AsInteger:=MedType;
    ParamByName('Medcode').AsString:=Medcode;
    ParamByName('Zero').AsBoolean :=Zero;
    open;
    if isempty then exit;
  end;
   result:=true;
end;

function Tdm.System_sq(myform: TForm; sq, level: integer): boolean;
var icount:integer;
begin
    with dm.Q_comm  do
     begin
       close;
       sql.clear;
       sql.add('select * from  permission where powerlevel=:powerlevel and PartID=:PartID');
       parambyname('PartID').asinteger:=sq;
       parambyname('powerlevel').asinteger:=level;
       open;
       if isempty then
       begin
          result:=false;
          exit;
       end  else  result:=true;
       for icount:=0 to myform.ComponentCount-1 do
       begin
           if myform.Components[icount] is TMenuItem then
           begin
                with dm.Q_comm do
                begin
                    close;
                    sql.clear;
                    sql.add('select * from permission where ItemID=:ItemID and PartID=:PartID '
                       +'    and Powerlevel=:Level and [select]=1');
                    parambyname('ItemID').asinteger:=(myform.Components[icount] as TMenuItem).tag;
                    parambyname('PartID').asinteger:=sq;
                    parambyname('Level').asinteger:=level;
                    open;
                    if recordcount > 0 then  (myform.Components[icount] as TMenuItem).enabled:=true
                    else  (myform.Components[icount] as TMenuItem).enabled:=false;
                end;
           end;
       end;

       for icount:=0 to myform.ComponentCount-1 do
       begin
           if myform.Components[icount] is Tspeedbutton then
           begin
                with dm.Q_comm do
                  begin
                    close;
                    sql.clear;
                    sql.add('select * from permission where ItemID=:ItemID and PartID=:PartID '
                       +'    and Powerlevel=:Level and [select]=1');
                    parambyname('ItemID').asinteger:=(myform.Components[icount] as Tspeedbutton).tag;
                    parambyname('PartID').asinteger:=sq;
                    parambyname('Level').asinteger:=level;
                    open;
                    if recordcount > 0 then  (myform.Components[icount] as Tspeedbutton).enabled:=true
                    else  (myform.Components[icount] as Tspeedbutton).enabled:=false;

                  end;
           end;
       end;

       for icount:=0 to myform.ComponentCount-1 do
       begin
           if myform.Components[icount] is Ttoolbutton then
           begin
                with dm.Q_comm do
                  begin
                    close;
                    sql.clear;
                    sql.add('select * from permission where ItemID=:ItemID and PartID=:PartID '
                       +'    and Powerlevel=:Level and [select]=1');
                    parambyname('ItemID').assmallint:=(myform.Components[icount] as Ttoolbutton).tag;
                    parambyname('PartID').assmallint:=sq;
                    parambyname('Level').assmallint:=level;
                    open;
                    if recordcount > 0 then  (myform.Components[icount] as Ttoolbutton).enabled:=true
                    else  (myform.Components[icount] as Ttoolbutton).enabled:=false;

                  end;
           end;
       end;


     end;



end;

end.










