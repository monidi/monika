public class UserCreationClass1 {
    public User userObj { get; set; }
    public string selectedprofile{set;get;}
    public string selectedRole{set;get;}
    public string selectedLicense{set;get;}
    public Boolean displaySection{set;get;}
     public Boolean displayThankSection{set;get;}
    
    
    public UserCreationClass1()
        {
        
       // System.debug('constructor entry');
            userObj = new user();
            displaySection = true;
            displayThankSection = false;
            //userObj.FirstName='moni';
            //userObj.LastName='kn';
           userObj.EmailEncodingKey  = 'ISO-8859-1';
           userObj.TimeZoneSidKey  = 'America/Chicago';
           userObj.LanguageLocaleKey  = 'en_US';
           userObj.LocaleSidKey  = 'en_US';
        }
 
    Public integer getLicen(){
         integer u = [select count() from user where isactive = true and profile.UserLicense.Name = 'salesforce'];

         //Decimal userCount = decimal.valueOf(u);
        //Integer totalUnused = (lic.intValue() - userCount.intValue());
        //System.debug('************ Licenses???? ***************** ' + String.valueOf(totalUnused));
        return u;
    }

    public List<SelectOption> getItems() {
         List<SelectOption> options = new List<SelectOption>();
         options.add(new SelectOption('', '--None--'));
         
         for(Profile p:[select id,name from Profile])
         options.add(new SelectOption(p.id,p.Name));
        /* if(selectedLicense=='Chatter External'){
         options.add(new SelectOption('', 'Chatter Moderator User'));
         }*/
         
         return options;
    }
    public List<SelectOption> getItemRoles() {
         
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('', '--None--'));
        
        //if(selectedLicense='Chatter External'){
        for(UserRole p:[select id,name from UserRole])
        options.add(new SelectOption(p.id,p.Name));
       // }
       
        return options;
    }
   /* public void updateData() {
             if(selectedLicense == '100600000004zXEAAY') {
                  selectedRole = '00E60000000rqX1EAI';
                 
          }
          }*/
    
    public List<SelectOption> getItemLecense() {
         
        List<SelectOption> options = new List<SelectOption>();
       options.add(new SelectOption('', '--None--'));
        for(UserLicense p:[SELECT id,Name FROM UserLicense])
        options.add(new SelectOption(p.id,p.Name));
        
        
         return options;
    }

    public PageReference cancel() {
        return null;
    }
    public void save() {
    
       
      
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
         
     
         
         //ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, System.Label.Custom_Error_Message_for_User_Duplication));
         
        //ApexPages.Message msg = new ApexPages.Message(ApexPages.severity.FATAL,'User Duplication'); 
         //ApexPages.addMessage(msg);
         
         
             ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'User Name already exists. Please Use different user name.'));

                     
        }
    
      
    }  


}