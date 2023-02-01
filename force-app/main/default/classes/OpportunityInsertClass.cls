public class OpportunityInsertClass {
    
    
    public static list<Opportunity> InsertOpp()
    {
        List<Opportunity> opplist = new List<Opportunity>();
        
        Opportunity opp = new Opportunity();
        
                opp.Name = 'Apex Creation';
        
        opp.Amount = 212123;
        opp.StageName = 'Qualified';
        opp.Probability = 35;
        opp.CloseDate = date.parse('01/01/2050');
        opp.NextStep = 'next step...';
        
        opp.LeadSource = 'Events';
        opplist.add(opp);  
        insert opplist;
        return opplist;
    }
}