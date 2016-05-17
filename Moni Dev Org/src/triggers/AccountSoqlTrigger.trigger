//this is soql trigger
trigger AccountSoqlTrigger on Contact (before update) {
    AccountSoql a1=new AccountSoql();
    a1.testAcSoql();
}