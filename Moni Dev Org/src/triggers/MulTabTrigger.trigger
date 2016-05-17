trigger MulTabTrigger on Case (before insert, before update) {
    MulTab mt=new MulTab();
    mt.printMul(5);
}