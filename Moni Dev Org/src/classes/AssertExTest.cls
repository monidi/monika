@isTest
public class AssertExTest{
    @isTest
    public static void multw(){
        AssertEx ae=new AssertEx();
        ae.mulTwo(3,4);
        integer res=ae.mulThree(6,8,9);
        System.assert(res>50);
        System.assertEquals(432,res);
    }
}