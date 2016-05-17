@isTest
public class TestHelloTrigger{
    public static testMethod void printHello(){
        Order or1=new Order();
        or1.Status='Draft';
        or1.EffectiveDate=System.today();
        or1.AccountId = '001o0000005QL0m';
        insert or1;
    }
}