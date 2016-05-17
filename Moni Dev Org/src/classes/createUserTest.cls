public class createUserTest {
    public User userObj { get; set; }
    public string selectedprofile{set;get;}
    public string selectedRole{set;get;}
    public string selectedLicense{set;get;}
    public Boolean displaySection{set;get;}
     public Boolean displayThankSection{set;get;}
    
    
    public createUserTest()
        {
        
       // System.debug('contructor entry');
            userObj = new user();
            displaySection = true;
            displayThankSection = false;
           userObj.EmailEncodingKey  = 'General US & Western Europe (ISO-8859-1, ISO-LATIN-1)';
           userObj.TimeZoneSidKey  = '(GMT-06:00) Central Standard Time (America/Chicago)';
           userObj.LanguageLocaleKey  = 'English';
           userObj.LocaleSidKey  = 'English (United States)';
        }

    //public integer getTotal(){
    //List<integer> mc=new List<integer>();
       /* User__c mc = User__c.getValues('Total');
        decimal i=mc.Total__c;
        double k = Double.valueOf(i);
        integer m = (Integer)k;
        return m;
    }*/
    Public integer getLicen(){
         integer u = [select count() from user where isactive = true and profile.UserLicense.Name = 'salesforce'];

         //Decimal userCount = decimal.valueOf(u);
        //Integer totalUnused = (lic.intValue() - userCount.intValue());
        //System.debug('************ Licenses???? ***************** ' + String.valueOf(totalUnused));
        return u;
    }

    public List<SelectOption> getItems() {
         List<SelectOption> options = new List<SelectOption>();
         for(Profile p:[select id,name from Profile])
         options.add(new SelectOption(p.id,p.Name));
         return options;
    }
    public List<SelectOption> getItemRoles() {
         
        List<SelectOption> options = new List<SelectOption>();
        for(UserRole p:[select id,name from UserRole])
        options.add(new SelectOption(p.id,p.Name));
        return options;
    }
    
    public List<SelectOption> getItemLecense() {
         
        List<SelectOption> options = new List<SelectOption>();
        for(UserLicense p:[SELECT id,Name FROM UserLicense])
        options.add(new SelectOption(p.id,p.Name));
         return options;
    }

    public PageReference cancel() {
        return null;
    }
    public void saveuser() {
    
       
      
       try{
           
           System.debug('save entry: ');
          userObj.UserRoleId = selectedRole;
           userObj.ProfileId = selectedprofile;
           insert userObj;
           displaySection = false;
           displayThankSection = true;
      }
      catch(DmlException e)
        {
         
        ApexPages.Message msg = new ApexPages.Message(ApexPages.severity.FATAL,'User Duplication'); 
         ApexPages.addMessage(msg);
            
        }
    
      
    }  


}