unit UGirdPara;

interface

USES Classes, SysUtils, Contnrs, DB, ADODB, Dialogs, Graphics, StrUtils,
     cxClasses, cxGraphics, cxGridCustomTableView, cxGridDBTableView, cxGridCustomView,
     cxCustomData, cxGridDBDataDefinitions , DBGrids;

type

  TFieldPara = class
  public
    V1: Integer;    //    宽度
    V2: Integer;    //    只读
    V3: Integer;    //    排序
    V4: Integer;    //    过滤
    V5: Integer;    //    合计
    V6: Integer;    //    自定义颜色
    Name1: String;  //    字段名
    Name2: String;  //    备注名
    VAL1: String;    //   格式
  end;


  TGetDateEvent = procedure(col:TcxGridDBColumn;val:string) of object;

  TGRIDPARA = class
  private
    { Private declarations }
    FOnGetData: TGetDateEvent;    {为我们刚刚定义的 TMyEvent 类型指定一个变量: FOnHundred}
    FRW:Integer;     //读写权限
    path: string;
    function GetPara(FileName:string):Integer;
  protected
    { protected declarations }

    procedure MyCustomDrawCell1(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure MyCustomDrawCell2(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure MyCustomDrawCell3(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  public
    { Public declarations }
    FieldCount:Integer;

    FieldParas:TObjectList;

    constructor Create; //override;
    destructor Destroy; override;
    function CreateCols(FileName:string; gdv:TcxGridDBTableView):Integer; overload;
    function CreateCols(FileName:string; gdv:TDBGrid):Integer;overload;

    property OnGetData: TGetDateEvent read FOnGetData write FOnGetData;
    property RW: Integer read FRW write FRW;
  //published
    { published declarations here }

  end;

  //-------------------
  procedure cxGridViewAddCols(FileName:string;RW:integer;gdv:TcxGridDBTableView; GDTE:TGetDateEvent);
  procedure GridAddCols(FileName:string; gdv:TDBGrid);
  
implementation

uses inifiles, UPUBLIC;

var
  fColor:TMemIniFile;
  slColor:TstringList;

procedure cxGridViewAddCols(FileName:string;RW:integer;gdv: TcxGridDBTableView; GDTE:TGetDateEvent);
var
  fp:TGridPara;
begin
  fp:=TGridPara.Create();   //
  fp.RW:=RW;
  fp.OnGetData:=GDTE;
  fp.CreateCols(FileName,gdv);
  fp.Free;
end;

procedure GridAddCols(FileName:string;gdv: TDBGrid);
var
  fp:TGridPara;
begin
  fp:=TGridPara.Create();   //
  fp.CreateCols(FileName,gdv);
  fp.Free;
end;

{ TEXCELPARA }

constructor TGRIDPARA.Create();
begin
  //
  FRW:=0;
  path := GetXmlPath;
  FieldParas := TObjectList.Create;
end;

function TGRIDPARA.CreateCols(FileName:string;gdv: TcxGridDBTableView): Integer;
var
  i:Integer;
  FieldPara:TFieldPara;
  col:TcxGridDBColumn;

  footsumitem:TcxGridDBTableSummaryItem;    //动态合计行变量
begin
  Result := GetPara(FileName);
  if Result<0 then exit;

  gdv.ClearItems;
  for i:=0 to FieldCount do
  begin
    FieldPara := TFieldPara(FieldParas[i]);
    if FieldPara.Name2='' then continue;
    col:=gdv.CreateColumn;
    //col.Name:=gdv.Name + inttostr(i);
    col.Caption :=  FieldPara.Name2;
    col.HeaderAlignmentHorz :=  taCenter;
    col.HeaderAlignmentVert :=  vaCenter;
    col.HeaderGlyphAlignmentHorz := taCenter;
    col.HeaderGlyphAlignmentVert := vaCenter;
    col.FooterAlignmentHorz := taCenter;
    col.Options.Sorting := FieldPara.V3<>0;
    col.Options.Filtering := FieldPara.V4<>0;
    col.Options.Editing := FieldPara.V2=FRW;

    if FieldPara.V1>0 then  col.Width := FieldPara.V1;
    if (FieldPara.V5>0) and ((FieldPara.V5<6)) then
    begin
       footsumitem:=(gdv.DataController.Summary.FooterSummaryItems.Add) as TcxGridDBTableSummaryItem ;
       with footsumitem do
       begin
         Column:=col;
         Kind := TcxSummaryKind(FieldPara.V5);//skCount;
         Position := spfooter;
         Format := FieldPara.VAL1;
       end;
    end;

    try
      //showmessage(col.DataBinding.ClassName);
      col.DataBinding.FieldName:= FieldPara.Name1;
      case FieldPara.V6 of
      11: col.OnCustomDrawCell := MyCustomDrawCell1;
      12: col.OnCustomDrawCell := MyCustomDrawCell2;
      13: col.OnCustomDrawCell := MyCustomDrawCell3;
      14: if assigned(FOnGetData) then
         begin
           FOnGetData(col,FieldPara.VAL1);
         end;
      end;
    except

    end;
  end;
  Result := FieldCount;
end;

function TGRIDPARA.CreateCols(FileName: string; gdv: TDBGrid): Integer;
var
  i:Integer;
  FieldPara:TFieldPara;
  col:TColumn;
begin
  Result := GetPara(FileName);
  if Result<0 then exit;

  gdv.Columns.Clear;
  for i:=0 to FieldCount do
  begin
    FieldPara := TFieldPara(FieldParas[i]);
    if FieldPara.Name2='' then continue;
    col:=gdv.Columns.Add;
    //col.Name:=gdv.Name + inttostr(i);
    col.Title.Caption :=  FieldPara.Name2;
    if FieldPara.V1>0 then  col.Width := FieldPara.V1;
    col.ReadOnly := FieldPara.V2>0;
    
    try
      //showmessage(col.DataBinding.ClassName);
      col.FieldName:= FieldPara.Name1;
      //if FieldPara.V6>10 then col.OnCustomDrawCell := MyCustomDrawCell;
    except

    end;
  end;
  Result := FieldCount;
end;

destructor TGRIDPARA.Destroy;
begin
  //
  FreeAndNil(FieldParas);

  inherited;
end;

function TGRIDPARA.GetPara(FileName:string):Integer;
var
  Field:TFieldPara;
  qry1: TADOQuery;
begin
  Result:=-1;
  
  qry1 := TADOQuery.Create(nil);
  try
    qry1.LoadFromFile( path + FileName);
    qry1.First;
  except
    FreeAndNil(qry1);
    Exit;
  end;

  FieldParas.Clear;
  with qry1 do
  begin
    First;
    Next;
    while not Eof do
    begin
      Field:=TFieldPara.Create;
      Field.V1 := FieldByName('V1').asInteger;
      Field.V2 := FieldByName('V2').asInteger;
      Field.V3 := FieldByName('V3').asInteger;
      Field.V4 := FieldByName('V4').asInteger;
      Field.V5 := FieldByName('V5').asInteger;
      Field.V6 := FieldByName('V6').asInteger;
      Field.Name1 := Trim(FieldByName('FIELDNAME1').asString);
      Field.Name2 := Trim(FieldByName('FIELDNAME2').asString);
      Field.VAL1 := Trim(FieldByName('MEMO').asString);
      FieldParas.Add(Field);

      Next;
    end;
  end;

  qry1.Close;
  FreeAndNil(qry1);

  FieldCount := FieldParas.Count - 1;
  Result := FieldCount;
end;

procedure TGRIDPARA.MyCustomDrawCell1(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if StrToIntDef(AViewInfo.Text,-1)>0 then
  begin
    //ACanvas.Brush.Color := clRed;
    ACanvas.Canvas.Font.Color:=clRed;
  end;
end;

procedure TGRIDPARA.MyCustomDrawCell2(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
//const
//{$j+}
//  OldHub:string = '';
//  iColor:Integer = 0;
//{$j-}
//  MyColor : array[0..2] of TColor =(clTeal, clYellow, clSilver);
begin
  //if AViewInfo.RecordViewInfo.GridRecord.Values[5] = '88' then
  if (AViewInfo.Text<>'') then
  begin
//    if AViewInfo.Text<>OldHub then
//    begin
//      OldHub:= AViewInfo.Text;
//      iColor:=(iColor+1) mod 3;
//    end;

//    ACanvas.Brush.Color := MyColor[iColor];
//    ACanvas.Brush.Color := clRed;
    ACanvas.Canvas.Font.Color:=clRed;
  end;
end;


procedure TGRIDPARA.MyCustomDrawCell3(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  aFieldName:String;
  i,j:Integer;
  str,str1:string;
begin
  //if AViewInfo.RecordViewInfo.GridRecord.Values[5] = '88' then
  if (fColor <> nil) and (AViewInfo.Text<>'') then
  begin
    aFieldName:=TcxGridItemDBDataBinding(AViewInfo.Item.DataBinding).FieldName;
    fColor.ReadSectionValues(aFieldName,slColor);

    for i := 0 to slColor.Count-1 do
    begin
      str:= slColor[i];
      j:=pos('=',str);
      str1 := copy(str,1,j-1);
      if pos(str1,AViewInfo.Text)>0 then
      begin
        //ACanvas.Canvas.Font.Color:=TColor(fColor.ReadInteger(aFieldName,str1,0));
        str1 := copy(str,j+1,length(str)-j);
        ACanvas.Canvas.Font.Color:=TColor(strtointdef(str1,0));
        break;
      end;
    end;
  end;
end;


initialization
  {单元初始化代码}
  if FileExists(GetXmlPath + 'COLORDEF.INI') then
    fColor:=TMemIniFile.Create(GetXmlPath + 'COLORDEF.INI')//, TEncoding.UTF8
  else
    fColor:=nil;

  slColor:=TstringList.Create;

finalization
  {单元退出时的代码}
  slColor.clear;
  slColor.Free;

  fColor.Free;

end.
