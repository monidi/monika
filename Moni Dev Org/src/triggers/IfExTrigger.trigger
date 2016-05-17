//this is ifex trigger
trigger IfExTrigger on Order (before update,before insert) {
    IfEx.printIf(5,6);  
    System.debug('+++++++trigger+++++++');  
}