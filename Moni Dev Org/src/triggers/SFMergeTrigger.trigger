trigger SFMergeTrigger on TestObject__c (before insert, before update, after insert, after update) {
    //List<Account> acc = [SELECT Name, Type FROM Account];
   if(trigger.isInsert){
        if(trigger.isBefore){
        for(TestObject__c to1:trigger.new){
        
            to1.Merge_Field__c=1;
            
            
            
            
        }
        }
        }
        }