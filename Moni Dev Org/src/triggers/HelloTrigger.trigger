/*
this is the trigger for order object
*/
trigger HelloTrigger on Order (before update, before insert) {
    Hello hl=new Hello();
    hl.printH();
}