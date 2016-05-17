/* this trigger is to test 
the constructor */
trigger ApexTrigger on Lead (before update,before insert) {
    Apex ap=new Apex();
}