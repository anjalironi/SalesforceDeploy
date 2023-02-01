public class AccountContactclass {
    
    public static List<Account> Autoinsertrecord(){
        List<Account> aclist = new List<Account>();
        
        Account acct = new Account(Name='Axis Account');
        insert acct;
        // Once the account is inserted, the sObject will be 
        // populated with an ID.
        // Get this ID.
        ID acctID = acct.ID;
        // Add a contact to this account.
        Contact mario = new Contact(
            FirstName='Ario',
            LastName='Ruiz',
            Phone='8975551212',
            AccountId=acctID);
        insert mario;
        return aclist;
    }
    
    
}