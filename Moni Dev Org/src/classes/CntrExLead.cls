public class CntrExLead {
    public Lead le{get; set;}
    public CntrExLead(ApexPages.StandardController controller) {
        le=(Lead) controller.getRecord();
        if(le.Id!= null){
            le= [Select Id, LastName, Status, Company from Lead where Id=: le.Id LIMIT 1];
        }
    }
    public PageReference save(){
        upsert le;
        PageReference pr= new PageReference('/'+le.Id);
        return pr;
    }

}