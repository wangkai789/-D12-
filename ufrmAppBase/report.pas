unit report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FR_DSet, FR_DBSet, FR_Class;

type
  TFm_reprot1 = class(TForm)
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_reprot1: TFm_reprot1;

implementation

{$R *.dfm}

end.
