/**
*trigger to TestSquare class
**/
trigger TestSquareTrigger on Account (before insert, before update) {
    TestSquare ts=new TestSquare();
    ts.Square();
}