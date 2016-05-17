//this is trigger on lead
trigger PolyTrigger on Lead (before insert, before update) {
    Poly ply=new Poly();
    integer i1=ply.printPoly(6,8);
    System.debug('=============multiplication========='+i1);
    integer i2=ply.printPoly(6);
    System.debug('=============the given number is========='+i2);
}