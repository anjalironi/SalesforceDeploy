public class OpportunityUpdate {
    public static list<Opportunity> UpdateOpp()
        
    {
        List<Opportunity> opplist = new List<Opportunity>();
            for (integer i=0; i<=0;i++){
                Opportunity opp= new Opportunity();
                opp.Name = 'Apex Creation123';
        
        opp.Amount = 21212367;
        opp.StageName = 'Prospecting';
        opp.Probability = 45;
        opp.CloseDate = date.parse('02/01/2050');
        opp.NextStep = 'next step...';
        
        opp.LeadSource = 'Web';
        opplist.add(opp);  
            }
        insert opplist;
        
       list<Opportunity> oppToUpdateList = [SELECT Id, Name FROM Opportunity WHERE Name = 'Apex Creation123'];
        List<Opportunity> updateList = new List<Opportunity>();
            for(Opportunity a:oppToUpdateList ){
                Opportunity opptoupdate = a;
        opptoupdate.Name='Apex1234';
                updateList.add(opptoupdate);
            }
                
        
        update updateList;
        return updateList;
        
    }
    }