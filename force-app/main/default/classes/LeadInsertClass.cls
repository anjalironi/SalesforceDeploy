public class LeadInsertClass {
    public static list<Lead> InsertLead()
    {
        List<Lead> ledlist = new List<Lead>();
        Lead ld = new Lead();
        ld.FirstName = 'Garg';
        ld.LastName = 'Reddy';
        ld.Company = 'Nothing';
        ld.LeadSource = 'Events';
        ledlist.add(ld);
        
        insert ledlist;
        return ledlist;
        
    }

}