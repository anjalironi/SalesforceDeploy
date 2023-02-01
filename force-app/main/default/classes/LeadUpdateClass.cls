public class LeadUpdateClass {
    public static list<Lead> UpdateLead()
    {
       list<Lead> uld = [SELECT Id, Name FROM Lead WHERE Company = 'Jackson Controls'];
        List<Lead> updateList = new List<Lead>();
            for(Lead l:uld ){
                Lead ledtoupdate = l;
        ledtoupdate.LeadSource='Workshops';
                updateList.add(ledtoupdate);
            }
        
        
        update uld;
        return uld;
    }

}