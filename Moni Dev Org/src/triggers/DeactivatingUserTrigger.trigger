trigger DeactivatingUserTrigger on Deactivate__c (after insert) {
    
    for(Deactivate__c dectObj :Trigger.new)
    {
      if(dectObj.Email_Address__c != null && dectObj.Email_Address__c != '' )
      {
         DeactivatingAUser.InactivatingTheUser(dectObj.Email_Address__c);
    
      }
    }
    }