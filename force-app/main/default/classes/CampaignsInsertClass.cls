public class CampaignsInsertClass {
    public static list<Campaign> InsertCamp()
    {
        list<Campaign> cplist = new list<Campaign>();
         Campaign cp = new Campaign();
        cp.Name = 'Demo Campaign';
        cp.Status='Inprogress';
        cp.Type='Conference';
        cplist.add(cp);
        
        
        insert cplist;
        return cplist;
    }
    

}