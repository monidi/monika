//soql example
public class TestSosl{
    public void printSosl(){
        //List<List<SObject>> ob=[Find 'acc1' IN ALL fields returning Lead, Account, Contact];
        List<List<SObject>> ob=[Find 'acc1' IN ALL fields returning Lead(Status,Name,Rating), Account(Name), Contact, Case(Type, Origin)];
        System.debug('=====================SOSL========'+ob);
        for(List<SObject> ls:ob){
            System.debug('====================LIST==================='+ls);
        }
        List<Lead> ll=ob.get(0);
        List<Account> la=ob.get(1);
        List<Contact> lc=ob.get(2);
        List<Case> lca=ob.get(3);
        System.debug('============LEAD========='+ll);
        System.debug('============Account========='+la);
        System.debug('============Contact========='+lc);
        System.debug('============Case========='+lca);
        for(Lead l:ll){
            System.debug('=============lead Status==========='+l.Status);
            System.debug('=============lead Name==========='+l.Name);
            System.debug('=============lead Rating==========='+l.Rating);
        }
        for(Account ac:la){
            System.debug('=============Account name==========='+ac.Name);
        }
        for(Case c:lca){
            System.debug('=============Case Type==========='+c.Type);
            System.debug('=============Case origin==========='+c.Origin);
        }        
    }
}