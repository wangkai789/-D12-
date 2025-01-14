unit reportform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  frxDBSet, frxDesgn, frxClass;

type
  TFm_report = class(TForm)
    frxrprt1: TfrxReport;
    frxdbdtst_tj: TfrxDBDataset;
    frxdsgnr1: TfrxDesigner;
    RIP1: TfrxDBDataset;
    Rip2: TfrxDBDataset;
    Rip3: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    Result: TfrxDBDataset;
    OUT: TfrxDBDataset;
    SendMed: TfrxDBDataset;
    SendMedDetail: TfrxDBDataset;
    Rip4: TfrxDBDataset;
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    //procedure frReport1BeforePrint(Memo: TStringList; View: TfrView);
    procedure frxrprt1GetValue(const VarName: String; var Value: Variant);
    procedure frxrprt1BeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }

  public
    { Public declarations }
    Fdatefrom:string;
    Fdateto:string;
    Flb:string;
    Fdatetime:string; //打印时间
    Fhospital_NAME:string;
    Ftbname:string;
    FHLDY:string;
    FYF:string;
    Ffyr:string;
    Froom:string;
    Fbyxm:string;
    FXb:string;
    Fnl:string;
    Fifcz:string;
    Fym:string;
    Fgg:string;
    Fmryl:string;
    Fmcsl:string;
    fzxdw:string;
    fcfzxdw:string;
    ffrequency:string;
    Fcfrq:String;
    Fxh:String;
    Ffyrq:string;
    FPrintType:string;
    Fcfdh:string;
    FNurseUnit:string;
    Fcflb:string;
    Fzyh:string;
    Fid:string;
    Fstore:integer;
    Fbagcount:currency;
    Fabc:string;
    Fguid:string;
    Fusedate:string;
    Fdw:string;
    Fsendno:string;
    Frecount:string;
    FPatQty:integer;
  end;

var
  Fm_report: TFm_report;

implementation
uses data, main;

{$R *.dfm}

procedure TFm_report.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
  {   if ParName='type' then
     begin
       case  frDBDataSet2.DataSet.FieldByName('type').AsInteger of
       1:ParValue:='西药 字';
       2:ParValue:='中草药 字';
       3:ParValue:='中成药 字';
       end;
     end;
   if  ParName='startdate' then    ParValue:=fdatefrom;
   if  ParName='enddate' then      ParValue:=fdateto;
   if  ParName='lb' then      ParValue:=flb;
   if  ParName='username' then ParValue:=dm.FopidName;}
end;

{procedure TFm_report.frReport1BeforePrint(Memo: TStringList;
  View: TfrView);
begin
  if View.Name='Mem_title' then memo.Text:=dm.SysInfo.hospitalName+'药品入库单';
end;}

procedure TFm_report.frxrprt1GetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName='hospital'  then Value:=dm.SysInfo.hospitalName;
  if VarName='dt'        then  Value:=Fdatetime;
  if VarName='tbname'    then  Value:=Ftbname;
  if  VarName='hldy'    then value:=FHLDY;
  if  VarName='yf'      then value:=FYF;
  if  VarName='fyr'     then value:=Ffyr;
  if  VarName='fyrq'     then value:=Ffyrq;

  if  varname='room' then value:=Froom;
  if  varname='byxm' then value:=Fbyxm;
  if  varname='xb' then value:=FXb;
  if  varname='nl' then value:=Fnl;
  if  varname='ifcz' then value:=Fifcz;
  if  varname='ym' then value:=Fym;
  if  varname='gg' then value:=Fgg;
  if  varname='mryl' then value:=Fmryl;
  if  varname='mcsl' then value:=Fmcsl;
  if  varname='zxdw' then value:=fzxdw;
  if  varname='cfzxdw' then value:=fcfzxdw;
  if  varname='frequency' then value:=ffrequency;
  if  varname='cfrq' then value:=Fcfrq;
  if  varname='xh' then value:=Fxh;
  if  varname='cfdh' then value:=Fcfdh;
  if  varname='printType' then value:=FPrintType;
  if  varname='NurseUnit' then value:=FNurseUnit;
  if  varname='cflb' then value:=Fcflb;
  if  varname='zyh' then value:=Fzyh;
  if  varname='datefrom' then value:=Fdatefrom;
  if  varname='dateto' then value:=Fdateto;
  if  varname='id' then value:=Fid;
  if  varname='store' then value:=Fstore;
  if  varname='bagcount' then value:=(Fbagcount);
  if  varname='abc' then value:=Fabc;
  if  varname='guid' then value:=Fguid;
  if  varname='usedate' then value:=Fusedate;
  if  varname='dw' then value:=Fdw;
  if  VarName='hospital_name'     then value:=Fhospital_name;
  if  VarName='sendno'     then value:=Fsendno;
  if  VarName='PatQty'     then value:=FPatQty;
end;

procedure TFm_report.frxrprt1BeforePrint(Sender: TfrxReportComponent);
var  aRipSignPath:string;
begin
  aRipSignPath:=dm.FMainPath+ 'images\RipSign.bmp';
  if FileExists(aRipSignPath) then
  begin
     (frxrprt1.FindObject('RipSign1') as TfrxPictureView).Picture.LoadFromFile(aRipSignPath);
     (frxrprt1.FindObject('RipSign2') as TfrxPictureView).Picture.LoadFromFile(aRipSignPath);
     (frxrprt1.FindObject('RipSign3') as TfrxPictureView).Picture.LoadFromFile(aRipSignPath);
  end;

end;

end.
