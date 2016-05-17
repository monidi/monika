public class TestBatchLead{

    public String getLeadCustomContAssign() {
        return null;
    }


   
    public Lead le {get; set;}
        public static void LeadCustomContAssign(){
        List<Lead> leadlist=new List<Lead>();
           Lead le=new Lead();
           for(integer i=0;i<60000; i++){
           
            le.LastName='Test lead';
            le.Company='test com';
            le.Status='Working - Contacted';
            leadlist.add(le);
            }
            insert leadlist;
            //if(le.Id!=null){
               // le=[Select Id, LastName, Status, Company from Lead where Id=: le.Id LIMIT 1];
            //}
        }

    
    }