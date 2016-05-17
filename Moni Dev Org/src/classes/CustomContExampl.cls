public with sharing class CustomContExampl {

    public Account acnt { get; set; }
    public CustomContExampl(){
        acnt=new Account();
    }

    public PageReference save() {
        insert acnt;
        PageReference pr=new PageReference('/'+acnt.Id);
        return pr;
    }
    
}