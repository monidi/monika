//trigger for contact
trigger ExListTrigger on Contact (before insert,before update) {
    ExList el=new ExList();
    el.printList();
    el.printSet();
    el.printMap();
}