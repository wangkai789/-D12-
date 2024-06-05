unit CheckSchemeUnit;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TFrm_CheckScheme = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    rg_MedClass: TRadioGroup;
    CB_zero: TCheckBox;
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CheckScheme: TFrm_CheckScheme;

implementation

{$R *.dfm}

procedure TFrm_CheckScheme.CancelBtnClick(Sender: TObject);
begin
 self.Close;
end;

end.
