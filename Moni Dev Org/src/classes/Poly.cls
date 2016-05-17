//polymorphysm
public class Poly{
    public integer printPoly(integer p1){
        System.debug('-------value of p1 is p1:'+p1);
        return p1*2;
    }
    public integer printPoly(integer p2,integer p3){
        System.debug('-------value of p2 is p2:'+p2);
        System.debug('-------value of p3 is p2:'+p3);
        return p2*p3;
    }
    public integer printPoly(integer p4,integer p5,integer p6){
        System.debug('-------value of p4 is p4:'+p4);
        System.debug('-------value of p5 is p5:'+p5);
        System.debug('-------value of p6 is p6:'+p6);
        return p4+p5+p6;
    }
    
}