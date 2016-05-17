//sosl trigger on lead
trigger  TestSoslTrigger on Lead (before insert, before update) {
    TestSosl ts=new TestSosl();
    ts.printSosl();
}