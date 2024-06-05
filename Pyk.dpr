program Pyk;



uses
  Forms,
  About in 'public\About.pas' {FmAbout},
  ChangePassWord in 'public\ChangePassWord.pas' {FmChangePassword},
  czydl in 'public\czydl.pas' {fm_czydl},
  data in 'public\data.pas' {dm: TDataModule},
  Factory in 'public\Factory.pas',
  kccx in 'cx\kccx.pas' {Fm_kccx},
  ypcx in 'cx\ypcx.pas' {Fm_ypcx},
  sccjwh in 'wh\sccjwh.pas' {fm_sccjwh},
  fkcl in 'fkcl\fkcl.pas' {fm_fkcl},
  ghdwkccx in 'cx\ghdwkccx.pas' {fm_ghdwkccx},
  sccjkccx in 'cx\sccjkccx.pas' {fm_sccjkccx},
  aqldcx in 'cx\aqldcx.pas' {fm_aqldcx},
  sxypcx in 'cx\sxypcx\sxypcx.pas' {fm_sxypcx},
  splansh in 'public\splansh.pas' {Fm_splansh},
  ykpd in 'pdgl\ykpd.pas' {fm_ykpd},
  jyfcx in 'cx\jyfcx.pas' {Fm_jyfcx},
  reportform in 'report\reportform.pas' {Fm_report},
  power in 'PUBLIC\power.pas' {Fm_power},
  sqlist in 'PUBLIC\sqlist.pas' {Fm_Sqlist},
  ypdwwh in 'WH\ypdwwh.pas' {Fm_ypdwwh},
  depqlyp in 'qld\depqlyp.pas' {Fm_depqlyp},
  ypxg in 'CX\ypxg.pas' {Fm_ypchange},
  zpckgl in 'KSLY\zpckgl.pas' {fm_zpckgl},
  ck in 'KSLY\ck.pas' {fm_ck},
  ypjc in 'PDGL\ypjc.pas' {Fm_ypjc},
  testbalance in 'PDGL\testbalance.pas' {fm_testbalance},
  qxwh in 'PUBLIC\qxwh.pas' {frm_wh},
  qlyp in 'qld\qlyp.pas' {Fm_qlyp},
  ypgd in 'checkbank\ypgd.pas' {Fm_yppd},
  ParamSet in 'PUBLIC\ParamSet.pas' {Frm_ParamSet},
  buyPlan in 'plan\buyPlan.pas',
  frameMedbank in 'plan\frameMedbank.pas' {Frame_Medbank: TFrame},
  ClassFactory in 'PUBLIC\ClassFactory.pas' {Fm_ClassFactory},
  Medmodify in 'ufrmAppBase\Medmodify.pas' {Fm_Medmodify},
  ypadd in 'ufrmAppBase\ypadd.pas' {Fm_ypadd},
  rkdcd in 'ufrmAppBase\rkdcd.pas' {fm_rkdcd},
  yprk in 'ufrmAppBase\yprk.pas' {Fm_yprk},
  main in 'ufrmAppBase\main.pas' {Fm_main},
  bmly in 'ufrmAppBase\bmly.pas' {Fm_bmly},
  qldcd in 'ufrmAppBase\qldcd.pas' {fm_qldcd},
  rkdzf in 'ufrmAppBase\rkdzf.pas' {fm_rkdzf},
  qld_del in 'WH\qld_del.pas' {fm_qld_del},
  UGirdPara in 'COMM\UGirdPara.pas',
  UPUBLIC in 'COMM\UPUBLIC.pas',
  BaseFrame in 'Frame\BaseFrame.pas' {Frame_base: TFrame},
  ChangeStore in 'Frame\ChangeStore.pas' {Frame_ChangeStore: TFrame},
  InterfaceMedStore in 'Unit\InterfaceMedStore.pas',
  IntegratedQuery in 'Unit\IntegratedQuery.pas' {Frm_IntegratedQuery},
  InStore in 'Frame\InStore.pas' {Frame_InStore: TFrame},
  OutStore in 'Frame\OutStore.pas' {Frame_OutStore: TFrame},
  PurchaseSaleStock in 'Frame\PurchaseSaleStock.pas' {Frame_PurchaseSaleStock: TFrame},
  BalancesStore in 'Frame\BalancesStore.pas' {Frame_BalancesStore: TFrame},
  ProfitStore in 'Frame\ProfitStore.pas' {Frame_ProfitStore: TFrame},
  PriceChangeStore in 'Frame\PriceChangeStore.pas' {Frame_PriceChangeStore: TFrame},
  InStoreTotal in 'Frame\InStoreTotal.pas' {Frame_InStoreTotal: TFrame},
  PriceAdjustment in 'Unit\PriceAdjustment.pas' {Frm_PriceAdjustment},
  StoreTransfer in 'qld\StoreTransfer.pas' {Fm_StoreTransfer},
  InStoreNew in 'Frame\InStoreNew.pas' {Frame_InStoreNew: TFrame},
  OtherOutStore in 'Frame\OtherOutStore.pas' {Frame_OtherOutStore: TFrame},
  MedStoreSale in 'Frame\MedStoreSale.pas' {Frame_MedStoreSale: TFrame},
  Balance in 'Frame\Balance.pas' {Frame_Balance: TFrame},
  ReturnStore in 'Frame\ReturnStore.pas' {Frame_ReturnStore: TFrame},
  OccupyStore in 'Frame\OccupyStore.pas' {Frame_OccupyStore: TFrame},
  BoilMed in 'Frame\BoilMed.pas' {Frame_BoilMed: TFrame},
  ExamRecord in 'Frame\ExamRecord.pas' {Frame_ExamRecord: TFrame},
  MD5 in 'PUBLIC\MD5.pas',
  RecipeDetail in 'MedstoreUnit\RecipeDetail.pas' {FmRecipeDetail},
  medReturn in 'MedstoreUnit\medReturn.pas' {fm_medReturn},
  SendMedUnit in 'MedstoreUnit\SendMedUnit.pas' {Frm_SendMed},
  SendMedRePrintUnit in 'MedstoreUnit\SendMedRePrintUnit.pas' {Frm_SendMedRePrint},
  medReturncheck in 'MedstoreUnit\medReturncheck.pas' {fm_medReturncheck},
  seldate in 'MedstoreUnit\seldate.pas' {fm_seldate},
  CheckSchemeUnit in 'MedstoreUnit\CheckSchemeUnit.pas' {Frm_CheckScheme},
  CheckUnit in 'MedstoreUnit\CheckUnit.pas' {Frm_check},
  SendMedRipUnit in 'MedstoreUnit\SendMedRipUnit.pas' {Frm_SendMedRip},
  MedPlaceUnit in 'Unit\MedPlaceUnit.pas' {Frm_MedPlace},
  pyproc in 'PUBLIC\pyproc.pas',
  MedInStoreUnit in 'ufrmAppBase\MedInStoreUnit.pas' {FrmMedInStore};

