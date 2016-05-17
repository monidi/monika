trigger UpdateAmount on CusCObject__c (after insert, after update) {
    Map<ID, CusObj1__c> parentOpps = new Map<ID, CusObj1__c>(); //Making it a map instead of list for easier lookup
    Set<Id> listIds = new Set<Id>();
    Set<Id> users1 = new Set<Id>();
    Map<Id, String> ownerMap = new Map<Id, String>();
    Map<Id, String> ownerMap1 = new Map<Id, String>();
    for (CusCObject__c childObj : trigger.new) {
        listIds.add(childObj.CusObject1__c);
        users1.add(childObj.User__c);
        parentOpps.put(childObj.CusObject1__c, null);
        ownerMap.put(childObj.User__c, null);
    }
    parentOpps.remove(null);
    parentOpps.putAll([SELECT id, Name, child_name__c FROM CusObj1__c WHERE Id IN :listIds]);
    User[] users = [SELECT Id, Name, UserRole.name FROM User WHERE Id =:users1];
        for(integer i=0;i<users.size();i++){
            ownerMap.put(users[i].Id, users[i].Name);
            ownerMap1.put(users[i].Id, users[i].UserRole.name);
        }
    for (CusCObject__c quote: trigger.new){
        CusObj1__c myParentOpp = parentOpps.get(quote.CusObject1__c);
        if(ownerMap1.get(quote.User__c)=='CEO'){
        myParentOpp.child_name__c = ownerMap.get(quote.User__c);}
    }
    update parentOpps.values();
}