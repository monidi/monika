//this is LoopApex trigger on contacts
trigger LoopApexTrigger on Contact (before insert,before update,before delete) {
    LoopApex la=new LoopApex(3,4);
    la.printDef();
    
}