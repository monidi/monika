public class AssignExtension {
    
    public Account acnt{get; set;}
    public AssignExtension(ApexPages.StandardController controller) {
        acnt= (Account) controller.getRecord();
        if(acnt.Id!= null){
            acnt= [Select Id, Name, AccountNumber, Type from Account where Id=: acnt.Id LIMIT 1];
        }
    }
    public PageReference save(){
        upsert acnt;
        PageReference pr= new PageReference('/'+acnt.Id);
        return pr;
    }
    Integer count = 0;
                        
    public PageReference incrementCounter() {
            count++;
            return null;
    }
    public Integer getCount() {
        return count;
    }
    public PageReference met1(){
        
        PageReference pr= new PageReference('/apex/contr_exten_assgn');
        return pr;
    }
     public PageReference met2(){
        
        return null;
    }


}