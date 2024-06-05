unit ClassFactory;



interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Uni;


type
  TFm_ClassFactory = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;


  TMedbank_Plan=class

  public

    FID:integer;
    Fypbh:string;
    Frksl:currency;
    Fcreatedate:tdatetime;
    Fflag:integer;
    Fopid:integer;
    FauditOpid:integer;
    FinbankOpid:integer;
    FauditDate:tdatetime;
    FinbankDate:tdatetime;

    Fdatefrom:tdatetime;
    Fdateto:tdatetime;
    FDays:integer;
    FNum:currency;
    Fmedtype:integer;
    Fspell:string;
    Fzykcl:currency;
    Fpivascl:currency;
    Fmzkcl:currency;
    Fkcl:currency;
    function Search(aQuery:tuniquery):boolean;
    function SearchMedbank():boolean;
    function Add():boolean;
    function Update():boolean;
    function Del():boolean;
    function SetFlag():boolean;
    function SetOutNum():boolean;
   
  end;

   Txykr_temp=Class
   Public
     Frkxh:integer;
     Fypbh:string;
     Fjldw:string;
     Frksl:currency;
     Fpfj:currency;
     Flsj:currency;
     Fjhj:currency;
     Fcjbm:integer;
     Fghdw:integer;
     Fpwh:string;
     Fypph:string;
     Fscrq:tdatetime;
     Fsxrq:tdatetime;
     Fcgy:integer;
     Frkdh:string;
     Fbgy:integer;
     Fyfke:currency;
     Ffhr:integer;
     Frkrq:tdatetime;
     Frklb:integer;
     Flsh:integer;
     Fopid:integer;
     Fcertify:string;
     Fface:string;
     Fexplain:string;
     FStoreCondition:string;
     FCheckDate:tdatetime;
     FCheckConclusion:string;
     Fplan_id:integer;
     FbgyName:string;
     FfhrName:string;
     FcgyName:string;
     function Search():boolean;
     function ADD():boolean;
     function Update():boolean;
     function Del():boolean;
     function Inbank():boolean;
   end;
const Save_ADD=100;
      Save_Update=200;
      ALLMed=999;//全部药品
      WMed=1;//西药
      CMed=2;//中草药
      CMMed=3;//中成药

var
  Fm_ClassFactory: TFm_ClassFactory;
  Medbank_Plan:TMedbank_Plan;
  Xykr_temp:Txykr_temp;

implementation

uses data;
{$R *.dfm}

{ TMedbank_Plan }

function TMedbank_Plan.Add: boolean;
begin
  result:=false;
  with dm.Q_public do
  begin
    close;
    sql.Clear;
    sql.Add('insert into Medbank_Plan(ypbh,rksl,createdate,flag,opid,num,days,kcl,zykcl,mzkcl,pivaskcl)');
    sql.Add('select :ypbh,:rksl,:createdate,:flag,:opid,:num,:days,:kcl,:zykcl,:mzkcl,:pivaskcl');
    parambyname('ypbh').AsString:=Fypbh;
    parambyname('rksl').ascurrency:=Frksl;
    parambyname('createdate').asdatetime:=Fcreatedate;
    parambyname('flag').asinteger:=Fflag;
    parambyname('opid').asinteger:=Fopid;
    parambyname('num').ascurrency:=Fnum;
    parambyname('days').asinteger:=Fdays;
    parambyname('kcl').ascurrency:=Fkcl;
    parambyname('zykcl').ascurrency:=Fzykcl;
    parambyname('mzkcl').ascurrency:=Fmzkcl;
    parambyname('pivaskcl').ascurrency:=Fpivascl;
    try
      ExecSQL;
      //Application.MessageBox('新增计划成功。','提示',0);
    except
      Application.MessageBox('新增计划失败！！！','错误提示',0+mb_iconstop);
      exit;
    end;
  end;
  result:=true;
end;

function TMedbank_Plan.Del: boolean;
begin
  result:=false;
  with dm.Q_public do
  begin
    close;
    sql.Clear;
    sql.Add('delete Medbank_Plan where [id]=:id');
    parambyname('id').asinteger:=FID;
    try
      ExecSQL;
      //Application.MessageBox('删除计划成功。','提示',0);
    except
      Application.MessageBox('删除计划失败！！！','错误提示',0+mb_iconstop);
      exit;
    end;
  end;
    result:=true;
end;

