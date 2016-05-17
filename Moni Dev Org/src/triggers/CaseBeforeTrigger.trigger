trigger CaseBeforeTrigger on Case (before insert,before update) {
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
    
    if(Trigger.isUpdate){
        for(Case c: Trigger.new){
            Case oldC=Trigger.oldMap.get(c.id);
            System.debug('=======================Case:'+c);
            if(c.Status != oldC.Status && oldC.Status == 'New' && c.Status== 'Working'){
                c.Start_Date__c=System.today();
            }
            
        }
    }
    
    System.debug('========================end=====================');
}