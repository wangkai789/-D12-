unit Factory;

interface
uses SysUtils,windows,printers,menus,forms,buttons,WinInet,Uni,ComCtrls;

 type
   PPat_Node = ^TPatient_Node;
   TPatient_Node = record
      Patient_kind:byte;
      Patient_ID,
      Out_Patient_ID,
      Patient_NurseWardCode,
      Patient_NurseWard,
      Patient_ksmc,
      Patient_bch,
      Patient_Name,
      Patient_Sex,
      Patient_Age,
      Patient_ghlb,
      Patient_zycs: string;
      Patient_sfbm,Patient_ksbm:smallint;

      Patient_rysj:tdatetime;
      Patient_lxr:string;
      Patient_lxrdz:string;
      Patient_phone:string;

      Patient_room:string;  //2008-07-22添加  房床号
      Patient_diag:string;  //2016-06-03添加
      Patient_indeptdt:TDateTime;    //2016-06-03添加 入科时间
      Patient_applyID:string;
 end;

 type
   TPatient = class
   private

   protected

   public
     PatInfo: TPatient_Node;

     constructor Create;
     destructor Destroy; override;

     procedure Get_ALL_PATS(DataSet:TuniQuery;PatTree:TTreeView);
     procedure Get_ALL_PATS_Time(DataSet:TuniQuery;PatTree:TTreeView;datefrom,dateto:Tdatetime);
     procedure Create_Patient_NodeList(aDataset: TuniQuery;PatTree:TTreeView);
     procedure GetList_Pateint_Exam;
   published

  end;
const dllname='public.dll';
procedure isdigit(var temp:char);
procedure isalpha(var temp:char);
function ChinaMoney(Money:currency):string;stdcall;
function inttostring(temp_num,temp_ws:integer):string;stdcall;
procedure dataset_open(tempdataset:TuniQuery;temp:string);stdcall;
procedure sqini(var accessquey1:Tuniquery;accessquey2:Tuniquery;mainmenu:Tmainmenu;sq:smallint;mainform:Tform);stdcall
Function  MD5String(SourceStr:pchar)  :pchar;  stdcall; external dllname;
function CovFileDate(Fd:_FileTime):TDateTime;
procedure GetMonthDay(const ADate:TDateTime; var AMonthFirst,AMonthLast:TDateTime);
procedure DeleteIECache(httpStr: string='');
 //20220723 设置电脑日期格式
procedure SetSysDateTimeFormat();
     //20220723获取程序版本号
function GetFileVersion(FN: string): string;


var   sys_updatetime:Tdatetime;
const
  OpenKey = 7;
  CharSet = 255;

implementation

{ TPatient }

procedure isdigit(var temp:char);
begin
  if not (integer(temp) in [8,13,45,46,48..57,189]) then  temp:=#27;
end;

procedure isalpha(var temp:char);
begin
  if not (integer(temp) in [8,13,65..90,97..122]) then  temp:=#27;
end;

function ChinaMoney(Money:currency):string;
label JiaoFen;
var
MuMoney: currency;
StrMoney:  string;
LenofMoney: integer;
Yuan,Jiao,Fen: char;
i: integer;
ok: String;
Yuanint: integer;
Yuanstr: string;
Yuanok: string;
ZeroFlag: Boolean;
PP: integer;
begin
   Yuanok := '';
