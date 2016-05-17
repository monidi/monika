@isTest
public class AccountsoqlTriggerTest{
    public static testMethod void TestAcSoql(){
        Contact co=new Contact();
        co.LastName='nijij';
        co.Email='hh@mail.com';
        insert co;
        co.LastName='hnkm';
        update co;
    }
}