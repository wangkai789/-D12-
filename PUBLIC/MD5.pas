unit MD5;

interface

uses
  SysUtils, Forms, Classes, IdHashMessageDigest, IdGlobal;

function MD5Str(pSrc: string):string; stdcall;
function MD5File(pFileName: string):string;

implementation

function MD5Str(pSrc: string):string;
var
  MyMD5: TIdHashMessageDigest5;
begin
   MyMD5 := TIdHashMessageDigest5.Create;
  //解析出来的MD5是大写，数据库中是小写，转换为小写比较
  Result := LowerCase(MyMD5.HashStringAsHex(pSrc));
  MyMD5.Free;
end;

function MD5File(pFileName: string):string;
var
  MyMD5: TIdHashMessageDigest5;
  fs:TFileStream;
begin
  MyMD5 := TIdHashMessageDigest5.Create;
  fs:= TFileStream.Create(pFileName,fmOpenRead);
  Result := MyMD5.HashStreamAsHex(fs);
  fs.Free;
  MyMD5.Free;
end;

end.