//   MuMoney := int(Money);
   MuMoney := Trunc(Money);
   if MuMoney = 0 then
   begin
     goto JiaoFen;
   end;
   StrMoney := CurrToStr(MuMoney);
   LenofMoney := Length(StrMoney);
   for I:=1 to LenofMoney do
     begin
     Yuan := StrMoney[LenofMoney+1-I];
     ZeroFlag := False;
     Case Yuan of
       '0':
         begin
           ok := '零';
           ZeroFlag := True;
         end;
       '1':  ok := '壹';
       '2':  ok := '贰';
       '3':  ok := '叁';
       '4':  ok := '肆';
       '5':  ok := '伍';
       '6':  ok := '陆';
       '7':  ok := '柒';
       '8':  ok := '捌';
       '9':  ok := '玖';
     else
       {showmessage('too money232!');}
     end;
     pp := (I+3) MOD 4;
     case pp of
       0:
         begin
           Yuanstr := FloatToStr((I+3)/4);
           Yuanint := strtoint(Yuanstr);
           if not ZeroFlag then
             begin
               case Yuanint of
                 1: ok := ok+'元';
                 2: ok := ok+'万';
                 3: ok := ok+'亿';
               else
{                 ShowMessage('卖最高难度SOFTWARE');}
               end;
               end
           else
             begin
               case Yuanint of
                 1: ok := '零元';
                 2: ok := '万';
                 3: ok := '亿';
               else
{                 ShowMessage('卖最高难度SOFTWARE');}
               end;
             end;
         end;
       1:ok := ok+'拾';
       2:ok := ok+'佰';
       3:ok := ok+'仟';
       else
{         ShowMessage('you rich!');}
       end;
       Yuanok :=ok+Yuanok;
     end;
JiaoFen:
      MuMoney := int(Money*100);
      StrMoney := currTOstr(MuMoney);
      LenofMoney := Length(StrMoney);
      Jiao := StrMoney[LenofMoney-1];
      Fen := StrMoney[LenofMoney];
      case Jiao of
       '0':
         begin
          if Fen <> '0' then
            begin
              ok := '零角';
            end
          else
              ok:= '整';
         end;
       '1':  ok := '壹角';
       '2':  ok := '贰角';
       '3':  ok := '叁角';
       '4':  ok := '肆角';
       '5':  ok := '伍角';
       '6':  ok := '陆角';
       '7':  ok := '柒角';
       '8':  ok := '捌角';
       '9':  ok := '玖角';
      else
      end;
      Yuanok := Yuanok+ok;
      case Fen of
       '1':  ok := '壹分';
       '2':  ok := '贰分';
       '3':  ok := '叁分';
       '4':  ok := '肆分';
       '5':  ok := '伍分';
       '6':  ok := '陆分';
       '7':  ok := '柒分';
       '8':  ok := '捌分';
       '9':  ok := '玖分';
     else
       ok := '';
     end;
    Yuanok := Yuanok + ok;
    Result := '币:'+Yuanok;
end;

procedure dataset_open(tempdataset:TuniQuery;temp:string);stdcall
begin
  with tempdataset do
  begin
    close;
    sql.Clear;
    sql.add(temp);
    open;
  end;
end;

function inttostring(temp_num,temp_ws:integer):string;stdcall;
var temp:string;
    i:integer;
begin
  temp:=inttostr(temp_num+1);
  for i:=1 to temp_ws-length(temp) do  temp:='0'+temp;
  result:=temp;
end;


