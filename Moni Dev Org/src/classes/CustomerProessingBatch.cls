//Batch Job for Processing the Records
global class CustomerProessingBatch implements Database.Batchable<sobject>{
  global String [] email = new String[] {'moni.di3031@gmail.com'};//Add here your email address here
  
  //Start Method
  global Database.Querylocator start (Database.BatchableContext BC) {
    return Database.getQueryLocator('Select id, Name, sister__c, Desc__c From Account WHERE Test29Chcekbox__c = true');//Query which will be determine the scope of Records fetching the same
  }

  //Execute method
  global void execute (Database.BatchableContext BC, List<sobject> scope) {
    List<Account> customerList = new List<Account>();
    List<Account> updtaedCustomerList = new List<Account>();//List to hold updated customer
    for (sObject objScope: scope) { 
        Account newObjScope = (Account)objScope ;//type casting from generic sOject to APEX_Customer__c
        newObjScope.Desc__c = 'Updated Via Batch Job';
        newObjScope.sister__c = 'Processed';
        updtaedCustomerList.add(newObjScope);//Add records to the List
        System.debug('Value of UpdatedCustomerList '+updtaedCustomerList);
    } 
        if (updtaedCustomerList != null && updtaedCustomerList.size()>0) {//Check if List is empty or not
            Database.update(updtaedCustomerList); System.debug('List Size '+updtaedCustomerList.size());//Update the Records
        }
  }

  //Finish Method
  global void finish(Database.BatchableContext BC){
  Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

  //Below code will fetch the job Id
  AsyncApexJob a = [Select a.TotalJobItems, a.Status, a.NumberOfErrors, a.JobType, a.JobItemsProcessed, a.ExtendedStatus, a.CreatedById, a.CompletedDate From AsyncApexJob a WHERE id = :BC.getJobId()];//get the job Id
  System.debug('$$$ Jobid is'+BC.getJobId());

  //below code will send an email to User about the status
  mail.setToAddresses(email);
  mail.setReplyTo('moni.di3031@gmail.com');//Add here your email address
  mail.setSenderDisplayName('Apex Batch Processing Module');
  mail.setSubject('Batch Processing '+a.Status);
  mail.setPlainTextBody('The Batch Apex job processed  '+a.TotalJobItems+'batches with  '+a.NumberOfErrors+'failures'+'Job Item processed are'+a.JobItemsProcessed);
  Messaging.sendEmail(new Messaging.Singleemailmessage [] {mail});
  }
}
/* dev console to execute
CustomerProessingBatch objClass = new CustomerProessingBatch();
Database.executeBatch (objClass, 10);
*/