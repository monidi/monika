//exceptions example
public class TestException1{
    public void printEx(){
        System.debug('--------------------start----------------');
        try{
            integer i=2/0;
        }
         catch(MathException e){
             System.debug('==============math exception'+e.getMessage());
             //throw e;
         }
         catch(LimitException e){
             System.debug('==============limit exception'+e.getMessage());
             
         }
         catch(Exception e){
            System.debug('================exception:'+e.getMessage());
         }
         finally{
             System.debug('--------------------end----------------');
         }
    }
}