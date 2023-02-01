public class ContactClassInsert {
    public static List<Contact> Insertrecord(){
        List<Contact> colist = new List<Contact>();
        
        for (integer i=0; i<=0;i++){
            Contact con= new Contact();
            
            con.LastName= 'Test12';
            // con.Name = 'Mr';
            con.Phone= '123456789';
            
            colist.add(con);
            
        }
        insert colist;
        return colist;
        //system.debug('insert record on account obj'+aclist);
    }

}