trigger MergeFields on TestObject__c (before update, before insert, after insert, after update) {
    //List<Account> acc = [SELECT Name, Type FROM Account];
   
        for(TestObject__c to1:trigger.new){
            to1.Merge_Field__c=to1.X2nd_field__c+to1.X1st_field__c;
            
        }
        
    }