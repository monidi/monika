@isTest
public class ApexTriggerTest{
    public static testMethod void prntApx(){
        Lead le=new Lead();
        le.LastName='bujj';
        le.Company='hgk';
        le.Email='exna@gmail.com';
        insert le;
        //update le;
    }
}