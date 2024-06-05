
{******************************ClassLib****************************
*
* Module Name: ShareUnit.pas
*
* Content: 应用程序共享操作单元，就此调用所有其他的公共类
*
* Copyright (c) 2001-2010 AFC.  All rights reserved.
*
* Author: SJ
*
* Date:2004.09
*
**************************************************************************}

unit ClassLib;

interface
uses
  UnitLog,  Forms, ComCtrls, DBGrids, CheckLst,  StdCtrls,
  ExtCtrls, Classes,  DB, ADODB, Dialogs, SysUtils,
  UnitCHtoEN,ftLib;
  //LabeledComboBox,LabeledMemo,

type

  //*******一些结构定义**********************
  Tfun_Result = record
    Res_Bool: Boolean;
    Res_Msge: string;
  end;


  PViewNode = ^TViewNode;
  TViewNode = record
    Level: integer;
    Lv_ID,
      Lv_Name,
      Lv_Code: string;
    LV_Index: integer;
  end;

  PItemObj = ^TItemObj;
  TItemObj = record
    name,
      Code: string;
  end;

  PPat_Child = ^TPat_Child; //类 ：  病人子类   病案内容分类
  TPat_Child = record
    ListChild_TreeView,
      ListChild_ListView: Boolean;
    ItemID: Integer;
    ItemName: string;
  end;

  //*******一些结构定义**********************

  TUser = class
  private
    DB_User,
      pswd: string;

  public
    USER_ID,
      Full_Name,
      EMP_NO: string;

    Dept_ID,
      Dept_Name: string;

    function Login: Tfun_Result;
    function Check_GRANTS: Boolean;

    constructor Create(aName, apswd: string);

    destructor Destroy; override;

  published

  end;

  //临床医生类
  TClinican = class(TUser)

    JOB,
      Title,
      Authority: string;

  private
//    procedure Create_Patient_NodeList(aDataset: TDataSet);

  public
    procedure Get_ALL_PATS(intRange: integer; intDays: integer = 0); //得到医生的所有病人
    procedure Get_Clinical_info;
    procedure Get_PAT_Basic_info;

    function Get_PAT_Images(strPAT_ID, strV_ID: string): integer;
  end;


  TADO = class
  private
    tmpSQL: string;

  protected

  public
    ADOConn: TADOConnection;
    ADOQryOpen, ADOQryExec: TADOQuery; //分别执行打开和数据修改操作的
    ADOQryTemp, ADOQryView: TADOQuery; //仅用于查询过程显示
    ADOQryMaster, ADOQryExam: TADOQuery; //单独用来显示检查结果的
    DSQryView, DSQryExam, DSQryTemp, DSQryMaster: TDataSource;

    ADOQryStat, ADOQryStat2, ADOQryStatVIP: TADOQuery;
    DSQryStat, DSQryStatVIP: TDataSource;


    ADOQryDetail: TADOQuery;
    DSQryDetail: TDataSource;

    ADOStoredProc: TADOStoredProc;
    DSStoredProc: TDataSource;

    SQLServer,
      SQLCatalog,
      SQLUSer,
      SQLUserPswd: string; //连接MS SQL需要的参数信息

    Connected: Boolean;

    ADOConnStr: string;

    constructor Create;

    destructor Destroy; override;

    procedure Set_ADOConnection;

    function Set_ADO_Params(aSQLServer, aSQLCatalog, aSQLUser, aSQLUserPswd: string): Boolean;

    function Get_Data(aSql: string): TDataSet;

    function SQL_Open(aSQL: string): Integer;
    function SQL_Exec(aSQL: string): Boolean;
    function SQL_Exec_NoTrans(aSQL: string): Boolean;

    procedure Create_Main_Tree(aTree: TTreeView);

    function Get_New_DEPTID(aDeptType: string): string;
    function Get_NEw_DeptExamItem_Code(aDeptID: string): string;
    function Get_New_DeptItemComp_Code(aDeptID: string): string;
    function Get_NEw_ItemGroup_Code(aType: integer): string;

    procedure List_Dept_ChkListBox(aChkListBox: TCustomListBox; aDeptType: string = '');

    procedure TreeView_List_DeptItem(aTreeView: TTreeView);
    procedure TreeView_List_Item_Comp(aTreeView: TTreeView);
    procedure TreeView_List_ItemGrp(aTreeView: TTreeView; aClass: integer);

//    procedure List_CLASSDATA_Basic(aComBox: TLabeledComboBox; aCode: string);

    procedure ListView_Combox_Config(aListView: TlistView);
    procedure ListView_ItemComp(aListView: TListView; aDeptID, aCompID: string);


//    procedure ComBox_List_ComboxItem(aForm: TFORM);

    function Get_Company_ID(var vID: string): Boolean;

    function StoredProc_Get_EXAMDiag_Dept(sTask_ID: string): Boolean;

//    procedure Get_Field_IntoComboxList(acbBox: TLabeledComboBox; aField, aTable: string);

    function Get_Field_ID(aField, aFieldID, aTable: string; aValue: string): string;

    function Get_ITEM_DETAIL(CodeOrData: Integer; aClass, aItemCode: string): string;

  published

  end;

type
  TSystemInfo = record
    DBServer,
    DBCatalog,
    DBUser,
    DBUser_PSwd: string;


    GridSelected_Color: integer;
    Def_Dates: integer;

    Font_Size: integer;
    Font_Color: integer;
    Font_Name: string;

    Ksbm: integer;
    storeA:String;
    storeB:String;
    storeC:String;
    storeD:String;
    OutPatRipPrint:integer;//门诊处方单 0不打印 1直接打印 2预览打印
    OutPatSendPrint:integer;   //门诊发药单 0不打印 1直接打印 2预览打印
    InPatRipPrint:integer; //住院处方单 0不打印 1直接打印 2预览打印
    InPatSendPrint:integer;   //住院发药单  0不打印 1直接打印 2预览打印
    InPatSendkind:integer; //1全部发药 2除大输液
    mzfyprint:integer ;
    zyfyprint:integer ;
    wardfyprint:integer;
  end;

procedure Inital_SystemData;
procedure Save_SystemData;
//----基本项目显示 start----

procedure Basic_View_Detail(aName: string; aDBGrid: TDBGrid);
procedure Set_GridView_Column(aCode: string; aDBGrid: TDBGrid);

procedure Add_Child_PAT_ItemName(tmpTree: TTreeView; tmpPat: TTreeNode);

//----基本项目显示 end----

//----科室医生显示 Start----
procedure DEPT_View_Detail(aCode: string; aDBGrid: TDBGrid);


//----科室医生显示 End----

//procedure Set_LabelEditCombox_Space(aForm: TForm);

//procedure Clear_ALL_Edit(aForm: TForm);

procedure Set_DBGridSelected_State(aALL: Boolean; aGrid: TDBGrid);

procedure Manule_Draw_DBGirdCellColor(aDBGrid: TDBGrid);

procedure SetAllForms_Font(aFont_Size: integer; aFont_Name: string; aFont_Color: integer);


function notChinese(const Ident: string): Boolean;


var

  tmpSQL: string;

  //临床医师实例
  fClinican: TClinican;

  fADO: TADO;
  fLog: TEventLog;
  flogtype: TLogType;
  fCHtoEN: TCHtoEN;

  Sysinfo: TSystemInfo;

  MainPath: string;


implementation

uses ftLibRis;

{ TUser }

function TUser.Check_GRANTS: Boolean;
begin
  result := true;
end;


constructor TUser.Create(aName, apswd: string);
begin
  inherited Create;
  USER_ID := aName;
  pswd := apswd;

end;

destructor TUser.Destroy;
begin

  inherited;
end;


function TUser.Login: Tfun_Result;
begin
  Result.Res_Bool := False;
  Result.Res_Msge := '未知原因';

  try
    tmpSQL := 'select a.bh from zgzb a where bh=' + USER_ID;

    //' where a.ksbm=b.ksbm and a.cfq=1 and a.ifzy=1 '+ and

    if fADO.SQL_Open(tmpSQL) < 1 then
    begin
      Result.Res_Bool := False;
      Result.Res_Msge := '无效的用户名';
      Exit;
    end;

  //----测试期间暂不加上密码校验
    tmpSQL :=
      'select a.bh,a.xm,a.cfq ,b.ksmc,b.ksbm from zgzb a,jgxx b  where bh=' + USER_ID +
      ' and a.cfq=1 and a.ifzy=1 and a.ksbm=b.ksbm ';

    with fADO.ADOQryTemp do
    begin
      Close;
      SQL.text := tmpSQL;
      Open;

      if RecordCount > 0 then
      begin
        Full_Name := trim(FieldByName('xm').AsString);
        Dept_ID := trim(FieldByName('ksbm').AsString);
        Dept_Name := trim(FieldByName('ksmc').AsString);
        Result.Res_Bool := true;
        Result.Res_Msge := '获取用户信息成功';
      end
      else
      begin
        Result.Res_Msge := '用户【' + USER_ID + '】没有处方权或者是帐户已经停用！';
        Result.Res_Bool := false;
        Exit;
      end;
    end;

  except
    on E: Exception do
    begin
      MessageDlg('执行登录操作无效，请查看错误日志！', mtWarning, [mbok], 0);
      flog.AddLog('1', '1', '查询', 'LOGIN', '80001', 'SQL', '执行数据库查询无效' + E.Message, flogtype);
    end;
  end;
end;

{ TADO }

function TADO.SQL_Exec(aSQL: string): Boolean;
begin
  try
    if not ADOConn.InTransaction then
      ADOCOnn.BeginTrans;
    with ADOQryExec do
    begin
      Close;
      SQL.text := aSQL;
      ExecSQL;
    end;
    Result := true;
    ADOCOnn.CommitTrans;
  except
    on E: Exception do
    begin
      ADOCOnn.RollbackTrans;
      flog.AddLog('1', '1', '错误', '60010', '执行数据操作-ADOQryExec', E.Message, asql, fLogtype);
    end;
  end;
