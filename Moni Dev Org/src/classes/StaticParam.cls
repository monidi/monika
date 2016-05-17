/*
this class is to print values
*/
public class StaticParam{
    public Static void testParam(integer i1){
        System.debug('********param******'+i1);
    }
    /*
    public class ReadonlyEx{
        @ReadOnly
        public static List<Account> gtAccount(){
            List<Account> ac=[select Id, Name from Account]; 
            return ac;
        }
    }// error:Only WebService, RemoteAction, or Schedulable.execute() methods can be marked read-only at line 11 column 37 

*/
  /* public class DeprecatedEx{
        @Deprecated
        public static List<Account> gtAccount(){
            List<Account> ac=[select Id, Name from Account]; 
            return ac;
        }
    }//Error: Compile Error: Only managed identifiers can be marked deprecated: public static LIST<Account> gtAccount() at line 19 column 37    
*/
    /*
      public class FutureEx{
        @Future
        public static void gtAccount(){
            List<Account> ac=[select Id, Name from Account]; 
            System.debug(ac);
        }
    }*/
    
     /* public class FutureEx{
        @RemoteAction
        public static void gtAccount(){
            List<Account> ac=[select Id, Name from Account]; 
            System.debug(ac);
        }
    }*/
   }