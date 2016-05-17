public class StmDML{
    public static void createCont(){
            List<Contact> cnt= new List<Contact>();
            Contact c= new Contact();
            c.LastName = 'con3';
            c.Title='tit3';
            c.Email='xyz@gmail.com';
            c.Phone='78452369';
            cnt.add(c);
            //insert c;
            
            Contact c1=new Contact();
            c1.LastName = 'con4';
            c1.Title='tit4';
            c1.Email='mko@gmail.com';
            cnt.add(c1);
        
            insert cnt;
       }
        
       public static void updCnt(){
           Contact c1=new Contact();
           c1.LastName = 'con4';
           c1.Title='tit4';
           c1.Email='mko@gmail.com';
           insert c1;
           c1.LastName='con6';
           update c1;
       }
       public static void upd1Cnt(){
           Contact c1=new Contact();
           c1.LastName = 'con8';
           c1.Title='tit8';
           c1.Email='mko@gmail.com';
           insert c1;
           delete c1;
       }
       public static void upsrtCnt(){
           Contact c1=new Contact();
           c1.LastName = 'con96';
           c1.Title='tit35eeee';
           c1.Email='mko@gmail.com';
           upsert c1;
       }
 }