end;

function TADO.SQL_Open(aSQL: string): Integer;
begin
  Result := 0;

  try
    with ADOQryOpen do
    begin
      Close;
      SQL.text := aSQL;
      Open;

      Result := RecordCount;
    end;

  except
    on E: Exception do
      Result := -1;
  end;

end;

constructor TADO.Create;
begin
  try
    ADOConn := TADOCOnnection.Create(nil);
    ADOConn.LoginPrompt := False;

    ADOConnStr := ADOCOnn.ConnectionString;

    ADOQryTemp := TADOQuery.Create(nil);
    ADOQryTemp.Connection := ADOConn;

    ADOQryOpen := TADOQuery.Create(nil);
    ADOQryOpen.Connection := ADOConn;

    ADOQryExec := TADOQuery.Create(nil);
    ADOQryExec.Connection := ADOConn;

    ADOQryView := TADOQuery.Create(nil);
    ADOQryView.Connection := ADOConn;

    DSQryView := TDataSource.Create(nil);
    DSQryView.DataSet := ADOQryView;

    ADOQryExam := TADOQuery.Create(nil);
    ADOQryExam.Connection := ADOConn;

    DSQryTemp := TDataSource.Create(nil);
    DSQryTemp.DataSet := ADOQryTemp;

    DSQryExam := TDataSource.Create(nil);
    DSQryExam.DataSet := ADOQryExam;

    ADOStoredProc := TADOStoredProc.Create(nil);
    ADOStoredProc.Connection := ADOConn;

    DSStoredProc := TDataSource.Create(nil);
    DSStoredProc.DataSet := ADOStoredProc;

    ADOQryMaster := TADOQuery.Create(nil);
    ADOQryMaster.Connection := ADOConn;

    DSQryMaster := TDataSource.Create(nil);
    DSQryMaster.DataSet := ADOQryMaster;

    ADOQryDetail := TADOQuery.Create(nil);
    ADOQryDetail.Connection := ADOConn;

    DSQryDetail := TDataSource.Create(nil);
    DSQryDetail.DataSet := ADOQryDetail;

    ADOQryStat := TADOQuery.Create(nil);
    ADOQryStat.Connection := ADOConn;

    ADOQryStat2 := TADOQuery.Create(nil);
    ADOQryStat2.Connection := ADOConn;


    DSQryStat := TDataSource.Create(nil);
    DSQryStat.DataSet := ADOQryStat;


    ADOQryStatVIP := TADOQuery.Create(nil);
    ADOQryStatVIP.Connection := ADOConn;


    DSQryStatVIP := TDataSource.Create(nil);
    DSQryStatVIP.DataSet := ADOQryStatVIP;



  except

  end;

end;

destructor TADO.Destroy;
begin
  try
    ADOConn.Destroy;
  except

  end;
  inherited;
end;

function TADO.Get_Data(aSql: string): TDataSet;
begin

end;

function TADO.Set_ADO_Params(aSQLServer, aSQLCatalog, aSQLUser,
  aSQLUserPswd: string): Boolean;
begin
  Result := False;

  SQLServer := aSQLServer;
  SQLCatalog := aSQLCatalog;
  SQLUSer := aSQLUser;
  SQLUserPswd := aSQLUserPswd;

  if SQLServer <> '' then
  begin
    try
      Result := fun_Conn_MSSQL_Script(ADOConn, SQLServer, SQLCatalog, SQLUser, SQLUserPswd);
    except
      on E: Exception do
      begin

      end;
    end;
  end;
end;

procedure TADO.Set_ADOConnection;
begin

end;

//------------------------------------------------------------------------------
// Pro:    Create_Main_Tree
// Desc:   初始化主界面左侧目录树，从数据库中读取
// Author: SJ
// Date:   2004.09
//------------------------------------------------------------------------------

procedure TADO.Create_Main_Tree(aTree: TTreeView);
var
  tmpNode: TTreeNode;
  tmpLvNode: PViewNode;

  i: integer;

  procedure sub_Node(ParentNode: TTreeNode; ParentID: string);
  var
    j: integer;
  begin
    with ADOQryView do
    begin
      Close;
      SQl.text := 'select * from V_Tree_Level1 where Lv_ID_0=' + ParentID
        + ' Order By Lv_Index_1';
      Open;

      if RecordCount > 0 then
      begin
        for j := 0 to RecordCount - 1 do
        begin
          New(tmpLvNode);
          tmpLvNode.Level := 1;
          tmpLvNode.Lv_Name := trim(FieldByName('Lv_Name_1').AsString);
          tmpLvNode.Lv_Code := trim(FieldByName('Lv_Code_1').AsString);
          tmpLvNode.LV_Index := FieldByName('Lv_Index_1').AsInteger;

          aTree.Items.AddChildObject(ParentNode, tmpLvNode.Lv_Name, tmpLvNode);

          Next;
        end;

      end;
    end;
  end;

begin


  with ADOQryTemp do
  begin
    Close;
    SQl.text := 'select * from V_Tree_Level0 order by Lv_index';
    Open;

    if RecordCount > 0 then
    begin

      try
        aTree.Items.BeginUpdate;
        aTree.Items.Clear;

        for i := 0 to RecordCount - 1 do
        begin
          New(tmpLvNode);
          tmpLvNode.Level := 0;
          tmpLvNode.Lv_ID := trim(FieldByName('Level_ID').AsString);
          tmpLvNode.Lv_Name := trim(FieldByName('Lv_Name').AsString);
          tmpLvNode.Lv_Code := trim(FieldByName('Lv_Code').AsString);

          tmpNode := aTree.Items.AddObject(nil, tmpLvNode.Lv_Name, tmpLvNode);

          sub_Node(tmpNode, tmpLvNode.Lv_ID);

          Next;
        end;
      finally
        aTree.Items.EndUpdate;
      end;
    end;

  end;
end;


//------------------------------------------------------------------------------
// Pro:    Inital_SystemData
// Desc:   初始化系统参数，从文件读取
// Author: SJ
// Date:   2004.08
//------------------------------------------------------------------------------

procedure Inital_SystemData;
begin
  MainPath := ExtractFilePath(Application.ExeName);
