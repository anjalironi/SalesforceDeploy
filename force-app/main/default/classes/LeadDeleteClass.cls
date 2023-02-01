public class LeadDeleteClass {
    public static list<Lead> DeleteLead()
    {
        list<Lead> delld = [SELECT Id, Name FROM Lead WHERE FirstName = 'Garg'];
        
        delete delld;
        return delld;
    }

}