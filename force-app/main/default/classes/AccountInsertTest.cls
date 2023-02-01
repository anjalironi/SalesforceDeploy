@isTest
public class AccountInsertTest { 
    public testmethod static void AccountInsertClass(){
        Test.startTest();
        List<Account> accList = AccountInsertClass.Insertrecord();
        System.AssertEquals(accList.size(),1);
        Test.stopTest();

}
}