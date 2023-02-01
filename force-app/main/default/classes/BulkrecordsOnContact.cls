public class BulkrecordsOnContact {
    public static List<Contact> Updaterecord(){
        // Create a list of contacts
        List<Contact> conList = new List<Contact> {
            new Contact(FirstName='Joe',LastName='Smith',Department='Finance'),
                new Contact(FirstName='Kathy',LastName='Smith',Department='Technology'),
                new Contact(FirstName='Caroline',LastName='Roth',Department='Finance'),
                new Contact(FirstName='Kim',LastName='Shain',Department='Education')
                };
                    insert conList;
                    
    
    // Bulk insert all contacts with one DML call
    

    // List to hold the new contacts to update
    List<Contact> listToUpdate = new List<Contact>();
    // Iterate through the list and add a title only
    //   if the department is Finance
    for(Contact con : listToUpdate) {
        Contact contoupdate = con;
            contoupdate.Title = 'Financial analyst';
            // Add updated contact sObject to the list.
            listToUpdate.add(contoupdate);
        }
    
    // Bulk update all contacts with one DML call
    update listToUpdate;
    return listToUpdate;
    }
}