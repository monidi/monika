//this is nvoid triggeron case object
trigger NVoidTrigger on Case (before insert,before update) {
    NVoid nv=new NVoid();
    integer result=nv.meth(6,7);
    System.debug('-------result----'+result);
}