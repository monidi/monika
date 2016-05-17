//governer limits example
trigger GovLimitsTrigger on Order (before insert, before update,after update) {
    System.debug('===================trigger start============');
    //List<Contact> lct=[select Name from Contact];
    //for(integer i = 0; i<99; i++){
    //    System.debug('=======*************========test before and after=========*******=:'+lct);
    //}
    //for(;;){
    //for(integer i=0;i<=100;i++){
    /*for(integer i=0;i<100;i++){
        List<Contact> lct=[select Name from Contact];
        System.debug('============Contacts============'+lct);
    }*/
    for(integer i=0;i<19;i++){
        List<List<Contact>> lct=[Find 'acc1' IN ALL fields returning Contact, Lead, Account];
        System.debug('============Contacts============'+lct);
    }
    
    System.debug('===================trigger end============');
}