function TMedbank_Plan.Search(aQuery:tuniquery): boolean;
begin
  result:=false;
   with aQuery do
   begin
     close;
     sql.Clear;
     sql.Add('select case flag when 0 then ''待审''');
     sql.Add('            when 1 then ''已审''');
     sql.Add('            when 2 then ''已入库''');
     sql.Add('            end  as flag');
     sql.Add(',a.ypbh,b.ym,gg,produce,pfj,rksl,jldw,inc_name,createdate,opid,auditdate,auditopid,inbankdate,inbankopid,num,days,');
     sql.Add('cjbm,ylsj,jx,rksl,qe=rksl*ylsj,lb,zxdw,hsb,pfj,inc_code,kcl,zykcl,mzkcl,pivaskcl,planid=id,pfjqe=rksl*b.pfj from Medbank_Plan a(nolock),xyzb b(nolock)');
     sql.Add('where a.ypbh=b.ypbh');
     sql.Add('  and datediff(day,createdate,:datefrom)<=0 and datediff(day,createdate,:dateto)>=0');
     if  Fflag<>3 then
     sql.Add('  and a.flag=:flag');
     if  Fmedtype<>999 then
     sql.Add('  and b.lb=:lb');
     if  Fspell<>'' then
     sql.Add('  and b.pym like :pym');
     sql.Add('  order by inc_code,a.id');



     parambyname('datefrom').asdatetime:=Fdatefrom;
     parambyname('dateto').asdatetime:=Fdateto;

     if  Fflag<>3 then
     parambyname('flag').AsInteger:=Fflag;
     if  Fmedtype<>999 then
     parambyname('lb').AsInteger:=Fmedtype;

     if  Fspell<>'' then
     parambyname('pym').asstring:=Fspell+'%';

     try
       open;
       if isempty then exit;
     except
       exit;
     end;
   end;
   result:=true;
end;

function TMedbank_Plan.SearchMedbank: boolean;
begin
   
end;

function TMedbank_Plan.SetFlag: boolean;
begin
  result:=false;
  with dm.Q_public do
  begin
    close;
    sql.Clear;
    sql.Add('Update Medbank_Plan');
    sql.Add('set');
    sql.Add(' auditopid=:auditopid');
    sql.Add(',auditdate=:auditdate');
    sql.Add(',flag=:flag');
    sql.Add('where [id]=:id');
    parambyname('flag').asinteger:=Fflag;
    parambyname('auditopid').asinteger:=Fauditopid;
    parambyname('auditdate').asdatetime:=Fauditdate;
    parambyname('flag').asinteger:=Fflag;
    parambyname('id').asinteger:=FID;
    try
      ExecSQL;
    except
      Application.MessageBox('更新状态失败！！！','错误提示',0+mb_iconstop);
      exit;
    end;
  end;
  result:=true;
end;

function TMedbank_Plan.SetOutNum: boolean;
begin
  result:=false;
  with dm.Q_public do
  begin
    close;
    sql.Clear;
    //sql.Add('delete from medbank_outnum');
    //sql.Add('insert medbank_outnum(ypbh,num,createdate,opid,days)');
    //sql.Add('select b.ypbh,sum(cksl),getdate(),:opid,datediff(day,:datefrom,:dateto) from xykchu a(nolock),xykr b (nolock)');
    //sql.Add('where a.rkxh=b.rkxh');
    //sql.Add('and datediff(day,ckrq,:datefrom)<=0');
    //sql.Add('and datediff(day,ckrq,:dateto)>=0');
    //sql.Add('and a.cksl>0');
    //sql.Add('group by b.ypbh');
    sql.Add('exec Medbank_CalcOutAmount :datefrom,:dateto,:opid');
    parambyname('datefrom').asdatetime:=Fdatefrom;
    parambyname('dateto').asdatetime:=Fdateto;
    parambyname('opid').asinteger:=Fopid;

    try
      ExecSQL;
      Application.MessageBox('保存成功','信息',32);
    except
      Application.MessageBox('插入失败！！！','错误提示',0+mb_iconstop);
      exit;
    end;
  end;
  result:=true;
end;

function TMedbank_Plan.Update: boolean;
begin
  result:=false;
  with dm.Q_public do
  begin
    close;
    sql.Clear;
    sql.Add('Update Medbank_Plan');
    sql.Add('set');
    //sql.Add('ypbh=:ypbh');
    sql.Add('rksl=:rksl');
    sql.Add(',createdate=:createdate');
    sql.Add(',opid=:opid');
    sql.Add(',num=:num');
    sql.Add(',days=:days');
    sql.Add('where [id]=:id');

    //parambyname('ypbh').AsString:=Fypbh;
    parambyname('rksl').ascurrency:=Frksl;
    parambyname('createdate').asdatetime:=Fcreatedate;
   // parambyname('flag').asinteger:=Fflag;
    parambyname('opid').asinteger:=Fopid;
    parambyname('id').asinteger:=FID;
    parambyname('num').ascurrency:=Fnum;
    parambyname('days').asinteger:=Fdays;

    try
      ExecSQL;
   //   Application.MessageBox('修改计划成功。','提示',0);
    except
      Application.MessageBox('修改计划失败！！！','错误提示',0+mb_iconstop);
      exit;
    end;
  end;
      result:=true;
end;

procedure TFm_ClassFactory.FormCreate(Sender: TObject);
begin
  Medbank_Plan:=tMedbank_Plan.Create;
  xykr_temp:=Txykr_temp.Create;
end;

{ Txykr_temp }