{$R *.RES}

begin
  Application.Initialize;
  Fm_splansh:=TFm_splansh.create(application);
  Fm_splansh.Show;
  Fm_splansh.Update ;
  Fm_splansh.ProgressBar1.StepBy(20);
  Application.Title := '“©ø‚œµÕ≥';
  Application.CreateForm(TFm_main, Fm_main);
  Application.CreateForm(Tfm_czydl, fm_czydl);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfm_ykpd, fm_ykpd);
  Application.CreateForm(TFm_report, Fm_report);
  Application.CreateForm(TFm_power, Fm_power);
  Application.CreateForm(TFm_Sqlist, Fm_Sqlist);
  Application.CreateForm(TFm_ClassFactory, Fm_ClassFactory);
  Application.CreateForm(TFm_ypdwwh, Fm_ypdwwh);
  Application.CreateForm(TFm_depqlyp, Fm_depqlyp);
  Application.CreateForm(Tfm_sccjwh, fm_sccjwh);
  Application.CreateForm(Tfm_zpckgl, fm_zpckgl);
  Application.CreateForm(Tfm_ck, fm_ck);
  Application.CreateForm(TFm_qlyp, Fm_qlyp);
  Application.CreateForm(TFm_yppd, Fm_yppd);
  Application.CreateForm(TFm_Medmodify, Fm_Medmodify);
  Application.CreateForm(TFm_ypadd, Fm_ypadd);
  Application.CreateForm(Tfm_rkdcd, fm_rkdcd);
  Application.CreateForm(TFm_bmly, Fm_bmly);
  Application.CreateForm(Tfm_rkdzf, fm_rkdzf);
  Application.CreateForm(TFmRecipeDetail, FmRecipeDetail);
  Application.CreateForm(Tfm_medReturn, fm_medReturn);
  Application.CreateForm(Tfm_seldate, fm_seldate);
  Application.CreateForm(TFrm_CheckScheme, Frm_CheckScheme);
  Application.CreateForm(TFrm_MedPlace, Frm_MedPlace);
  Application.CreateForm(TFm_yprk, Fm_yprk);
  Fm_splansh.ProgressBar1.StepBy(20);
  Application.CreateForm(TFm_bmly, Fm_bmly);
  //Application.CreateForm(TF_tjtj_print, F_tjtj_print);
  //Application.CreateForm(TFm_splansh, Fm_splansh);
  Fm_splansh.Hide;
  Fm_splansh.FREE;
  Application.Run;
end.
