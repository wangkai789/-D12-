unit DataModel;

interface

type

TMedbank_PriceAdjustMaster = class
private
 FRowid:integer;
 FAdjustDate:tdatetime;
 Fopid:integer;
public
  constructor Create; virtual;
published
  property Rowid: integer        index 0 read FRowid      write FRowid ;
  property AdjustDate: tdatetime index 1 read FAdjustDate write FAdjustDate ;
  property opid: integer         index 2 read Fopid       write Fopid ;
end;


TMedbank_PriceAdjustDetail = class
private
  FRowid:integer;
  FMaster_rowid:integer;
  Fypbh:string;
  FPurchasePrice:currency;
  FPurchasePriceAdjust:currency;
  FInpatientSalesPrice:currency;
  FInpatientSalesPriceAdjust:currency;
  FOutPatientSalesPrice:currency;
  FOutPatientSalesPriceAdjust:currency;
  FEffectiveDate:tdatetime;
  FAdjustReason:string;
  FMedbankStore:currency;
  FInpatientSotre:currency;
public
  constructor Create; virtual;
published
  property Rowid:                      integer  index 0 read FRowid        write FRowid ;
  property Master_rowid:               integer  index 1 read FMaster_rowid write FMaster_rowid ;
  property ypbh:                      string   index 2 read Fypbh         write Fypbh ;
  property FPurchasePrice:             currency index 3 read FPurchasePrice                write FPurchasePrice ;
  property FPurchasePriceAdjust:       currency index 4 read FPurchasePriceAdjust          write FPurchasePriceAdjust ;
  property FInpatientSalesPrice:       currency index 5 read FInpatientSalesPrice          write FInpatientSalesPrice ;
  property FInpatientSalesPriceAdjust: currency index 6 read FInpatientSalesPriceAdjust    write FInpatientSalesPriceAdjust ;
  property FOutPatientSalesPrice:      currency index 7 read FOutPatientSalesPrice         write FOutPatientSalesPrice ;
  property FOutPatientSalesPriceAdjust:currency index 8 read FOutPatientSalesPriceAdjust   write FOutPatientSalesPriceAdjust ;
  property FMedbankStore:              currency index 9 read FMedbankStore                 write FMedbankStore ;
  property FInpatientSotre:            currency index 10 read FInpatientSotre              write FInpatientSotre ;

end;




implementation

{ TMedbank_PriceAdjustDetail }

constructor TMedbank_PriceAdjustDetail.Create;
begin

end;

end.
