//this trigger is on products
trigger MulTabForTrigger on Product2 (before insert, before update) {
    MulTabFor mtf=new MulTabFor();
    mtf.mulFor(5);
}