@AbapCatalog.sqlViewName: 'YBAKKEYF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
@Metadata.ignorePropagatedAnnotations: true
define view ZBank_KEY_F4 as select from I_Bank_2
{
    key BankCountry,
    key BankInternalID as BankKey,
    BankName,
    Region,
    StreetName,
    ShortStreetName,
    CityName,
    ShortCityName,
    SWIFTCode,
    BankNetworkGrouping,
    IsPostBankAccount,
    IsMarkedForDeletion,
    Bank,
    PostOfficeBankAccount,
    Branch,
    BankBranch,
    CheckDigitCalculationMethod,
    BankDataFileFormat,
    AddressID,
    BankCategory
} 
group by 
    BankCountry,
    BankInternalID,
    BankName,
    Region,
    StreetName,
    ShortStreetName,
    CityName,
    ShortCityName,
    SWIFTCode,
    BankNetworkGrouping,
    IsPostBankAccount,
    IsMarkedForDeletion,
    Bank,
    PostOfficeBankAccount,
    Branch,
    BankBranch,
    CheckDigitCalculationMethod,
    BankDataFileFormat,
    AddressID,
    BankCategory
