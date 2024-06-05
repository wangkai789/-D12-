unit seldate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons;

type
  Tfm_seldate = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    dtp_from: TDateTimePicker;
    dtp_to: TDateTimePicker;
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_seldate: Tfm_seldate;

implementation

{$R *.dfm}

procedure Tfm_seldate.btn1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tfm_seldate.btn2Click(Sender: TObject);
begin
  Close ;
end;

procedure Tfm_seldate.FormShow(Sender: TObject);
begin
   dtp_from.date:=date() ;
   dtp_to.date:=date() ;
end;

end.
