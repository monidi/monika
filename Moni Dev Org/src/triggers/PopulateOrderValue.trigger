trigger PopulateOrderValue on Contact (before update, before insert) { 
     
    for(Contact aa : trigger.new) { 
        aa.SSN_TOTAL__c= aa.SSN1__c;
    }
    
}