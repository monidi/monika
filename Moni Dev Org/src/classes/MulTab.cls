//multiplication table
public class MulTab{
    integer i=1;
    public void printMul(integer n){
        
        do{
            integer a=n*i;
            System.debug('========multiplication table====='+n+'*'+i+'='+a);
            i++;
        }while(i<=10);
    }
}