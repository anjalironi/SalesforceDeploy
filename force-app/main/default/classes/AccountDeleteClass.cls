public class AccountDeleteClass {
    public static string Deleterecord(){
        List<Account> accList = [select id,Name from Account where Name='abcd12345'];
        
        List<Account> deleteList = new List<Account>();
            for(Account a:accList ){
                // Account accToDelete = a;
                
                deleteList.add(a);
            }
        if(deleteList!= null)
        {delete deleteList;
        return 'deleted';
             }
        else
        {
            return 'not deleted';
        }
    }
}