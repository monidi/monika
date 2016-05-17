//this trigger is testSoqlTrigger
trigger TestSoqlTrigger on Lead (before insert, before update) {
    TestSoql ts=new TestSoql();
    ts.printSoql();
    //ts.addLead();
}