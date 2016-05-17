//soql example on accounts
public class AccountSoql{
    public void testAcSoql(){
        //Sring=[select Id from Account LIMIT1]
        List<Account> lsa=[select Name, AccountNumber from Account];
        System.debug('==================Account============='+lsa);
        for(Account a:lsa){
            System.debug('===========account==========='+a.Name);
            System.debug('===========account==========='+a.AccountNumber);
            if(a.SLA__c=='Platinum'){
            a.SLA__c='Silver';
            }
        }
        
    }
}