//this is StaticParamTrigger
trigger StaticParamTrigger on Lead (before insert,before update) {
    StaticParam.testParam(20);
}