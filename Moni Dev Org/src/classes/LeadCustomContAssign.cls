public class LeadCustomContAssign {
    public Lead le {get; set;}
        public LeadCustomContAssign(){
           le=new Lead();
            //if(le.Id!=null){
               // le=[Select Id, LastName, Status, Company from Lead where Id=: le.Id LIMIT 1];
            //}
        }

        public PageReference save() {
            
            update le;
            PageReference pr=new PageReference('/'+le.Id);
            return pr;
        } 
    
}