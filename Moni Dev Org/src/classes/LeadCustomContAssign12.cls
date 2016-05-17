public class LeadCustomContAssign12 {

    Public string Display_This_String{get;set;}
    Public void actionFunMethod(){
      Display_This_String = 'value set in action function method';
    }
//public boolean doneSearch {get; set;}


    public Lead le {get; set;}
    public LeadCustomContAssign12(){
           le=new Lead();
           
          le.LastName='monika';  
           le.Status='Closed - Converted';   
//doneSearch=false;            //if(le.Id!=null){
               // le=[Select Id, LastName, Status, Company from Lead where Id=: le.Id LIMIT 1];
            //}
        }
        
 
/* public class LeadCustomContAssign {
    public Lead le {get; set;}
        public LeadCustomContAssign(){
           le=new Lead();
            //if(le.Id!=null){
               // le=[Select Id, LastName, Status, Company from Lead where Id=: le.Id LIMIT 1];
            //}
        }*/
        //Integer count = 0;
//public Integer getCount() {
      //  return count;
   // }
        public PageReference save() {
        //count++;
            //doneSearch= true;
            insert le;
            
            //PageReference pr=new PageReference('/'+le.Id);
            return null;
        } 
    
}