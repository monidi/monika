/*
this class is to print given values
*/
public class Test{
    integer a;
    integer b;
    //cnstructr with parametrs
    public Test(integer x, integer y){
        this.a=x;
        this.b=y;
    }
    public void sys(){
        System.debug('*****test apex method****'+a+b);
    }
}