procedure sqini(var accessquey1:Tuniquery;accessquey2:Tuniquery;mainmenu:Tmainmenu;sq:smallint;mainform:Tform);
var i,j,k,n:smallint;
begin
   with accessquey1 do
    begin
       close;
       sql.clear;
       sql.add('delete powerl where  partid=:partid ');
       sql.add('delete permission where  partid=:partid ');
       sql.add('insert into powerl(PartId,Lvel,Pnsmr)');
       sql.add('select :PartId,6,''主管''');
       sql.add('insert into powerl(PartId,Lvel,Pnsmr)');
       sql.add('select :PartId,7,''操作员''');
       parambyname('partid').assmallint:=sq;
       execsql;
    end;
    for i:=0 to mainform.ComponentCount-1 do
       begin
           if mainform.Components[i] is TMenuItem then
           begin
           if   TMenuItem(mainform.Components[i]).tag=0  then continue;
                with accessquey2 do
                  begin
                    close;
                    sql.clear;
                     sql.add('insert into permission (partid,powerlevel,itemid,itemname,[select])');
                     sql.add('values(:PartId,6,:itemid,:itemname,1)');
                     sql.add('insert into permission (partid,powerlevel,itemid,itemname,[select])');
                     sql.add('values(:PartId,7,:itemid,:itemname,1)');
                     parambyname('partid').assmallint:=sq;
                     parambyname('itemid').assmallint:=TMenuItem(mainform.Components[i]).tag;
                     parambyname('itemname').asstring:=TMenuItem(mainform.Components[i]).caption;
                    execsql;
                end;
           end;
       end;
   for k:=0 to mainform.ComponentCount-1 do
   begin
      if (mainform.Components[k] is Tspeedbutton) then
       BEGIN
         if Tspeedbutton(mainform.Components[k]).tag=0  then continue;
          with accessquey2 do
          begin
             close;
             sql.clear;
             sql.add('insert into permission (partid,powerlevel,itemid,itemname,[select])');
             sql.add('values(:PartId,6,:itemid,:itemname,1)');
             sql.add('insert into permission (partid,powerlevel,itemid,itemname,[select])');
             sql.add('values(:PartId,7,:itemid,:itemname,1)');
             parambyname('partid').assmallint:=sq;
             parambyname('itemid').assmallint:=Tspeedbutton(mainform.Components[k]).TAG;
             parambyname('itemname').asstring:=Tspeedbutton(mainform.Components[k]).caption;
             execsql;
         end;
        END;
        end;
end;
function CovFileDate(Fd:_FileTime):TDateTime;
{ 转换文件的时间格式 }
var
  Tct:_SystemTime;
  Temp:_FileTime;
begin
  FileTimeToLocalFileTime(Fd,Temp);
  FileTimeToSystemTime(Temp,Tct);
  CovFileDate:=SystemTimeToDateTime(Tct);
end;

procedure GetMonthDay(const ADate:TDateTime; var AMonthFirst,AMonthLast:TDateTime);
var
   Year,   Month,   Day:   Word;
begin
   DecodeDate(ADate,   Year,   Month,   Day);
   AMonthFirst   :=   EncodeDate(Year,   Month,   1);
   if   Month   +   1   >   12   then
     AMonthLast   :=   EncodeDate(Year   +   1,   1,   1)   -   1
   else
     AMonthLast   :=   EncodeDate(Year,   Month   +   1,   1)   -   1
end;


procedure DeleteIECache(httpStr: string='');
var
  lpEntryInfo: PInternetCacheEntryInfo;
  hCacheDir: LongWord;
  dwEntrySize: LongWord;
  cachefile: string;
begin
  dwEntrySize := 0;
  FindFirstUrlCacheEntry(nil, TInternetCacheEntryInfo(nil^), dwEntrySize);
  GetMem(lpEntryInfo, dwEntrySize);
  if dwEntrySize > 0 then lpEntryInfo^.dwStructSize := dwEntrySize;
  hCacheDir := FindFirstUrlCacheEntry(nil, lpEntryInfo^, dwEntrySize);
  if hCacheDir <> 0 then
  begin
    repeat
      cachefile := pchar(lpEntryInfo^.lpszSourceUrlName);
      if (httpStr='') or (pos(httpStr, cachefile) > 0) then
      begin
        DeleteUrlCacheEntry(lpEntryInfo^.lpszSourceUrlName);
      end;

      FreeMem(lpEntryInfo, dwEntrySize);
      dwEntrySize := 0;
      FindNextUrlCacheEntry(hCacheDir, TInternetCacheEntryInfo(nil^), dwEntrySize);
      GetMem(lpEntryInfo, dwEntrySize);
      if dwEntrySize > 0 then lpEntryInfo^.dwStructSize := dwEntrySize;
    until not FindNextUrlCacheEntry(hCacheDir, lpEntryInfo^, dwEntrySize);
  end;
  FreeMem(lpEntryInfo, dwEntrySize);
  FindCloseUrlCache(hCacheDir);
end;

