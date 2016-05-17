public with sharing class VFController {
public Bart__c o{get; set;}
    public VFController(ApexPages.StandardController controller) {
  this.o = (Bart__c)controller.getRecord();
    }
    
    public PageReference autoRun() {
        System.debug('Entry : autoRun()');
 
        String theId = ApexPages.currentPage().getParameters().get('id');
 
        
        System.debug('theId : ' + theId);
        
        if (theId == null) {
             //Display the Visualforce page's content if no Id is passed over
            return null;
        }
 
        Bart__c ba12=new Bart__c();
        Bart__c ba123=new Bart__c();
        for (Bart__c c:[select id, name , Bart_Staffing__c , Reference_ID__c , Reference_System__c from Bart__c where id =:theId]) {
            if(c.Bart_Staffing__c!=null){
                      
                          
                 Bart__c b=[select Id, Name , Reference_ID__c, Reference_System__c from Bart__c where Id = :c.Bart_Staffing__c] ;
                System.debug('Testing Lookup'+b.Id); 
                ba12.Id = c.Id;
                ba123.Id = b.Id;
                 ba123.Reference_ID__c= c.Reference_ID__c;
                        ba123.Reference_System__c=c.Reference_System__c;
                ba12.Reference_ID__c= b.Reference_ID__c;
                        ba12.Reference_System__c=b.Reference_System__c;                       
                
            } 
            else{
            	ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.ERROR,'Bart Staffing is empty');
            ApexPages.addMessage(msg);
            
           
            }                       
            }
            update ba12;
            update ba123;
        // Redirect the user back to the original page
        PageReference pageRef = new PageReference('/' + theId);
        pageRef.setRedirect(true);
        return pageRef;
        
       
    }
 
}