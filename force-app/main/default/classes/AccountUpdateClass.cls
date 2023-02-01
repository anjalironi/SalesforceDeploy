public class AccountUpdateClass {
    public static List<Account> Updaterecord(){
        List<Account> aclist = new List<Account>();
            for (integer i=0; i<=0;i++){
                Account acc= new Account();
                acc.Name= 'ACME Services1';
                    acc.Phone='345654654' ;
                        acc.Type= 'Customer-Direct';
                            aclist.add(acc);
                
            }
        insert aclist; // new record gets created
        List<Account> accountToUpdateList = [SELECT Id,Name,Phone,Type FROM
                                                   Account WHERE Name ='ACME Services1'];
        List<Account> updateList = new List<Account>();
            for(Account a:accountToUpdateList ){
                Account accToUpdate = a;
                accToUpdate.Name= 'Acme';
                    updateList.add(accToUpdate);
            }
        Update updateList;
        return updateList;
        
    }
}