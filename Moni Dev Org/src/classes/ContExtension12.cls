public class ContExtension12 {
         public Account acnt{get; set;}

    public ContExtension12(ApexPages.StandardController controller) {
         acnt=(Account) controller.getRecord();
        if(acnt.Id!= null){
            acnt= [Select Id, Name, AccountNumber, Type from Account where Id=: acnt.Id LIMIT 1];
    }

}
}




/*public class ContExtension {
    public Account acnt{get; set;}
    public ContExtension(ApexPages.StandardController controller) {
        acnt=(Account) controller.getRecord();
        if(acnt.Id!= null){
            acnt= [Select Id, Name, AccountNumber, Type from Account where Id=: acnt.Id LIMIT 1];
        }
    }
    public PageReference save(){
        upsert acnt;
        PageReference pr= new PageReference('/'+acnt.Id);
        return pr;
    }

}*/