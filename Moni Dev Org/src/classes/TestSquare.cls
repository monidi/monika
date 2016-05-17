/**
*this class is to print square root of given number
**/
public class TestSquare{
    public integer a=5;
    public integer c;
    List<Account> lsa=[select Name, AccountNumber from Account];
       
    public integer Square(){
        //multiply number with the same number
        
        for(Account a:lsa){
            
            if(a.SLA__c=='Platinum'){
            a.SLA__c='Silver';
            }
            update a;
        //System.debug('+++++++++ square+++==');   
    }
    return a;
}
}