//
//  Sysinfo.DBServer := LoadFromIniFile_String(MainPath + 'zyyfconfig.ini', 'SQLConn', 'DBServer', '');
//  Sysinfo.DBCatalog := LoadFromIniFile_String(MainPath + 'zyyfconfig.ini', 'SQLConn', 'DBCatalog', '');
//  Sysinfo.DBUser := LoadFromIniFile_String(MainPath + 'zyyfconfig.ini', 'SQLConn', 'DBUser', 'founder');
//  Sysinfo.DBUser_PSwd := LoadFromIniFile_String(MainPath + 'zyyfconfig.ini', 'SQLConn', 'DBUser_PSwd', 'fd');
//
//  Sysinfo.GridSelected_Color := LoadFromIniFile_Integer(MainPath + 'zyyfconfig.ini', 'Color', 'DBGirdSelected', 255);
//
//  Sysinfo.Def_Dates := LoadFromIniFile_Integer(MainPath + 'zyyfconfig.ini', 'Dates', 'Def_Dates', 7);
//
//
//  Sysinfo.Font_Size := LoadFromIniFile_Integer(MainPath + 'zyyfconfig.ini', 'Font', 'Font_Size', Sysinfo.Font_Size);
//  Sysinfo.Font_Name := LoadFromIniFile_String(MainPath + 'zyyfconfig.ini', 'Font', 'Font_Name', Sysinfo.Font_Name);
//  Sysinfo.Font_Color := LoadFromIniFile_Integer(MainPath + 'zyyfconfig.ini', 'Font', 'Font_Color', Sysinfo.Font_Color);

  Sysinfo.ksbm:= LoadFromIniFile_Integer(MainPath+'INI\' + 'MYAPP.ini', 'ksbm', 'ksbm', Sysinfo.ksbm);

  Sysinfo.storeA:= LoadFromIniFile_String(MainPath + 'INI\'+'MYAPP.ini', 'storetype', 'storeA',Sysinfo.storeA);
  Sysinfo.storeB:= LoadFromIniFile_String(MainPath + 'INI\'+'MYAPP.ini', 'storetype', 'storeB',Sysinfo.storeB);
  Sysinfo.storeC:= LoadFromIniFile_String(MainPath + 'INI\'+'MYAPP.ini', 'storetype', 'storeC',Sysinfo.storeC);
  Sysinfo.storeD:= LoadFromIniFile_String(MainPath + 'INI\'+'MYAPP.ini', 'storetype', 'storeD',Sysinfo.storeD);

  Sysinfo.mzfyprint:= LoadFromIniFile_Integer(MainPath + 'INI\'+'MYAPP.ini', 'PrintSet', 'mzfyprint',1);
  Sysinfo.zyfyprint:= LoadFromIniFile_Integer(MainPath + 'INI\'+'MYAPP.ini', 'PrintSet', 'zyfyprint',1);
  Sysinfo.wardfyprint:= LoadFromIniFile_Integer(MainPath + 'INI\'+'MYAPP.ini', 'PrintSet', 'wardfyprint',1);

  Sysinfo.OutPatRipPrint:= LoadFromIniFile_Integer(MainPath + 'INI\'+'MYAPP.ini', 'PrintSet', 'OutPatRipPrint',1);
  Sysinfo.OutPatSendPrint:= LoadFromIniFile_Integer(MainPath +'INI\'+'MYAPP.ini', 'PrintSet', 'OutPatSendPrint',1);
  Sysinfo.InPatRipPrint:= LoadFromIniFile_Integer(MainPath +  'INI\'+'MYAPP.ini', 'PrintSet', 'InPatRipPrint',1);
  Sysinfo.InPatSendPrint:= LoadFromIniFile_Integer(MainPath + 'INI\'+'MYAPP.ini', 'PrintSet', 'InPatSendPrint',1);
  Sysinfo.InPatSendKind:= LoadFromIniFile_Integer(MainPath +  'INI\'+'MYAPP.ini', 'PrintSet', 'InPatSendKind',1);


  flogtype := ltLocal;

  if assigned(fADO) then
    fADO.Destroy;

  try

    fCHtoEN := TChToEn.Create(MainPath + 'PHONEA.dat');

    fLog := TEventLog.Create(MainPath + 'Log\' + Application.Title, MainPath + 'INI\'+'MYAPP.ini', 'M8000', '系统日志', '初始化', 'system');

  except

  end;

end;

procedure Save_SystemData;
begin
//  SaveToIniFile_String(MainPath + 'zyyfconfig.ini', 'SQLConn', 'DBServer', Sysinfo.DBServer);
//  SaveToIniFile_String(MainPath + 'zyyfconfig.ini', 'SQLConn', 'DBCatalog', Sysinfo.DBCatalog);
//
//
//  SaveToIniFile_Integer(MainPath + 'zyyfconfig.ini', 'Color', 'DBGirdSelected', Sysinfo.GridSelected_Color);
//  SaveToIniFile_Integer(MainPath + 'zyyfconfig.ini', 'Dates', 'Def_Dates', Sysinfo.Def_Dates);
//
//  //---字体配置信息
//  SaveToIniFile_String(MainPath + 'zyyfconfig.ini', 'Font', 'Font_Name', Sysinfo.Font_Name);
//  SaveToIniFile_Integer(MainPath + 'zyyfconfig.ini', 'Font', 'Font_Size', Sysinfo.Font_Size);
//  SaveToIniFile_Integer(MainPath + 'zyyfconfig.ini', 'Font', 'Font_Color', Sysinfo.Font_Color);
//   //---字体配置信息------

end;


//------------------------------------------------------------------------------
// Pro:    Basic_View_Detail
// Desc:   显示诸如体检类型、行业分类等基本字典库
// Author: SJ
// Date:   2004.09
//------------------------------------------------------------------------------

procedure Basic_View_Detail(aName: string; aDBGrid: TDBGrid);
begin
  with fADO.ADOQryView do
  begin
    Close;
    SQL.text := 'select * from DICT_ITEM_DETAIL where Class_Name=''' + aName + '''' +
      ' order By Item_ID Desc ';
    Open;

    aDBGrid.DataSource := fADO.DSQryView; // .DataSet := fADO.ADOQryView;

    Set_GridView_Column('BASIC', aDBGrid);
  end;

end;

//------------------------------------------------------------------------------
// Pro:    Set_GridView_Column
// Desc:   设置DBGRID的column的title
//          aCode-类别，aqry－数据
// Author: SJ
// Date:   2004.09
//------------------------------------------------------------------------------

procedure Set_GridView_Column(aCode: string; aDBGrid: TDBGrid);
var
  i: integer;
begin

  if aCode = 'BASIC' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('ITEM_ID').Visible := True;
      FieldByName('ITEM_ID').Index := 0;

      FieldByName('ITEM_DATA').Visible := True;
      FieldByName('ITEM_DATA').Index := 1;

      FieldByName('ITEM_CODE').Visible := True;
      FieldByName('ITEM_CODE').Index := 2;

      FieldByName('ITEM_INDEX').Visible := True;
      FieldByName('ITEM_INDEX').Index := 3;

      FieldByName('ITEM_DESC').Visible := True;
      FieldByName('ITEM_DESC').Index := 4;
    end;

    with aDBGrid do
    begin
      Columns[0].Title.Caption := 'ID';
      Columns[0].Width := 100;

      Columns[1].Title.Caption := '内容';
      Columns[1].Width := 120;

      Columns[2].Title.Caption := '代码';
      Columns[2].Width := 120;

      Columns[3].Title.Caption := '顺序';
      Columns[3].Width := 120;

      Columns[4].Title.Caption := '描述';
      Columns[4].Width := 260;

    end;

    for i := 0 to aDBGrid.DataSource.DataSet.RecordCount - 1 do
    begin
       //改变行背景颜色
    end;
  end
  else if aCode = 'DEPT' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('DEPT_ID').Visible := True;
      FieldByName('DEPT_ID').Index := 0;

      FieldByName('DEPT_NAME').Visible := True;
      FieldByName('DEPT_NAME').Index := 1;

      FieldByName('DEPT_TYPE').Visible := True;
      FieldByName('DEPT_TYPE').Index := 2;

      FieldByName('DEPT_Order').Visible := True;
      FieldByName('DEPT_Order').Index := 3;

      FieldByName('DEPT_DESC').Visible := True;
      FieldByName('DEPT_DESC').Index := 4;
    end;

    with aDBGrid do
    begin
      Columns[0].Title.Caption := '科室代码';
      Columns[0].Width := 100;

      Columns[1].Title.Caption := '科室名称';
      Columns[1].Width := 120;

      Columns[2].Title.Caption := '科室类型';
      Columns[2].Width := 120;

      Columns[3].Title.Caption := '显示顺序';
      Columns[3].Width := 120;

      Columns[4].Title.Caption := '科室信息';
      Columns[4].Width := 260;

    end;

    for i := 0 to aDBGrid.DataSource.DataSet.RecordCount - 1 do
    begin
       //改变行背景颜色
    end;
  end
  else if aCode = 'DOCT' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('USER_ID').Visible := True;
      FieldByName('USER_ID').Index := 0;

      FieldByName('FULL_NAME').Visible := True;
      FieldByName('FULL_NAME').Index := 1;

      FieldByName('LOGIN_NAME').Visible := True;
      FieldByName('LOGIN_NAME').Index := 2;

      FieldByName('WORK_NUMBER').Visible := True;
      FieldByName('WORK_NUMBER').Index := 3;

      FieldByName('USER_TYPE').Visible := True;
      FieldByName('USER_TYPE').Index := 4;

    end;

    with aDBGrid do
    begin
      Columns[0].Title.Caption := '系统ID';
      Columns[0].Width := 100;

      Columns[1].Title.Caption := '医师姓名';
      Columns[1].Width := 120;

      Columns[2].Title.Caption := '医师代码';
      Columns[2].Width := 120;

      Columns[3].Title.Caption := '工号';
      Columns[3].Width := 120;

      Columns[4].Title.Caption := '医师类型';
      Columns[4].Width := 260;

    end;

    for i := 0 to aDBGrid.DataSource.DataSet.RecordCount - 1 do
    begin
       //改变行背景颜色
    end;
  end //end of DOCT
  else if aCode = 'WS' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('WS_ID').Visible := True;
      FieldByName('WS_ID').Index := 0;

      FieldByName('WS_NAME').Visible := True;
      FieldByName('WS_NAME').Index := 1;

      FieldByName('WS_DESC').Visible := True;
      FieldByName('WS_DESC').Index := 2;

      FieldByName('WS_IP').Visible := True;
      FieldByName('WS_IP').Index := 3;

      FieldByName('WS_TYPE').Visible := True;
      FieldByName('WS_TYPE').Index := 4;

      FieldByName('CANCEL').Visible := True;
      FieldByName('CANCEL').Index := 5;

    end;

    with aDBGrid do
    begin
      Columns[0].Title.Caption := '工作站ID';
      Columns[0].Width := 100;

      Columns[1].Title.Caption := '工作站名称';
      Columns[1].Width := 120;

      Columns[2].Title.Caption := '工作站描述';
      Columns[2].Width := 120;

      Columns[3].Title.Caption := 'IP地址';
      Columns[3].Width := 120;

      Columns[4].Title.Caption := '工作站类型';
      Columns[4].Width := 120;

      Columns[5].Title.Caption := '是否停用';
      Columns[5].Width := 80;
    end;
  end
  else if aCode = 'PATIENT' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('ifzx').Visible := True;
      aDBGrid.Columns[0].FieldName := 'ifzx'; //FieldByName('STATE_REPORT').Index := 0;

      FieldByName('mzh').Visible := True;
      aDBGrid.Columns[1].FieldName := 'mzh';

      FieldByName('Name').Visible := True;
      aDBGrid.Columns[2].FieldName := 'Name';

      FieldByName('Birth').Visible := True;
      aDBGrid.Columns[3].FieldName := 'Birth';

      FieldByName('sex').Visible := True;
      aDBGrid.Columns[4].FieldName := 'sex';

      FieldByName('Ghrq').Visible := True;
      aDBGrid.Columns[5].FieldName := 'Ghrq';

      FieldByName('Ksmc').Visible := True;
      aDBGrid.Columns[6].FieldName := 'Ksmc';

      FieldByName('ghlb').Visible := True;
      aDBGrid.Columns[7].FieldName := 'ghlb';

    end;

    with aDBGrid do
    begin
      Columns[0].Title.Caption := '状态';
      Columns[0].Width := 60;

      Columns[1].Title.Caption := '门诊号';
      Columns[1].Width := 100;

      Columns[2].Title.Caption := '姓名';
      Columns[2].Width := 100;

      Columns[3].Title.Caption := '年龄';
      Columns[3].Width := 60;

      Columns[4].Title.Caption := '性别';
      Columns[4].Width := 60;

      Columns[5].Title.Caption := '挂号日期';
      Columns[5].Width := 100;

      Columns[6].Title.Caption := '科室名称';
      Columns[6].Width := 100;

      Columns[7].Title.Caption := '挂号类别';
      Columns[7].Width := 100;


    end;

  end //end of TASK
  else if aCode = 'MASTER_TASK' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('P_NAME').Visible := True;
      aDBGrid.Columns[0].FieldName := 'P_NAME';

      FieldByName('TASK_DATE').Visible := True;
      aDBGrid.Columns[1].FieldName := 'TASK_DATE';

     // FieldByName('TASK_ID').Visible := True;
      //aDBGrid.Columns[0].FieldName := 'TASK_ID';

    end;

    with aDBGrid do
    begin
      //Columns[0].Title.Caption := '体检号';
      //Columns[0].Width := 60;

      Columns[0].Title.Caption := '姓名';
      Columns[0].Width := 60;

      Columns[1].Title.Caption := '体检日期';
      Columns[1].Width := 100;


    end;

  end //end of MASTER_TASK
  else if aCode = 'DIAG_DEPT' then //科室小结
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('abNormal').Visible := True;
      aDBGrid.Columns[0].FieldName := 'abNormal';

      FieldByName('DEPT_NAME').Visible := True;
      aDBGrid.Columns[1].FieldName := 'DEPT_NAME';

      FieldByName('DEPT_DIAG').Visible := True;
      aDBGrid.Columns[2].FieldName := 'DEPT_DIAG';

      FieldByName('Physician').Visible := True;
      aDBGrid.Columns[3].FieldName := 'Physician';

      FieldByName('DIAG_DATE').Visible := True;
      aDBGrid.Columns[4].FieldName := 'DIAG_DATE';

      FieldByName('DIAG_TIME').Visible := True;
      aDBGrid.Columns[5].FieldName := 'DIAG_TIME';

    end;

    with aDBGrid do
    begin
      Columns[0].Title.Caption := '异常';
      Columns[0].Width := 40;

      Columns[1].Title.Caption := '科室';
      Columns[1].Width := 120;

      Columns[2].Title.Caption := '科室小结';
      Columns[2].Width := 260;

      Columns[3].Title.Caption := '医生';
      Columns[3].Width := 70;

      Columns[4].Title.Caption := '小结日期';
      Columns[4].Width := 90;

      Columns[5].Title.Caption := '小结时间';
      Columns[5].Width := 90;


    end;

  end // end of 科室小结 DIAF_DEPT
  else if aCode = 'DEPT_EXAM_DETAIL0' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    aDBGrid.Columns.Clear;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('DEPT_EXAM_NAME').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[0].FieldName := 'DEPT_EXAM_NAME';

      FieldByName('EXAM_VALUE').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[1].FieldName := 'EXAM_VALUE';

      FieldByName('UNIT').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[2].FieldName := 'UNIT';

      {FieldByName('Physician').Visible := True;
      aDBGrid.Columns[3].FieldName := 'Physician';

      FieldByName('DIAG_DATE').Visible := True;
      aDBGrid.Columns[4].FieldName := 'DIAG_DATE';

      FieldByName('DIAG_TIME').Visible := True;
      aDBGrid.Columns[5].FieldName := 'DIAG_TIME';
        }
    end;

    with aDBGrid do
    begin
      Columns[0].Title.Caption := '项目名称';
      Columns[0].Width := 220;

      Columns[1].Title.Caption := '结果';
      Columns[1].Width := 300;

      Columns[2].Title.Caption := '单位';
      Columns[2].Width := 100;
      {
      Columns[3].Title.Caption := '医生';
      Columns[3].Width := 70;

      Columns[4].Title.Caption := '小结日期';
      Columns[4].Width := 90;

      Columns[5].Title.Caption := '小结时间';
      Columns[5].Width := 90;
      }

    end;
  end else if aCode = 'DEPT_EXAM_DETAIL1' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    aDBGrid.Columns.Clear;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('DEPT_EXAM_NAME').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[0].FieldName := 'DEPT_EXAM_NAME';

      FieldByName('FINDING').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[1].FieldName := 'FINDING';

      FieldByName('UNIT').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[2].FieldName := 'UNIT';
      {
      FieldByName('Physician').Visible := True;
      aDBGrid.Columns[3].FieldName := 'Physician';

      FieldByName('DIAG_DATE').Visible := True;
      aDBGrid.Columns[4].FieldName := 'DIAG_DATE';

      FieldByName('DIAG_TIME').Visible := True;
      aDBGrid.Columns[5].FieldName := 'DIAG_TIME';
         }
    end;

    with aDBGrid do
    begin
      Columns[0].Title.Caption := '项目名称';
      Columns[0].Width := 220;

      Columns[1].Title.Caption := '结果';
      Columns[1].Width := 300;

      Columns[2].Title.Caption := '单位';
      Columns[2].Width := 100;
     {
      Columns[2].Title.Caption := '科室小结';
      Columns[2].Width := 260;

      Columns[3].Title.Caption := '医生';
      Columns[3].Width := 70;

      Columns[4].Title.Caption := '小结日期';
      Columns[4].Width := 90;

      Columns[5].Title.Caption := '小结时间';
      Columns[5].Width := 90;
      }

    end;
  end
  else if aCode = 'DEPT_EXAM_DETAIL2' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    aDBGrid.Columns.Clear;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('DEPT_EXAM_NAME').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[0].FieldName := 'DEPT_EXAM_NAME';

      FieldByName('LIS_VALUE').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[1].FieldName := 'LIS_VALUE';

      FieldByName('EXAM_NORMAL').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[2].FieldName := 'EXAM_NORMAL';

      FieldByName('UNIT').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[3].FieldName := 'UNIT';

      FieldByName('Limit_upper').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[4].FieldName := 'Limit_upper';

      FieldByName('Limit_lower').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[5].FieldName := 'Limit_lower';

    end;

    with aDBGrid do
    begin
      Columns[0].Title.Caption := '项目名称';
      Columns[0].Width := 220;

      Columns[1].Title.Caption := '结果';
      Columns[1].Width := 60;

      Columns[2].Title.Caption := '参考值';
      Columns[2].Width := 100;

      Columns[3].Title.Caption := '单位';
      Columns[3].Width := 70;

      Columns[4].Title.Caption := '参考上限';
      Columns[4].Width := 90;

      Columns[5].Title.Caption := '参考下限';
      Columns[5].Width := 90;


    end;
  end

  else if aCode = 'CLUB_EVENT' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('Serial_ID').Visible := True;
      aDBGrid.Columns[0].FieldName := 'Serial_ID';

      FieldByName('v_Date').Visible := True;
      aDBGrid.Columns[1].FieldName := 'v_Date';

      FieldByName('v_address').Visible := True;
      aDBGrid.Columns[2].FieldName := 'v_address';

      FieldByName('v_title').Visible := True;
      aDBGrid.Columns[3].FieldName := 'v_title';

      FieldByName('v_object').Visible := True;
      aDBGrid.Columns[4].FieldName := 'v_object';

      FieldByName('v_count').Visible := True;
      aDBGrid.Columns[5].FieldName := 'v_count';

      FieldByName('v_level').Visible := True;
      aDBGrid.Columns[6].FieldName := 'v_level';

      FieldByName('V_SUCCEED').Visible := True;
      aDBGrid.Columns[7].FieldName := 'V_SUCCEED';

      FieldByName('v_ClubUser').Visible := True;
      aDBGrid.Columns[8].FieldName := 'v_ClubUser';

      FieldByName('v_state').Visible := True;
      aDBGrid.Columns[9].FieldName := 'v_state';

    end;

    with aDBGrid do
    begin
      Columns[0].Title.Caption := 'ID';
      Columns[0].Width := 35;

      Columns[1].Title.Caption := '时间';
      Columns[1].Width := 100;

      Columns[2].Title.Caption := '地点';
      Columns[2].Width := 130;

      Columns[3].Title.Caption := '主题';
      Columns[3].Width := 140;

      Columns[4].Title.Caption := '对象';
      Columns[4].Width := 80;

      Columns[5].Title.Caption := '人数';
      Columns[5].Width := 60;

      Columns[6].Title.Caption := '重要度';
      Columns[6].Width := 70;

      Columns[7].Title.Caption := '成功度';
      Columns[7].Width := 80;

      Columns[8].Title.Caption := '组织者';
      Columns[8].Width := 90;

      Columns[9].Title.Caption := '状态';
      Columns[9].Width := 80;


    end;
  end // end fo CLUB_EVENT
  else if aCode = 'CLUB_VIP' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('Serial_ID').Visible := True;
      aDBGrid.Columns[0].FieldName := 'Serial_ID';

      FieldByName('VIP_Number').Visible := True;
      aDBGrid.Columns[1].FieldName := 'VIP_Number';

      FieldByName('VIP_NAME').Visible := True;
      aDBGrid.Columns[2].FieldName := 'VIP_NAME';

      FieldByName('VIP_GENDER').Visible := True;
      aDBGrid.Columns[3].FieldName := 'VIP_GENDER';

      FieldByName('VIP_AGE').Visible := True;
      aDBGrid.Columns[4].FieldName := 'VIP_AGE';

      FieldByName('VIP_CLASS').Visible := True;
      aDBGrid.Columns[5].FieldName := 'VIP_CLASS';

      FieldByName('JOIN_DATE').Visible := True;
      aDBGrid.Columns[6].FieldName := 'JOIN_DATE';

      FieldByName('VIP_COST').Visible := True;
      aDBGrid.Columns[7].FieldName := 'VIP_COST';

      FieldByName('VIP_POINTS').Visible := True;
      aDBGrid.Columns[8].FieldName := 'VIP_POINTS';

      FieldByName('VIP_BOD').Visible := True;
      aDBGrid.Columns[9].FieldName := 'VIP_BOD';

      FieldByName('VIP_EMAIL').Visible := True;
      aDBGrid.Columns[10].FieldName := 'VIP_EMAIL';

      FieldByName('VIP_MT').Visible := True;
      aDBGrid.Columns[11].FieldName := 'VIP_MT';
    end;
  end else if aCode = 'FOODS_LIST' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('FOODS_ID').Visible := True;

      aDBGrid.Columns[0].FieldName := 'FOODS_ID';

      FieldByName('F_NAME').Visible := True;

      aDBGrid.Columns[1].FieldName := 'F_NAME';

      FieldByName('F_CLASS').Visible := True;

      aDBGrid.Columns[2].FieldName := 'F_CLASS';

      FieldByName('F_MODEL').Visible := True;

      aDBGrid.Columns[3].FieldName := 'F_MODEL';

      FieldByName('F_PACKAGE_TYPE').Visible := True;

      aDBGrid.Columns[4].FieldName := 'F_PACKAGE_TYPE';

      FieldByName('F_source').Visible := True;

      aDBGrid.Columns[5].FieldName := 'F_source';

      FieldByName('F_PRICE').Visible := True;

      aDBGrid.Columns[6].FieldName := 'F_PRICE';

      FieldByName('F_Count').Visible := True;

      aDBGrid.Columns[7].FieldName := 'F_Count';

      FieldByName('F_LIMIT_UPPER').Visible := True;

      aDBGrid.Columns[8].FieldName := 'F_LIMIT_UPPER';

      FieldByName('F_LIMIT_LOWER').Visible := True;

      aDBGrid.Columns[9].FieldName := 'F_LIMIT_LOWER';

      FieldByName('F_NOTE').Visible := True;
      aDBGrid.Columns[10].FieldName := 'F_NOTE';
    end;

    with aDBGrid do
    begin
      Columns[0].Title.Caption := 'ID';
      Columns[0].Width := 35;

      Columns[1].Title.Caption := '名称';
      Columns[1].Width := 100;

      Columns[2].Title.Caption := '类型';
      Columns[2].Width := 100;

      Columns[3].Title.Caption := '规格';
      Columns[3].Width := 60;

      Columns[4].Title.Caption := '剂型';
      Columns[4].Width := 80;

      Columns[5].Title.Caption := '产地';
      Columns[5].Width := 100;

      Columns[6].Title.Caption := '价格';
      Columns[6].Width := 70;

      Columns[7].Title.Caption := '数量';
      Columns[7].Width := 80;

      Columns[8].Title.Caption := '库存上限';
      Columns[8].Width := 80;

      Columns[9].Title.Caption := '库存下限';
      Columns[9].Width := 80;

      Columns[10].Title.Caption := '备注';
      Columns[10].Width := 160;

    end;

  end //end of FOODS_LIST
  else if aCode = 'PRODUCER' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('Producer_id').Visible := True;
      aDBGrid.Columns[0].FieldName := 'Producer_id';

      FieldByName('Producer_name').Visible := True;
      aDBGrid.Columns[1].FieldName := 'Producer_name';

      FieldByName('Producer_address').Visible := True;
      aDBGrid.Columns[2].FieldName := 'Producer_address';

      FieldByName('Producer_contact').Visible := True;
      aDBGrid.Columns[3].FieldName := 'Producer_contact';

      FieldByName('Producer_phone').Visible := True;
      aDBGrid.Columns[4].FieldName := 'Producer_phone';

      FieldByName('Producer_fax').Visible := True;
      aDBGrid.Columns[5].FieldName := 'Producer_fax';

      FieldByName('Producer_email').Visible := True;
      aDBGrid.Columns[6].FieldName := 'Producer_email';

      FieldByName('Producer_note').Visible := True;
      aDBGrid.Columns[7].FieldName := 'Producer_note';

    end;
  end // end of producer
  else if acode = 'VIP_LOG' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('serial_ID').Visible := True;
      aDBGrid.Columns[0].FieldName := 'serial_ID';

      FieldByName('log_date_time').Visible := True;
      aDBGrid.Columns[1].FieldName := 'log_date_time';

      FieldByName('log_type').Visible := True;
      aDBGrid.Columns[2].FieldName := 'log_type';

      FieldByName('log_text').Visible := True;
      aDBGrid.Columns[3].FieldName := 'log_text';

      FieldByName('log_cost').Visible := True;
      aDBGrid.Columns[4].FieldName := 'log_cost';

      FieldByName('log_operator').Visible := True;
      aDBGrid.Columns[5].FieldName := 'log_operator';
    end;

  end //end of vip_log
  else if acode = 'FOODS_RECORD' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    with aDBGrid.DataSource.DataSet do
    begin

      FieldByName('record_id').Visible := True;
      aDBGrid.Columns[0].FieldName := 'record_id';

      FieldByName('r_date').Visible := True;
      aDBGrid.Columns[1].FieldName := 'r_date';

      FieldByName('F_NAME').Visible := True;
      aDBGrid.Columns[2].FieldName := 'F_NAME';

      FieldByName('R_type').Visible := True;
      aDBGrid.Columns[3].FieldName := 'R_type';

      FieldByName('F_price').Visible := True;
      aDBGrid.Columns[4].FieldName := 'F_price';

      FieldByName('R_DisCount').Visible := True;
      aDBGrid.Columns[5].FieldName := 'R_DisCount';

      FieldByName('R_Count').Visible := True;
      aDBGrid.Columns[6].FieldName := 'R_Count';

      FieldByName('R_Sales').Visible := True;
      aDBGrid.Columns[7].FieldName := 'R_Sales';

      FieldByName('R_note').Visible := True;
      aDBGrid.Columns[8].FieldName := 'R_note';

      FieldByName('R_Operator').Visible := True;
      aDBGrid.Columns[9].FieldName := 'R_Operator';
    end;

    with aDBGrid do
    begin
      Columns[0].Width := 40;
      Columns[1].Width := 100;
      Columns[2].Width := 140;
      Columns[3].Width := 50;
      Columns[4].Width := 80;
      Columns[5].Width := 60;
      Columns[6].Width := 60;
      Columns[7].Width := 100;
      Columns[8].Width := 160;
      Columns[9].Width := 100;
    end;
  end
  else if aCode = 'STAT_COMPANY' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    aDBGrid.Columns.Clear;

    with aDBGrid.DataSource.DataSet do
    begin
      FieldByName('公司名称').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[0].FieldName := '公司名称';

      FieldByName('体检人数').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[1].FieldName := '体检人数';

      FieldByName('体检费用').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[2].FieldName := '体检费用';

      FieldByName('人均消费').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[3].FieldName := '人均消费';

    end;

    with aDBGrid do
    begin
      Columns[0].Width := 240;
      Columns[1].Width := 120;
      Columns[2].Width := 120;
      Columns[3].Width := 120;
      Columns[1].Title.Alignment := taCenter;
      Columns[2].Title.Alignment := taCenter;
      Columns[3].Title.Alignment := taCenter;
      Columns[1].Alignment := taCenter;
      Columns[2].Alignment := taCenter;
      Columns[3].Alignment := taCenter;
    end;
  end
  else if aCode = 'STAT_PEOPLE' then
  begin
    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    aDBGrid.Columns.Clear;

    with aDBGrid.DataSource.DataSet do
    begin
      FieldByName('体检日期').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[0].FieldName := '体检日期';

      FieldByName('体检人数').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[1].FieldName := '体检人数';

      FieldByName('费用').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[2].FieldName := '费用';

    end;

    with aDBGrid do
    begin
      Columns[0].Width := 120;
      Columns[1].Width := 120;
      Columns[2].Width := 120;
      Columns[1].Title.Alignment := taCenter;
      Columns[2].Title.Alignment := taCenter;
      Columns[1].Alignment := taCenter;
      Columns[2].Alignment := taCenter;
    end;
  end

  else if acode = 'APT' then
  begin
     //显示申请单收费项目列表  hloh db

    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    aDBGrid.Columns.Clear;

    with aDBGrid.DataSource.DataSet do
    begin
      FieldByName('xmbm').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[0].FieldName := 'xmbm';

      FieldByName('xmmc').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[1].FieldName := 'xmmc';

      FieldByName('pym').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[2].FieldName := 'pym';


      FieldByName('dw').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[3].FieldName := 'dw';

      FieldByName('sfbz').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[4].FieldName := 'sfbz';


      FieldByName('xmnh').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[5].FieldName := 'xmnh';

    end;

    with aDBGrid do
    begin
      Columns[0].Width := 75;
      Columns[1].Width := 200;
      Columns[2].Width := 75;
      Columns[3].Width := 60;
      Columns[4].Width := 75;
      Columns[5].Width := 75;
      {Columns[1].Title.Alignment := taCenter;
      Columns[2].Title.Alignment := taCenter;
      Columns[3].Title.Alignment := taCenter;
      Columns[4].Title.Alignment := taCenter;
      Columns[1].Alignment := taCenter;
      Columns[2].Alignment := taCenter;
      Columns[3].Alignment := taCenter;
      Columns[4].Alignment := taCenter;
     }
      Columns[4].Alignment := taLeftJustify;

      Columns[0].Title.caption := '项目编码';
      Columns[1].Title.caption := '项目名称';
      Columns[2].Title.caption := '拼音码';
      Columns[3].Title.caption := '单位';
      Columns[4].Title.caption := '收费';
      Columns[5].Title.caption := '相关描述';
    end;

  end

  else if aCode = 'APTLIST' then
  begin

    for i := 0 to aDBGrid.DataSource.DataSet.FieldCount - 1 do
    begin
      aDBGrid.DataSource.DataSet.Fields[i].Visible := false;
    end;

    aDBGrid.Columns.Clear;

    with aDBGrid.DataSource.DataSet do
    begin
      FieldByName('Appoint_ID').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[0].FieldName := 'Appoint_ID';

      FieldByName('EXAM_STAT').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[1].FieldName := 'EXAM_STAT';

      FieldByName('flag_charge').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[2].FieldName := 'flag_charge';

      FieldByName('modality').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[3].FieldName := 'modality';


      FieldByName('costs').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[4].FieldName := 'costs';

      FieldByName('REQ_PHYSICIAN').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[5].FieldName := 'REQ_PHYSICIAN';


      FieldByName('REQ_DATE_TIME').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[6].FieldName := 'REQ_DATE_TIME';


      FieldByName('SCHEDULED_DATE').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[7].FieldName := 'SCHEDULED_DATE';


      FieldByName('PERFORMED_BY').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[8].FieldName := 'PERFORMED_BY';


      FieldByName('NOTICE').Visible := True;
      aDBGrid.Columns.Add;
      aDBGrid.Columns[9].FieldName := 'NOTICE';

    end;

    with aDBGrid do
    begin
      Columns[0].Width := 70;
      Columns[1].Width := 80;
      Columns[2].Width := 60;
      Columns[3].Width := 100;
      Columns[4].Width := 100;
      Columns[5].Width := 100;
      Columns[6].Width := 160;
      Columns[7].Width := 160;
      Columns[8].Width := 100;
      Columns[9].Width := 100;

      Columns[0].Alignment := taLeftJustify;
      Columns[1].Alignment := taLeftJustify;
      Columns[4].Alignment := taLeftJustify;

      Columns[0].Title.caption := '申请单号';
      Columns[1].Title.caption := '执行状态';
      Columns[2].Title.caption := '已收费';
      Columns[3].Title.caption := '检查类型';
      Columns[4].Title.caption := '计价金额';
      Columns[5].Title.caption := '开单医生';
      Columns[6].Title.caption := '申请时间';
      Columns[7].Title.caption := '预约时间';
      Columns[8].Title.caption := '执行科室费';
      Columns[9].Title.caption := '注意事项';
    end;
  end;


end;

//------------------------------------------------------------------------------
// Pro:    DEPT_View_Detail
// Desc:   显示科室列表
// Author: SJ
// Date:   2004.09
//------------------------------------------------------------------------------

procedure DEPT_View_Detail(aCOde: string; aDBGrid: TDBGrid);
begin
  if aCode = '2_DEPT' then
  begin
    with fADO.ADOQryView do
    begin
      Close;
      SQL.text := 'select * from DICT_HC_DEPT  ';
      Open;

      aDBGrid.DataSource := fADO.DSQryView;

      Set_GridView_Column('DEPT', aDBGrid);
    end;

  end
  else if aCOde = '2_WS' then
  begin
    with fADO.ADOQryView do
    begin
      Close;
      SQL.text := 'select * from DICT_HC_WORKSTATION  ';
      Open;

      aDBGrid.DataSource := fADO.DSQryView;

      Set_GridView_Column('WS', aDBGrid);

    end;
  end
  else if aCode = '2_DOCT' then
  begin
    with fADO.ADOQryView do
    begin
      Close;
      SQL.text := 'select * from DICT_USER  ';
      Open;

      aDBGrid.DataSource := fADO.DSQryView;

      Set_GridView_Column('DOCT', aDBGrid);
    end;
  end
  else if aCode = 'TASK' then
  begin

  end;


end;

function TADO.Get_New_DEPTID(aDeptType: string): string;
var
  tmpCount: integer;
begin
  Result := 'D' + Copy(TimeTOStr(Time), 1, 2);

  try
    with ADOQryTemp do
    begin
      close;
      SQL.Text := 'select count(*) as DCount from DICT_HC_DEPT where Dept_TYpe=' + aDeptType;
      Open;

      tmpCount := FieldByName('DCount').AsInteger + 1;

      if tmpCount <= 9 then
        Result := '0' + IntToStr(tmpCount)
      else
        Result := IntToStr(tmpCount);

      if aDepttype = '0' then
        Result := 'A' + Result
      else if aDepttype = '1' then
        Result := 'B' + Result
      else if aDepttype = '2' then
        Result := 'C' + Result;
    end;

  except
  end;

end;

//------------------------------------------------------------------------------
// Pro:    List_Dept_ChkListBox
// Desc:   显示科室列表 在用户新建时的选择框
//          aDept:科室类型限制
// Author: SJ
// Date:   2004.09
//------------------------------------------------------------------------------

procedure TADO.List_Dept_ChkListBox(aChkListBox: TCustomListBox; aDeptType: string);
var
  i: integer;
  tmpObj: PItemObj;
begin

  with ADOQryTemp do
  begin
    CLose;

    if aDeptType <> '' then
      SQL.Text := 'select Dept_Name,Dept_ID from DICT_HC_DEPT where DEPT_TYPE=' + aDeptType
    else
      SQL.Text := 'select Dept_Name,Dept_ID from DICT_HC_DEPT Order By DEPT_ID';
    Open;

    try
      aChkListBox.Items.BeginUpdate;
      aChkListBox.Items.Clear;

      for i := 0 to RecordCOunt - 1 do
      begin
        New(tmpObj);
        tmpObj.name := trim(FieldByName('Dept_name').AsString);
        tmpObj.Code := trim(FieldByName('Dept_ID').AsString);

        aChkListBox.Items.AddObject(tmpObj.name, TObject(tmpObj));

        Next;
      end;

    finally
      aChkListBox.Items.EndUpdate;
    end;
  end;
end;

procedure TADO.TreeView_List_DeptItem(aTreeView: TTreeView);
var
  i: integer;
  DeptNode, DeptItemNode: PViewNode;
  tmpNode: TTreeNode;

  procedure sub_List_DeptItem(aCode: string; aParentNode: TTreeNode);
  var
    j: integer;
  begin
    with ADOQryView do
    begin
      close;
      sql.text := 'select Dept_Exam_Code,Dept_Exam_name from HC_DEPT_ITEM where' +
        ' Dept_ID=''' + aCode + '''' +
        ' Order By EXAM_ORDER';
      open;

      for j := 0 to RecordCount - 1 do
      begin
        New(DeptItemNode);
        DeptItemNode.Level := 1;
        DeptItemNode.Lv_Name := trim(FieldByname('Dept_Exam_name').AsString);
        DeptItemNode.Lv_Code := trim(FieldByname('Dept_Exam_Code').AsString);

        aTreeVIew.Items.AddChildObject(aParentNode, DeptItemNode.Lv_Name, DeptItemNode);

        Next;
      end;

    end;
  end;

begin
  with ADOQryTemp do
  begin
    close;
    SQL.text := 'select Dept_Name,Dept_ID from DICT_HC_DEPT order By Dept_Order';
    Open;

    try
      aTreeView.Items.BeginUpdate;
      aTreeView.Items.Clear;
      for i := 0 to RecordCount - 1 do
      begin
        New(DeptNode);
        DeptNode.Level := 0;
        DeptNode.Lv_Name := trim(FieldByname('Dept_Name').AsString);
        DeptNode.Lv_Code := trim(FieldByname('Dept_ID').AsString);

        tmpNode := aTreeView.Items.AddObject(nil, DeptNode.Lv_Name, DeptNode);

        sub_List_DeptItem(DeptNode.Lv_Code, tmpNode);

        Next;
      end;

    finally
      aTreeView.Items.EndUpdate;
    end;
  end;
end;

function TADO.Get_NEw_DeptExamItem_Code(aDeptID: string): string;
var
  tmpCount: integer;
begin
  Result := '';

  with ADOQryTemp do
  begin
    close;
    sql.text := 'select Max(DEPT_EXAM_CODE) as aCount from HC_DEPT_ITEM where DEPT_ID=''' + aDeptID + '''';
    Open;

    tmpCount := StrToInt(Copy(FieldByName('aCount').AsString, 4, 2)) + 1;

    if tmpCount <= 9 then
      Result := '00' + IntToStr(tmpCount)
    else if (tmpCount <= 99) and (tmpCount >= 10) then
      Result := '0' + IntToStr(tmpCount)
    else
      Result := IntToStr(tmpCount);

    Result := aDeptID + Result;
  end;
end;

{procedure TADO.List_CLASSDATA_Basic(aComBox: TLabeledComboBox;
  aCode: string);

var
  i: integer;
  tmpObj: PItemObj;
begin
  with ADOQryTemp do
  begin
    close;
    sql.text := 'select Item_Data,Item_Code from DICT_ITEM_DETAIL where' +
      ' Class_Name=''' + aCode + '''' +
      ' Order By ITEM_INDEX';
    Open;

    aComBox.Items.Clear;
    for i := 0 to RecordCount - 1 do
    begin

      New(tmpObj);
      tmpObj.name := trim(FieldByName('Item_Data').AsString);
      tmpObj.Code := trim(FieldByName('Item_Code').AsString);

      aComBox.Items.AddObject(tmpObj.name, TObject(tmpObj));

      Next;

    end;

  end;
end;}

procedure TADO.ListView_Combox_Config(aListView: TlistView);
var
  i: integer;
  tmpItem: TListItem;
begin
  with ADOQryTemp do
  begin
    close;
    sql.text := 'select * from CNFG_COMBOXLIST';
    open;

    try
      aListView.Items.BeginUpdate;
      aListView.Items.Clear;
      for i := 0 to RecordCount - 1 do
      begin
        tmpItem := aListView.Items.Add;
        tmpItem.Caption := 'IntToStr'
      end;

    finally
    end;
  end;
end;

//------------------------------------------------------------------------------
// Pro:    TreeView_List_Item_Comp
// Desc:   将组合项目按照科室树形结构显示
// Author: SJ
// Date:   2004.09
//------------------------------------------------------------------------------

procedure TADO.TreeView_List_Item_Comp(aTreeView: TTreeView);
var
  i: integer;
  DeptNode, ItemCompNode: PViewNode;
  tmpNode: TTreeNode;

  procedure sub_List_DeptItem_Comp(aCode: string; aParentNode: TTreeNode);
  var
    j: integer;
  begin
    with ADOQryView do
    begin
      close;
      sql.text := 'select HC_COMP_EXAM_ID,HC_ITEM,CH_CODE from HC_DEPT_ITEM_COMP where' +
        ' Dept_ID=''' + aCode + '''' +
        ' Order By CH_CODE';
      open;

      for j := 0 to RecordCount - 1 do
      begin
        New(ItemCompNode);
        ItemCompNode.Level := 1;
        ItemCompNode.Lv_Name := trim(FieldByname('HC_ITEM').AsString);
        ItemCompNode.Lv_Code := trim(FieldByname('HC_COMP_EXAM_ID').AsString);

        aTreeVIew.Items.AddChildObject(aParentNode, ItemCompNode.Lv_Name, ItemCompNode);

        Next;
      end;

    end;
  end;

begin
  with ADOQryTemp do
  begin
    close;
    SQL.text := 'select Dept_Name,Dept_ID from DICT_HC_DEPT order By Dept_Order';
    Open;

    try
      aTreeView.Items.BeginUpdate;
      aTreeView.Items.Clear;
      for i := 0 to RecordCount - 1 do
      begin
        New(DeptNode);
        DeptNode.Level := 0;
        DeptNode.Lv_Name := trim(FieldByname('Dept_Name').AsString);
        DeptNode.Lv_Code := trim(FieldByname('Dept_ID').AsString);

        tmpNode := aTreeView.Items.AddObject(nil, DeptNode.Lv_Name, DeptNode);

        sub_List_DeptItem_Comp(DeptNode.Lv_Code, tmpNode);

        Next;
      end;

    finally
      aTreeView.Items.EndUpdate;
    end;
  end;

end;

procedure TADO.ListView_ItemComp(aListView: TListView; aDeptID, aCompID: string);
var
  i: integer;
  tmpItem: TListItem;
begin
  with ADOQryTemp do
  begin
    close;
    sql.text := 'select DEPT_EXAM_CODE,DEPT_EXAM_NAME,LIMIT_SEX' +
      ' from HC_DEPT_ITEM where DEPT_ID=''' + aDeptID + '''';
    open;

    try
      aListView.Items.BeginUpdate;
      aListView.Items.Clear;
      for i := 0 to RecordCount - 1 do
      begin
        tmpItem := aListView.Items.Add;
        tmpItem.Caption := trim(FieldByName('DEPT_EXAM_NAME').AsString);
        if FieldByName('LIMIT_SEX').AsInteger <= 0 then
          tmpItem.SubItems.Add('不限')
        else if FieldByName('LIMIT_SEX').AsInteger = 1 then
          tmpItem.SubItems.Add('男性')
        else if FieldByName('LIMIT_SEX').AsInteger = 2 then
          tmpItem.SubItems.Add('女性');
        tmpItem.SubItems.Add(trim(FieldByName('DEPT_EXAM_CODE').AsString));

        Next;
      end;
    finally
      aListView.Items.EndUpdate;
    end;
  end;

end;

function TADO.Get_New_DeptItemComp_Code(aDeptID: string): string;
var
  tmpCount: integer;
begin
  Result := '';

  with ADOQryTemp do
  begin
    close;
    sql.text := 'select Count(*) as aCount from HC_DEPT_ITEM_COMP where DEPT_ID=''' + aDeptID + '''';
    Open;

    tmpCount := FieldByName('aCount').AsInteger + 1;

    if tmpCount <= 9 then
      Result := '0' + IntToStr(tmpCount)
    else
      Result := IntToStr(tmpCount);

    Result := aDeptID + '-' + Result;
  end;

end;

//------------------------------------------------------------------------------
// Pro:    TreeView_List_ItemGrp
// Desc:   显示套餐，可以选择套餐的类型
//          普通、VIP、个性化
// Author: SJ
// Date:   2004.09
//------------------------------------------------------------------------------

procedure TADO.TreeView_List_ItemGrp(aTreeView: TTreeView; aClass: integer);
var
  i: integer;
  NewItemGrp: PViewNode;
begin
  with ADOQryTemp do
  begin
    Close;
    SQL.text := 'select * from HC_ITEM_GROUP ';
    if aClass >= 0 then
      SQl.text := sql.text + ' where HC_ITEMGRP_CLASS=' + IntToStr(aClass);
    Open;

    try
      aTreeView.Items.BeginUpdate;
      aTreeView.Items.Clear;
      for i := 0 to RecordCount - 1 do
      begin
        New(NewItemGrp);
        NewItemGrp.Level := 0;
        NewItemGrp.Lv_Name := trim(FieldByName('HC_ITEMGRP_NAME').AsString);
        NewItemGrp.Lv_Code := trim(FieldByName('HC_ITEMGRP_CODE').AsString);

        aTreeView.Items.AddObject(nil, NewItemGrp.Lv_Name, NewItemGrp);

        Next;
      end;

    finally
      aTreeView.Items.EndUpdate;
    end;
  end;
end;

function TADO.Get_NEw_ItemGroup_Code(aType: integer): string;
var
  tmpCount: integer;
begin
  Result := 'N' + Copy(TimeTOStr(Time), 1, 2);

  try
    with ADOQryTemp do
    begin
      close;
      SQL.Text := 'select count(*) as DCount from HC_ITEM_GROUP ' +
        ' where HC_ITEMGRP_CLASS=' + IntToStr(aType);
      Open;

      tmpCount := FieldByName('DCount').AsInteger + 1;

      if tmpCount <= 9 then
        Result := '0' + IntToStr(tmpCount)
      else
        Result := IntToStr(tmpCount);

      if aType = 0 then
        Result := 'N' + Result
      else if aType = 1 then
        Result := 'V' + Result
      else if aType = 2 then
        Result := 'P' + Result;
    end;

  except
  end;
end;

//------------------------------------------------------------------------------
// Pro:    ComBox_List_ComboxItem
// Desc:   从设置的数据库中读取下拉列表框下拉内容模板
//         table:cnfg_Comboxlist
// Author: SJ
// Date:   2004.09
//------------------------------------------------------------------------------

{procedure TADO.ComBox_List_ComboxItem(aForm: TFORM);
var
  i, k: integer;
  tmpComp: string;

procedure Add_ItemList_CombList(aComp: TLabeledComboBox; aCode: string);
  var
    j: integer;
  begin
    aComp.Items.Clear;
    with ADOQryView do
    begin
      close;
      sql.text := 'select * from DICT_ITEM_DETAIL where CLASS_NAME=''' + aCode + '''';
      open;

      for j := 0 to Recordcount - 1 do
      begin
        aComp.Items.Add(trim(FieldByName('ITEM_DATA').AsString));
        Next;
      end;
    end;

  end;

  procedure Add_ItemList_RadioGrp(aComp: TRadioGroup; aCode: string);
  var
    j: integer;
  begin
    aComp.Items.Clear;
    with ADOQryView do
    begin
      close;
      sql.text := 'select * from DICT_ITEM_DETAIL where CLASS_NAME=''' + aCode + '''';
      open;

      for j := 0 to Recordcount - 1 do
      begin
        aComp.Items.Add(trim(FieldByName('ITEM_DATA').AsString));
        Next;
      end;
    end;

  end;

begin
  with ADOQryTemp do
  begin
    close;
    sql.text := 'select * from Cnfg_Comboxlist where LApplication=''' + Application.Title + '''' +
      ' and LForm_Name=''' + aForm.Caption + '''';
    open;

    if RecordCount > 0 then
    begin

      for i := 0 to aForm.ComponentCount - 1 do
      begin
if (aForm.Components[i] is TLabeledComboBox) then
        begin
tmpComp := TLabeledComboBox(aForm.Components[i]).Name;
          first;
         for k := 0 RecordCount - 1 do
          while not EOF do
          begin
            if tmpComp = trim(FieldByName('LComp_Name').AsString) then
            begin
//delete by liu              TLabeledComboBox(aForm.Components[i]).EditLabel.Caption := trim(FieldByName('LComp_Caption').AsString);
//delete by liu              Add_ItemList_CombList(TLabeledComboBox(aForm.Components[i]), trim(FieldByName('LComp_List').AsString));
            end;
            Next;
          end;
        end
       else if (aForm.Components[i] is TRadioGroup) then
//delete by liu        begin
//delete by liu          tmpComp := TRadioGroup(aForm.Components[i]).Name;
          first;
          while not EOF do
          begin
            if tmpComp = trim(FieldByName('LComp_Name').AsString) then
            begin
              Add_ItemList_RadioGrp(TRadioGroup(aForm.Components[i]), trim(FieldByName('LComp_List').AsString));
              TRadioGroup(aForm.Components[i]).Caption := trim(FieldByName('LComp_Caption').AsString);
            end;
            Next;
          end;
        end;

      end;
    end;
  end;

end;  }

function TADO.SQL_Exec_NoTrans(aSQL: string): Boolean;
begin
  try
    with ADOQryExec do
    begin
      Close;
      SQL.text := aSQL;
      ExecSQL;
    end;
    Result := true;
  except
  end;
end;

function TADO.Get_Company_ID(var vID: string): Boolean;
begin
  try
    ADOStoredProc.ProcedureName := 'proc_Get_ID_Company';

    ADOStoredProc.ExecProc;

    vID := ADOStoredProc.Parameters.Items[1].Value;

  except
    on E: Exception do
    //执行存储过程得到单位ID失败
  end;


end;


function TADO.StoredProc_Get_EXAMDiag_Dept(sTask_ID: string): Boolean;
begin
  Result := false;

  tmpSQL := 'select a.TASK_ID,a.DEPT_ID,a.DEPT_DIAG,a.physician,a.Diag_Date,' +
    ' a.Diag_Time,b.Dept_Name,b.Dept_type,a.ABNORMAL' +
    ' 	from  HC_exam_diag_DEPT a, DICT_HC_DEPT b ' +
    '  	where a.dept_id=b.dept_id and a.task_id=''' + sTask_ID + '''' +
    '   order by TASK_ID, a.DEPT_ID';

  with ADOQryExam do
  begin
    close;
    sql.text := tmpsql;
    open;

    Result := recordcount >= 0;

  end;

 { try
    ADOStoredProc.Active := false;
    ADOStoredProc.ProcedureName := 'Get_HC_EXAM_DEPT_DIAG ';
    ADOStoredProc.Parameters.Clear;
    ADOStoredProc.Parameters.CreateParameter('@task_id', ftString, pdinput, 10, sTask_ID);
    //ADOStoredProc.Parameters.ParamByName('@Task_ID').Value := sTask_ID;
    ADOStoredProc.Active := true;

    Result := true;
  except
  end;
  }
end;

{procedure Set_LabelEditCombox_Space(aForm: TForm);
var
  i: integer;
begin
  try
    for i := 0 to aForm.ComponentCount - 1 do
    begin

      if (aForm.Components[i] is TLabeledComboBox) then
      begin
        if TLabeledComboBox(aForm.Components[i]).LabelPosition = lpLeft then
          TLabeledComboBox(aForm.Components[i]).LabelSpacing := 3;
      end else
        if (aForm.Components[i] is TLabeledMemo)
          then
        begin
          if TLabeledMemo(aForm.Components[i]).LabelPosition = lpLeft then
            TLabeledMemo(aForm.Components[i]).LabelSpacing := 3;
        end;
    end;
  except
    on E: Exception do
  end;
end;}

{procedure TADO.Get_Field_IntoComboxList(acbBox: TLabeledComboBox; aField,
  aTable: string);
var
  i: integer;
begin
   //从atable表中查到afield名称的内容，列举在下拉框acbbox中，例如得到单位列表

  tmpSQL := 'select ' + aField + ' from ' + aTable;

  with fado.ADOQryTemp do
  begin
    close;
    sql.Text := tmpsql;
    open;

    if recordcount > 0 then
    begin
      First;
      acbBox.Items.Clear;
      for i := 0 to recordcount - 1 do
      begin
        if acbBox.Items.IndexOf(trim(FieldByName(aField).AsString)) < 0 then
          acbBox.Items.Add(trim(FieldByName(aField).AsString));

        Next;
      end;
    end;
  end;
end;}

{procedure Clear_ALL_Edit(aForm: TForm);
var
  i: integer;
begin
  try
    for i := 0 to aForm.ComponentCount - 1 do
    begin
      if (aForm.Components[i] is TLabeledEdit) or
        (aForm.Components[i] is TLabeledCombobox) or
        (aForm.Components[i] is TLabeledMemo) then
      begin
        TLabeledEdit(aForm.Components[i]).Text := '';
        if TLabeledEdit(aForm.Components[i]).Hint <> '' then
          TLabeledEdit(aForm.Components[i]).Text := TLabeledEdit(aForm.Components[i]).Hint;

        TLabeledEdit(aForm.Components[i]).ImeName := '';

      end
      else if (aForm.Components[i] is TCheckBox) then
      begin
        TCheckBox(aForm.Components[i]).Checked := False;
      end;
    end;
  except

  end;

end;}

procedure Set_DBGridSelected_State(aALL: Boolean; aGrid: TDBGrid);
begin
  try
    if not aGrid.DataSource.DataSet.Active then Exit;
    aGrid.DataSource.DataSet.DisableControls;
    aGrid.DataSource.DataSet.First;
    while not aGrid.DataSource.DataSet.Eof do
    begin
      aGrid.SelectedRows.CurrentRowSelected := aALL;
      aGrid.DataSource.DataSet.Next;
    end;
  finally
    aGrid.DataSource.DataSet.EnableControls;
  end;
end;



function notChinese(const Ident: string): Boolean;
const
  Alpha = [chr(0)..chr(126)];
var I: Integer;
begin
  Result := False;
  if (Length(Ident) = 0) or not (Ident[1] in Alpha) then Exit;
  for I := 2 to Length(Ident) do if not (Ident[I] in Alpha) then Exit;
  Result := True;
end;

function TADO.Get_Field_ID(aField, aFieldID, aTable, aValue: string): string;
begin
  Result := '';

  tmpSQL := 'select ' + aFieldID + ' from ' + aTable +
    ' where ' + aField + '=''' + aValue + '''';

  with fado.ADOQryTemp do
  begin
    close;
    sql.Text := tmpsql;
    open;

    if recordcount > 0 then
      result := trim(FieldByName(aFieldID).AsString);
  end;
end;

procedure Manule_Draw_DBGirdCellColor(aDBGrid: TDBGrid);
begin

end;

function TADO.Get_ITEM_DETAIL(CodeOrData: Integer; aClass, aItemCode: string): string;
begin
  Result := '';

  if CodeOrData = 0 then
    tmpSQL := 'select  Item_Data  as dt_Item from DICT_ITEM_DETAIL where CLass_Name=''' + aClass + '''' +
      'and Item_Code=''' + aItemCode + ''''
  else
    if CodeOrData = 1 then
      tmpSQL := 'select  Item_Code as dt_Item from DICT_ITEM_DETAIL where CLass_Name=''' + aClass + '''' +
        'and  Item_Data=''' + aItemCode + '''';


  with ADOQryTemp do
  begin
    close;
    sql.Text := tmpsql;
    open;

    if recordcount > 0 then
      Result := trim(FieldByName('dt_Item').AsString);
  end;
end;

procedure SetAllForms_Font(aFont_Size: integer; aFont_Name: string; aFont_Color: integer);
var
  i: integer;
begin

  try
    for i := 0 to Screen.FormCount - 1 do
    begin
      if Screen.Forms[i].Name <> 'FrmLogin' then
      begin
        Screen.Forms[i].Font.Size := aFont_Size;
        Screen.Forms[i].Font.Name := aFont_Name;
        Screen.Forms[i].Font.Color := aFont_Color;
      end;
    end;

  except

  end;

end;


{ TClinican }


//------------------------------------------------------------------------------
// Pro:    Create_Patient_NodeList
// Desc:   树形节点显示病人列表
//          aDataset:数据源
//
// Author: SJ
// Date:   2005.07
//------------------------------------------------------------------------------

{procedure TClinican.Create_Patient_NodeList(aDataset: TDataSet);
var
  tmpNode, tmpRoot: TTreeNode;
  tmpPat_Node: PPAT_Node;
  i: integer;
  tmpNodeText: string;
begin

  frmMain.TreeViewPats.Items.BeginUpdate;
  frmMain.TreeViewPats.Items.Clear;
  try
    with aDataset do
    begin
      if RecordCount > 0 then
      begin
        First;

        for i := 0 to RecordCount - 1 do
        begin
          New(tmpPat_Node);
          tmpPat_Node.Out_Patient_ID := trim(fieldbyname('mzh').AsString);
          tmpPat_Node.Patient_ID := trim(fieldbyname('ICNumber').AsString);
          tmpPat_Node.Patient_Name := trim(fieldbyname('Name').AsString);
          tmpPat_Node.Patient_Age := trim(fieldbyname('Birth').AsString);
          tmpPat_Node.Patient_Sex := trim(fieldbyname('Sex').AsString);

          { 2005.07.15  暂不修改需要的his表结构
          if fieldbyname('ifzx').AsBoolean then
            tmpNodeText := tmpPat_Node.Out_Patient_ID + '  ' + tmpPat_Node.Patient_Name + '   ☆ '
          else
            tmpNodeText := tmpPat_Node.Out_Patient_ID + '  ' + tmpPat_Node.Patient_Name;

          tmpNodeText := tmpPat_Node.Out_Patient_ID + '  ' + tmpPat_Node.Patient_Name;

          tmpNode := frmMain.TreeViewPats.Items.AddchildObject(nil, tmpNodeText, tmpPat_Node);

        //添加病人的属性列表
          Add_Child_PAT_ItemName(frmMain.TreeViewPats, tmpNode);

          Next;
        end;
      end;
    end;

  finally

    frmMain.TreeViewPats.Items.EndUpdate;
    if frmMain.TreeViewPats.Items.Count > 0 then
      frmMain.TreeViewPats.TopItem.Expand(false);
  end;

end;}


//------------------------------------------------------------------------------
// Pro:    Get_ALL_PATS
// Desc:   列举当前科室所有的病人
//         intRange :病人范围，【0－未检查，1－已检查】
//         intDays ：默认当天记录，可以设置
// Author: SJ
// Date:   2005.07
//------------------------------------------------------------------------------

procedure TClinican.Get_ALL_PATS(intRange: integer; intDays: integer = 0);
var
  tmpInfo: string;
begin
  tmpSQL := '';

 //没有时间默认查询当天的未检查人员
  tmpsql := 'select a.* from deppatientinfo a where KSMC=''' + Dept_Name + '''' +
    ' and  Ghrq>= ''' + DateToStr(date - intDays) + ' 00:00:00''';
    //
    //---' and ifzx=' + IntToStr(intRange);

  try
    with fADO.ADOQryTemp do
    begin
      Close;
      SQL.text := tmpSQL;
      Open;

    //创建病人树形列表
//      frmMain.GrpBoxPats.Caption := fClinican.Dept_Name + '的挂号病人  ' + IntToStr(RecordCount);
//      Create_Patient_NodeList(fADO.ADOQryTemp);
    end;
  except
  end;

end;

procedure TClinican.Get_Clinical_info;
begin

end;

procedure TClinican.Get_PAT_Basic_info;
begin

end;

function TClinican.Get_PAT_Images(strPAT_ID, strV_ID: string): integer;
begin

end;

procedure Add_Child_PAT_ItemName(tmpTree: TTreeView; tmpPat: TTreeNode);
var
  tmpNode: TTreeNode;
  tmpChildNode: PPat_Child;
  i: integer;

  COMP_CLASS: array of string;
begin

  try
    SetLength(COMP_CLASS, 4);

    COMP_CLASS[0] := '病历';
    COMP_CLASS[1] := '处方';
    COMP_CLASS[2] := '检查单';
    COMP_CLASS[3] := '检验单';


  //增加病历属性项目列表
    for i := 0 to 3 do
    begin
      New(tmpChildNode);
      tmpChildNode.ItemName := COMP_CLASS[i];
      tmpChildNode.ItemID := i;
      tmpChildNode.ListChild_ListView := False;
      tmpChildNode.ListChild_TreeView := False;
      tmpNode := TmpTree.Items.AddChildObject(tmpPat, tmpChildNode.ItemName, tmpChildNode);
      tmpNode.ImageIndex := i + 1;
      tmpNode.SelectedIndex := 5;
    end;

  except
  end;

end;

end.

