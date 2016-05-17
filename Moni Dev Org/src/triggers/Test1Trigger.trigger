/*
this is the test1trigger
*/
trigger Test1Trigger on Contact (before update,before insert) {
    //passing values to the constructor
    Test ts=new Test(7,5);
    ts.sys();
}