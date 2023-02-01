public class ContactUpdateClass {
    
    
    public static List<Contact> Updaterecord(){
        List<Contact> colist = new List<Contact>();
        
        for (integer i=0; i<=0;i++){
            Contact con= new Contact();
            
            con.LastName= 'Test12';
            con.Phone= '123456789';
            
            colist.add(con);
            
        }
        insert colist; // new record gets created
        
        List<Contact> contactToUpdateList = [SELECT Id,LastName FROM Contact WHERE Name ='Test12'];
        List<Contact> updateList = new List<Contact>();
        for(Contact a:contactToUpdateList ){
            Contact conToUpdate = a;
            conToUpdate.LastName='Test1234';
            updateList.add(conToUpdate);
        }
        
        Update updateList;
        return updateList;
        
        
        
    }
}