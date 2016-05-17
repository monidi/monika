trigger OpportunityBeforeTrigger on Opportunity (before insert,before update, before delete) {
    System.debug('=========================start============================');
    if(Trigger.isInsert){
        System.debug('===================insert============');
    }
    if(Trigger.isUpdate){
        System.debug('===================update============');
    }
    if(Trigger.isDelete){
        System.debug('===================delete============');
    }
    System.debug('============================isInsert:'+Trigger.isInsert);
    System.debug('============================isUpdate:'+Trigger.isUpdate);
    System.debug('============================isDelete:'+Trigger.isDelete);
    System.debug('============================isBefore:'+Trigger.isBefore);
    System.debug('============================isAfter:'+Trigger.isAfter);
    System.debug('============================Trigger.new:'+Trigger.new);
    System.debug('============================newMap:'+Trigger.newMap);
    System.debug('============================old:'+Trigger.old);
    System.debug('============================oldmap:'+Trigger.oldMap);
    System.debug('============================size:'+Trigger.new.size());
    /*if(Trigger.isUpdate){
        for(Opportunity o: Trigger.new){
            Opportunity oldop=Trigger.oldMap.get(o.id);
            System.debug('=======================opportunity:'+o);
            if(o.Type != oldop.Type && o.Type == 'New Customer'){
                o.Start_Date__c=System.today();
            }
            
        }*/
        if(Trigger.isInsert){
            for(Opportunity o: Trigger.new){
                System.debug('=======================opportunity:'+o);
                if(o.Type == 'New Customer'){
                    o.Start_Date__c=System.today();
                }
            
            }
        }
    
    
    System.debug('========================end=====================');
}