@isTest
public class ContactClassUpdateTest {
      public testmethod static void ContactUpdateClass(){
    
        Test.startTest();
        List<Contact> conList = ContactUpdateClass.Updaterecord();
        System.AssertEquals(conList.size(),1);
        Test.stopTest();
    }
}