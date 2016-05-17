//this trigger is for exception testing
trigger TestException1Trigger on Campaign (before insert, before update) {
    TestException1 te1=new TestException1();
    te1.printEx();
}