procedure SetSysDateTimeFormat;
var p:DWORD;
begin
  SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE, 'yyyy-MM-dd'); // 短日期格式
  SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SLONGDATE, 'yyyy-MM-dd'); // 长日期格式
  SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_STIMEFORMAT, 'HH:mm:ss'); // 时间格式
  SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_sdate, '-'); // 日期分隔符格式
  SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_sTime, ':'); // 时间分隔符格式
 // SendMessageTimeOut(HWND_BROADCAST,WM_SETTINGCHANGE,0,0,SMTO_ABORTIFHUNG,10,p);
  //SendMessageTimeout(HWND_BROADCAST,SPI_SETWHEELSCROLLLINES,0,0,SMTO_ABORTIFHUNG, 10, p);
end;

function GetFileVersion(FN: string): string;
var
  Temp, InfoSize: Cardinal;
  FileData: Pointer;
  FileInfo: PVSFixedFileInfo;
begin
  Result := '';
  if not FileExists(FN) then Exit;

  InfoSize := GetFileVersionInfoSize(PChar(FN), Temp);
  if InfoSize  = 0 then Exit;       //没有版本
  FileData := GetMemory(InfoSize);
  try
    if not GetFileVersionInfo(PChar(FN), 0, InfoSize, FileData) then Exit;
    if not VerQueryValue(FileData, '\', Pointer(FileInfo), Temp) then Exit;
    Result := Format('%d.%d.%d.%d',
      [FileInfo.dwFileVersionMS div $10000,
       FileInfo.dwFileVersionMS mod $10000,
       FileInfo.dwFileVersionLS div $10000,
       FileInfo.dwFileVersionLS mod $10000]);
  finally
    FreeMemory(FileData)
  end;
end;

{ TPatient }

constructor TPatient.Create;
begin

end;

procedure TPatient.Create_Patient_NodeList(aDataset: TuniQuery;
  PatTree: TTreeView);
var
  tmpNode, tmpRoot,tmpChildNode: TTreeNode;
  tmpPat_Node,tmppatchild_node: PPAT_Node;
  I,J,K,tmpTag, tmpTag1, tmptag2: integer;
  tmpNurseWard,tmpmanagedoctorxm,tmpNodeText: string;
begin
  J:=0;
  K:=0;
  PatTree.Items.BeginUpdate;
  PatTree.Items.Clear;
  //tmpRoot := PatTree.Items.Add(nil, fClinican.DEPT_NAME);
  try
    with aDataset do
    begin
      DisableControls;
      if RecordCount > 0 then
      begin
        First;
        for i := 0 to RecordCount - 1 do
        begin
          New(tmpPat_Node);
          //tmpPat_Node.Out_Patient_ID := trim(fieldbyname('zyh').AsString);
          tmpPat_Node.Patient_NurseWard := trim(fieldbyname('NurseWard').AsString);
          //tmpPat_Node.Patient_ksmc := trim(fieldbyname('logogram').AsString);
          //tmpPat_Node.Patient_bch := trim(fieldbyname('bch').AsString);
          //tmpPat_Node.Patient_Name := trim(fieldbyname('byxm').AsString);
          //tmpPat_Node.Patient_Sex := trim(fieldbyname('xb').AsString);
          //tmpPat_Node.Patient_ghlb := trim(fieldbyname('sfzl').AsString);
          tmpPat_Node.Patient_NurseWardCode := Trim(fieldbyname('NurseWardcode').AsString);

          if trim(tmpNurseWard)<>trim(fieldbyname('NurseWard').AsString) then
          begin
             tmpNurseWard := trim(fieldbyname('NurseWard').AsString);
             tmpNode := PatTree.Items.AddchildObject(nil,trim(tmpNurseWard), tmpPat_Node);
             tmpNurseWard:= trim(fieldbyname('NurseWard').AsString);
          end;
          New(tmppatchild_node);
          tmppatchild_node.Out_Patient_ID := trim(fieldbyname('zyh').AsString);
          tmppatchild_node.Patient_ksbm := fieldbyname('ksbm').AsInteger;
          tmppatchild_node.Patient_ksmc := trim(fieldbyname('ksmc').AsString);
          tmppatchild_node.Patient_Name := trim(fieldbyname('byxm').AsString);
          tmppatchild_node.Patient_room := trim(fieldbyname('room').AsString);
          tmppatchild_node.Patient_applyID := trim(fieldbyname('applyID').AsString);
          tmpNodeText:=tmppatchild_node.Patient_room +'|'+tmppatchild_node.Patient_Name;
          tmpNodeText :=tmpNodeText+ '|'+trim(tmppatchild_node.Out_Patient_ID)
            + '|'+trim(tmppatchild_node.Patient_ksmc)
            + '|' +trim(tmppatchild_node.Patient_applyID);
          tmpChildNode:=PatTree.Items.AddChildObject(tmpNode, trim(tmpNodeText), tmppatchild_node);
          //添加病人的属性列表
          //Add_Child_PAT_ItemName(PatTree, tmpChildNode);
          Next;
        end;
      end;
      EnableControls;
    end;

  finally
     If PatTree.Items.Count>0 Then
       Begin
          PatTree.Items[0].Text :=
          Trim(PatTree.Items[0].Text)+'('+inttostr(PatTree.Items[0].count)+')';
       End;
    PatTree.Items.EndUpdate;
    if PatTree.Items.Count > 0 then PatTree.TopItem.Expand(false);
  end;
end;

destructor TPatient.Destroy;
begin

  inherited;
end;

procedure TPatient.GetList_Pateint_Exam;
begin

end;

procedure TPatient.Get_ALL_PATS(DataSet: TuniQuery; PatTree: TTreeView);
begin
  try
    with DataSet do
    begin
      Close;
      Sql.Clear ;
      //Sql.Add('select applyID=a.ID,b.zyh,b.byxm,b.Room,b.ksmc,NurseWardcode=c.RoomID,NurseWard=c.room');
      //Sql.Add('from medstore_Return a ,zy_byinfo b,zy_sickroom c');
      //Sql.Add('where a.zyh=b.zyh and a.[type]=2 and left(b.bch,4)=c.RoomID');
      //Sql.Add('and a.affirmopid is null');
      //Sql.Add('order by  c.RoomID,b.bch');
      Sql.Add('select applyID=a.ID,b.zyh,b.byxm,b.Room,b.ksbm,b.ksmc,NurseWardcode=b.ksbm,NurseWard=b.ksmc');
      Sql.Add('from medstore_Return a ,zy_byinfo b');
      Sql.Add('where a.zyh=b.zyh and a.[type]=2');
      Sql.Add('and a.affirmopid is null');
      Sql.Add('order by  b.ksbm,b.bch');
      Open;
      Create_Patient_NodeList(DataSet,PatTree);
    end;
  except
  end;
end;

procedure TPatient.Get_ALL_PATS_Time(DataSet: TuniQuery; PatTree: TTreeView;
  datefrom, dateto: Tdatetime);
begin
   try
    with DataSet do
    begin
      Close;
      Sql.Clear ;
      Sql.Add('select applyID=a.ID,b.zyh,b.byxm,b.Room,b.ksmc,NurseWardcode=c.RoomID,NurseWard=c.room');
      Sql.Add('from medstore_Return a ,zy_byinfo b,zy_sickroom c');
      Sql.Add('where a.zyh=b.zyh and a.[type]=2 and left(b.bch,4)=c.RoomID');
      Sql.Add('and datediff(day,a.applydate,:datefrom)<=0');
      Sql.Add('and datediff(day,a.applydate,:dateto)>=0');
      Sql.Add('and a.affirmopid is null');
      Sql.Add('order by  c.RoomID,b.bch');
      Parambyname('datefrom').AsDateTime :=datefrom ;
      Parambyname('dateto').AsDateTime :=dateto ;
      Open;
      Create_Patient_NodeList(DataSet,PatTree);
    end;
  except
  end;
end;

end.
