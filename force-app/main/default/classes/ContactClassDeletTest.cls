@isTest
public class ContactClassDeletTest {
    public testmethod static void contactDeleteClass(){
        Test.startTest();
        string s = contactDeleteClass.Deleterecord(); 
        System.AssertEquals('deleted',s);
        
        Test.stopTest();
    }
}