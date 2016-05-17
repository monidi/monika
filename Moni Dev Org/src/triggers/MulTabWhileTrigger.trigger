//this is Multable trigger
trigger MulTabWhileTrigger on Lead (before insert,before update) {
    MulTabWhile mt=new MulTabWhile();
    mt.printMulWhile(5);
}