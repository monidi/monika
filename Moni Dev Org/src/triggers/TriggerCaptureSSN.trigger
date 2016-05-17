trigger TriggerCaptureSSN on Contact (before insert) {

    
    /*for (Job_Application__c ja : trigger.new){
        ja.Test__c = ja.Cover_Letter__c;
    }*/
    for (Contact ja : trigger.new){
    
    ja.ssn_total_encrip__c=ja.ssn_encrip__c+ja.ssn_encrip1__c;
   
}
    
    
    
    
}