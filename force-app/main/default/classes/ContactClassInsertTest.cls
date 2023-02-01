@isTest
public class ContactClassInsertTest {
    public testmethod static void ContactClassInsert(){
        
        Test.startTest();
        List<Contact> coList = ContactClassInsert.Insertrecord();
        System.AssertEquals(coList.size(),1);
        Test.stopTest();
    }
}