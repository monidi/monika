//this is the Sf trigger on account

trigger SFTrigger on Account (before update, before insert, after insert, after update) {
    //List<Account> acc = [SELECT Name, Type FROM Account];
   
        for(Account acc1:trigger.new){
            acc1.Type='Prospect';
            
           // if(acc1.SLA__c=='Platinum'){
            //acc1.SLA__c='Silver';
            
            //}
            
        }
        
    }
       
        

/*trigger SFTrigger on Account (before insert, before update) {
    SF sf=new SF();
        sf.printSF();       
}*/