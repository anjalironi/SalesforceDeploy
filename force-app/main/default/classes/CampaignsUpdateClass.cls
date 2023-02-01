public class CampaignsUpdateClass {
    public static list<Campaign> UpdateCamp()
    {
       list<Campaign> ucp = [SELECT Name FROM Campaign WHERE Name = 'Demo Campaign'];
        List<Campaign> updateList = new List<Campaign>();
            for(Campaign c:ucp ){
                Campaign camtoupdate = c;
        camtoupdate.Status='Planned';
                updateList.add(camtoupdate);
            }
        
        update updateList;
        return updateList;
    }
}