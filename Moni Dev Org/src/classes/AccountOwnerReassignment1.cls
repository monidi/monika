global class AccountOwnerReassignment1 implements 
             Database.Batchable<SObject>, Database.Stateful{
               
               //testing jenkins
    
    User fromUser{get; set;}
    User toUser{get; set;}
    Double failedUpdates{get; set;}
 
    global AccountOwnerReassignment1(User fromUser, User toUser){
        this.fromUser = fromUser;
        this.toUser = toUser;
        failedUpdates = 0;
    }
    
    global Database.queryLocator 
                    start(Database.BatchableContext ctx){
        return Database.getQueryLocator([SELECT id, name, ownerId 
                        FROM Account WHERE ownerId = :fromUser.id]);
    }
    
    global void execute(Database.BatchableContext ctx, List<Sobject>
                        scope){
        List<Account> accs = (List<Account>)scope;
        
        for(Integer i = 0; i < accs.size(); i++){
            accs[i].ownerId = toUser.id;
        }
        
        List<Database.SaveResult> dsrs = Database.update(accs, false);
        for(Database.SaveResult dsr : dsrs){
            if(!dsr.isSuccess()){
                failedUpdates++;
            }
            
        } 
    }
    
    global void finish(Database.BatchableContext ctx){
    
        AsyncApexJob a = [SELECT id, ApexClassId, 
                       JobItemsProcessed, TotalJobItems, 
                       NumberOfErrors, CreatedBy.Email 
                       FROM AsyncApexJob 
                       WHERE id = :ctx.getJobId()];
        
        String emailMessage = 'Your batch job '
             + 'AccountOwnerReassignment '
             + 'has finished.  It executed ' 
             + a.totalJobItems 
             + ' batches.  Of which, ' + a.jobitemsprocessed 
             + ' processed without any exceptions thrown and ' 
             + a.numberOfErrors +
             ' batches threw unhandled exceptions.'
             + '  Of the batches that executed without error, ' 
             + failedUpdates 
             + ' records were not updated successfully.';
        
        Messaging.SingleEmailMessage mail = 
              new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {a.createdBy.email};
        mail.setToAddresses(toAddresses);
        mail.setReplyTo('noreply@salesforce.com');
        mail.setSenderDisplayName('Batch Job Summary');
        mail.setSubject('Batch job completed');
        mail.setPlainTextBody(emailMessage);
        mail.setHtmlBody(emailMessage);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] 
                           { mail });
    }

   
}

/* dev console to excecute
User u= [SELECT Id, Name FROM User WHERE id='005o0000000JXg1'];
User u2=[SELECT Id, Name FROM User WHERE id='005o0000000JRpB'];
AccountOwnerReassignment1 b=new AccountOwnerReassignment1(u,u2);
database.executeBatch(b,10); */
