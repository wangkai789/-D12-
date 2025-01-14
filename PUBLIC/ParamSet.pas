unit ParamSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrm_ParamSet = class(TForm)
    GroupBox1: TGroupBox;
    sbtnApplyDB: TSpeedButton;
    sbtnCloseDB: TSpeedButton;
    GroupBox2: TGroupBox;
    btnFontSet: TSpeedButton;
    Label4: TLabel;
    ListBox1: TListBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edt_AdditionRateMed: TEdit;
    edt_AdditionRateCMed: TEdit;
    Label9: TLabel;
    edt_storeType: TEdit;
    cbb_yf: TComboBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    edt_safekeep: TEdit;
    edt_purchase: TEdit;
    edt_accountant: TEdit;
    Label40: TLabel;
    CmbBx_lb: TComboBox;
    chk_SalesPriceFlag: TCheckBox;
    Label6: TLabel;
    cbb_AddRate: TComboBox;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cbb_OutPatSendPrint: TComboBox;
    cbb_InPatRipPrint: TComboBox;
    cbb_InPatSendkind: TComboBox;
    cbb_OutPatRipPrint: TComboBox;
    cbb_InPatSendPrint: TComboBox;
    procedure sbtnCloseDBClick(Sender: TObject);
    procedure sbtnApplyDBClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ParamSet: TFrm_ParamSet;

implementation

uses data;

{$R *.dfm}

procedure TFrm_ParamSet.sbtnCloseDBClick(Sender: TObject);
begin
 Self.Close;
end;

procedure TFrm_ParamSet.sbtnApplyDBClick(Sender: TObject);
begin
  dm.sysinfo.storeA:=trim(edt_storeType.Text);
  dm.sysinfo.yfbm:=dm.GetComboxValue(cbb_yf,':',true);
  dm.sysinfo.yfmc:=dm.GetComboxValue(cbb_yf,':',false);
  dm.sysinfo.safekeep:=trim(edt_safekeep.Text);
  dm.sysinfo.purchase:=trim(edt_purchase.Text);
  dm.sysinfo.accountant:= trim(edt_accountant.Text);
  dm.sysinfo.AdditionRateMed:=trim(edt_AdditionRateMed.Text);
  dm.sysinfo.AdditionRateCMed:=trim(edt_AdditionRateCMed.Text);
  dm.sysinfo.medlb :=dm.GetComboxValue(CmbBx_lb,':',true);
  dm.sysinfo.SalesPriceFlag:=chk_SalesPriceFlag.Checked;
  dm.sysinfo.DefRateMed:=trim(cbb_AddRate.text);
  dm.sysinfo.OutPatRipPrint:=strtoint(dm.GetComboxValue(cbb_OutPatRipPrint,':',true));
  dm.sysinfo.OutPatSendPrint:=strtoint(dm.GetComboxValue(cbb_OutPatSendPrint,':',true));
  dm.sysinfo.InPatRipPrint:=strtoint(dm.GetComboxValue(cbb_InPatRipPrint,':',true));
  dm.sysinfo.InPatSendPrint:=strtoint(dm.GetComboxValue(cbb_InPatSendPrint,':',true));
  dm.sysinfo.InPatSendkind:=strtoint(dm.GetComboxValue(cbb_InPatSendKind,':',true));
  DM.Save_SystemData();
  application.MessageBox('保存参数成功！','信息',32);
end;

procedure TFrm_ParamSet.FormShow(Sender: TObject);
var asqlstr:string;
begin

   asqlstr:='select ksbm,ksmc from jgxx where Ifzy=1 and lbd=5 and ksbm not in (500)';
   dm.SetCmbxValue(cbb_yf,asqlstr,2);
   DM.Inital_SystemData();
   cbb_yf.ItemIndex :=dm.GetComboxindex(cbb_yf,dm.sysinfo.yfmc);
   edt_storeType.Text:=dm.sysinfo.storeA;
   edt_safekeep.Text:=dm.sysinfo.safekeep;
   edt_purchase.Text:=dm.sysinfo.purchase;
   edt_accountant.Text:=dm.sysinfo.accountant;
   edt_AdditionRateMed.Text:=dm.sysinfo.AdditionRateMed;
   edt_AdditionRateCMed.Text:=dm.sysinfo.AdditionRateCMed;
   //入库零售价修改0不能修改 1 修改
   chk_SalesPriceFlag.Checked:=dm.sysinfo.SalesPriceFlag;
   //加成率
   DM.SetAdditionRateValue(cbb_AddRate);
   //默认加成率
   cbb_AddRate.ItemIndex :=dm.GetComboxIndex(cbb_AddRate,dm.sysinfo.DefRateMed);
   //药房参数2024.05.06
   cbb_OutPatRipPrint.ItemIndex:=dm.sysinfo.OutPatRipPrint;
   cbb_OutPatSendPrint.ItemIndex:=dm.sysinfo.OutPatSendPrint;
   cbb_InPatRipPrint.ItemIndex:=dm.sysinfo.InPatRipPrint;
   cbb_InPatSendPrint.ItemIndex:=dm.sysinfo.InPatSendPrint;
   cbb_InPatSendKind.ItemIndex:=dm.sysinfo.InPatSendkind-1;
   case strtoint(dm.sysinfo.medlb) of
   1:CmbBx_lb.ItemIndex:=0;
   2:CmbBx_lb.ItemIndex:=1;
   3:CmbBx_lb.ItemIndex:=2;
   end;

end;

end.
