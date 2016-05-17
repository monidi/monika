public class CustomContEx {

    public PageReference subMeth() {
        System.debug('===================================================');
        System.debug('==========================Product:'+product);
        System.debug('==========================Cost:'+cost);
        Case c = new Case();
        c.Status = product;
        c.Origin = cost;
        insert c;
        PageReference pg = new PageReference('/'+c.Id);
        return pg;
    }


    public String cost { get; set; }

    public String product { get; set; }
}