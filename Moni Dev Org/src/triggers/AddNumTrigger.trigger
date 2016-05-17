//this is addnumtrigger
trigger AddNumTrigger on Order (before insert,before update) {
    AddNum.numAdd(2,3);
}