//this is testStatic trigger
trigger TestStaticTrigger on Account (before insert, before update) {
    TestStatic ts=new TestStatic();
    TestStatic.printStatic();    
}