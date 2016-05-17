public class myControllerExtension {
private final  CusObj1__c acct1;
public List<CusObj1__c> acct {get;set;}
    public myControllerExtension(ApexPages.StandardController stdController) {
//acct = [SELECT Name, (SELECT Name FROM ChildCusObjects__r) FROM CusObj1__c];
this.acct1 = (CusObj1__c)stdController.getRecord();
acct= [SELECT Name, (SELECT Name, text_area__c FROM ChildCusObjects__r) FROM CusObj1__c where id=:acct1.id];

    }
      
   // public List<CusObj1__c> acct {get;set;}
    /*public sample1()
    {
        
    }   */ 


}