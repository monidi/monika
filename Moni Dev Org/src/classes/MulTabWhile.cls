//multiplication table using while loop
public class MulTabWhile{
    integer i=1;
    public void printMulWhile(integer n){
        
        while(i<=10){
            integer a=n*i;
            System.debug('========multiplication table====='+n+'*'+i+'='+a);
            i++;
        }
    }
}