public class AccountInsertClass {
    public static List<Account> Insertrecord(){
        List<Account> aclist = new List<Account>();
            for (integer i=0; i<=0;i++){
                Account acc= new Account();
                acc.Name= 'Garg';
                    acc.Phone='1234567' ;
                        acc.Type='Prospect' ;
                            aclist.add(acc);
            }
        insert aclist;
        return aclist;
        //system.debug(&#39;insert record on account obj&#39;+aclist);
    }
    
}