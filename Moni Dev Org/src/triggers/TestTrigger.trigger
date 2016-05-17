//to test constructor with parametrs
trigger TestTrigger on Campaign (before delete,before insert) {
    Test ts=new Test(7,5);
    ts.sys();
}