function Txykr_temp.ADD: boolean;
begin
   result:=false;
  with dm.Q_comm do
  begin
    close;
    sql.Clear;
    sql.add('exec  Medbank_inbankTmp :mypbh , :mjldw ,:mrksl  , :mpfj  , :mjhj  , :mcjbm  ,'
     +' :mghdw  , :mpwh  , :mypph , :mscrq , :msxrq , :mcgy  , :mrkdh  , :mbgy ,'
     +' :myfke  , :mfhr  , :mrkrq ,:rklb,:mlsj , :opid,:certify,:face,:explain,:StoreCondition,'
     +':CheckDate,:CheckConclusion,:planid');

     ParamByName('mypbh').AsString:=Fypbh;
     ParamByName('mjldw').AsString:=Fjldw;
     ParamByName('mrksl').Asfloat:=Frksl;
     ParamByName('mpfj').AsFloat:=Fpfj;
     ParamByName('mjhj').AsFloat:=Fjhj;
     ParamByName('mcjbm').asinteger:=Fcjbm;
     ParamByName('mghdw').asinteger:=Fghdw;
     ParamByName('mpwh').AsString:=Fpwh;
     ParamByName('mypph').AsString:=Fypph;
     ParamByName('mscrq').Asdatetime:=Fscrq;
     ParamByName('msxrq').Asdatetime:=Fsxrq;
     ParamByName('mcgy').AsSmallInt:=Fcgy;
     ParamByName('mrkdh').AsString:=Frkdh;
     ParamByName('mbgy').AsSmallInt:=Fbgy;
     ParamByName('myfke').Asfloat:=Fyfke;
     ParamByName('mfhr').AsSmallInt:=Ffhr;
     ParamByName('mrkrq').Asdatetime:=Frkrq;
     ParamByName('rklb').Asinteger:=Frklb;
     ParamByName('mlsj').AsFloat:=Flsj;
     ParamByName('opid').asinteger:=Fopid;
    //--2006-3-6增加内容
     ParamByName('certify').asstring:=Fcertify;
     ParamByName('face').asstring:=Fface;
     ParamByName('explain').asstring:=Fexplain;
     ParamByName('StoreCondition').asstring:=Fstorecondition;
     ParamByName('CheckDate').Asdatetime:=Fcheckdate;
     ParamByName('CheckConclusion').asstring:=FCheckConclusion;
     ParamByName('planid').asinteger:=Fplan_id;
    try
      execsql;
    except
      on E: Exception do
        begin
          application.MessageBox(pchar('增加药品入库信息错误！'+'('+e.Message+')'),'错误信息',mb_iconerror);
          exit;
       end;
    end;
  end;
    result:=true;
end;

function Txykr_temp.Del: boolean;
begin
  result:=false;
  with dm.Q_comm do
  begin
   close;
   sql.Clear;
   sql.Add('delete xykr_temp where rkxh=:rkxh');
   //sql.Add('update  medbank_plan set flag=1 where id=:planid');
   //parambyname('planid').asinteger:=planid;
   parambyname('rkxh').asinteger:=Frkxh;
   try
     execsql;
   except
     on E: Exception do
     begin
       application.MessageBox(pchar('删除入库信息错误！'+'('+e.Message+')'),'错误信息',mb_iconerror);
       exit;
     end;
   end;
  end;
   result:=true;
end;

function Txykr_temp.Inbank: boolean;
begin
result:=false;
 with dm.Q_comm do
  begin
    close;
    sql.Clear;
     sql.add('exec  Medbank_inbank :mcgy,:mbgy ,:mfhr,:lsh , :opid');
     ParamByName('mcgy').Asstring:=Fcgyname;
     ParamByName('mbgy').Asstring:=Fbgyname;
     ParamByName('mfhr').Asstring:=Ffhrname;
     ParamByName('lsh').AsSmallInt:=FLsh;
     ParamByName('opid').asinteger:=Fopid;
    try
      execsql;
      application.MessageBox('药品入库成功!','提示',0);
    except
     on E: Exception do
        begin
          application.MessageBox(pchar('药品入库失败！'+'('+e.Message+')'),'错误信息',mb_iconerror);
          exit;
       end;
    end;
  end;
  result:=true;
end;

function Txykr_temp.Search: boolean;
begin
 result:=false;
   with dm.Q_inbank do
    begin
      close;
      sql.Clear;
      sql.Add(' select a.ypbh,b.ym,b.gg,a.jhj,a.pfj,a.lsj,a.rksl,zje=rksl*a.lsj,rkje=rksl*a.pfj,cje=(a.lsj-a.pfj)*rksl,b.jldw,a.rkxh,');
      sql.Add(' certify,face,explain,StoreCondition,CheckDate,CheckConclusion,a.ghdw,b.inc_name,b.produce,plan_id');
      sql.Add(' from xykr_temp a,xyzb b ');
      sql.Add(' where a.ypbh=b.ypbh ');
      sql.Add(' and a.opid=:opid ');
      ParamByName('opid').asinteger:=Fopid;
      open;
      if isempty then exit;
    end;
  result:=true;
end;

function Txykr_temp.Update: boolean;
begin

end;

procedure TFm_ClassFactory.FormDestroy(Sender: TObject);
begin
 Medbank_Plan.Free;
end;

end.
