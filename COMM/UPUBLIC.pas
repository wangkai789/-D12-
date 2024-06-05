unit UPUBLIC;


interface

USES  classes, SysUtils, forms;


function GetCurPath:string;
function GetXmlPath:string;

type
  TUser=class
  private
    roles:string;

  public
    LOGINFLAG:integer;
    id:integer;
    name:string;
    company:string;
    Permissions:string;

    constructor Create;
    destructor Destroy; override;
    procedure Init;
    function iscw:Integer;    //财务
    function iscg:Integer;    //采购
    function isxs:Integer;    //销售
    function issc:Integer;    //生产
    function iszj:Integer;    //质检
  end;

var
  CurrUser:TUser;

implementation

function GetCurPath:string;
begin
  result := ExtractFilePath(Application.Exename);
end;

function GetXmlPath:string;
begin
  result := GetCurPath + 'XML\';
end;


{ TUser }

constructor TUser.Create;
begin
  //inherited;
  LOGINFLAG:=1;
  Init;
end;

destructor TUser.Destroy;
begin

  //inherited;
end;

procedure TUser.Init;
begin
  id:=0;
  name:='';
  company:='';
  roles:='';
  Permissions:='';
end;


function TUser.iscw: Integer;
begin
  result := 0;

  if (pos(',10',CurrUser.roles)>0) or (pos(',11',CurrUser.roles)>0) then
  begin
    result:=10;
  end;
end;

function TUser.iscg: Integer;
begin
  result := 0;
  if (pos(',15',CurrUser.roles)>0) or (pos(',16',CurrUser.roles)>0) then
  begin
    result:=15;
  end;
end;

function TUser.isxs: Integer;
begin
  result := 0;
  if (pos(',20',CurrUser.roles)>0) or (pos(',21',CurrUser.roles)>0) then
  begin
    result:=20;
  end;
end;

function TUser.issc: Integer;
begin
  result := 0;

  if (pos(',30',CurrUser.roles)>0) then
  begin
    result:=30;
    Exit;
  end;

  if (pos(',31',CurrUser.roles)>0) then
  begin
    result:=31;
  end;
end;

function TUser.iszj: Integer;
begin
  result := 0;

  if (pos(',98',CurrUser.roles)>0) then
  begin
    result:=98;
    Exit;
  end;

  if (pos(',99',CurrUser.roles)>0) then
  begin
    result:=99;
  end;
end;

initialization
CurrUser:=Tuser.Create;

finalization
CurrUser.Free;

end.
