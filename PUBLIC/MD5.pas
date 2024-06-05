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
  //����������MD5�Ǵ�д�����ݿ�����Сд��ת��ΪСд�Ƚ�
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
