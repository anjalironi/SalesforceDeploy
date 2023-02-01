public class OpportunityDeleteClass {
    public static string DeleteOpp()
    {
        Opportunity[] oppdelete = [SELECT Id, Name FROM Opportunity 
                                   WHERE Name = 'Apex Creation']; 
        
        List<Opportunity> deleteList = new List<Opportunity>();
        for(Opportunity op:oppdelete ){
            // Account accToDelete = a;
            
            deleteList.add(op);
        }
        if(deleteList!= null)
        {delete deleteList;
         return 'deleted';
        }
        else
        {
            return 'not deleted';
        }
    }
}