//soql example
public class TestSoql{
    public void printSoql(){
        //List<Lead> ls=[select OwnerId, Status, Rating from Lead];
        //List<Lead> ls=[select OwnerId, Status, Rating,Primary__c from Lead];
        //List<Lead> ls=[select OwnerId, Status, Rating from Lead where Name='coward noel'];
        List<Lead> ls=[select Name, OwnerId, Status, Rating from Lead where Name LIKE :'%ni%'];
        //List<Lead> ls=[select Name, OwnerId, Status, Rating from Lead LIMIT 3];
        //List<Lead> ls=[select Name, OwnerId, Status, Rating from Lead where Name IN ('mm','chotu','test')];
        //String str='%ni%';
        //List<Lead> ls=[select Name, OwnerId, Status, Rating from Lead where Name LIKE : str AND Rating='hot'];
        //List<Lead> ls=[select Name, OwnerId, Status, Rating from Lead where Name LIKE : str AND Rating='hot'AND CALENDAR_YEAR(CreatedDate) = 2014];
        //List<Lead> ls=[select Name, OwnerId, Status, Rating from Lead where Name !='bobby'];
        //List<Lead> ls=[select Name, OwnerId, Status, Rating from Lead where Name NOT IN ('mm','chotu','test')];
        //List<Lead> ls=[select Name, OwnerId, Status, Rating from Lead where Name IN ('mm','chotu','test') OR Name !='coward noel'];
        System.debug('==========Lead selected list======'+ls);
        for(Lead ld:ls){
            System.debug('===========LEAD==========='+ld.Name);
            System.debug('===========LEAD==========='+ld.OwnerId);
            System.debug('===========LEAD==========='+ld.Status);
            System.debug('===========LEAD==========='+ld.Rating);
            
        }
        Integer totlLee=[select count() from Lead Where Name Like: '%ni%'];
        System.debug('====================================totla leads:'+totlLee);
        
    }
    /*public void addLead(){
        Lead l=new Lead(Company='njh');
        insert l;
        }*/
}