//testing if statement
public class IfEx{
    public static void printIf(integer val,integer num){
        System.debug('+++++++first parameter is+++++++ val:'+val);
        System.debug('+++++++second parameter is+++++++ num:'+num);
        if(val==num){
            System.debug('+++++++both the parameters are same+++++++');
        }
        else{
            System.debug('+++++++both the parameters are different+++++++');
        }
        integer price=val*num;
        if(price>10){
            System.debug('+++++++price of this product is+++++++ price:'+price);
        }
    }
}