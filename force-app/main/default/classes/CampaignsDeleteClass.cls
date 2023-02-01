public class CampaignsDeleteClass {
    public static list<Campaign> DeleteCamp()
    {
        list<Campaign> delcp = [SELECT Name FROM Campaign WHERE Name = 'Demo Campaign'];
        
        delete delcp;
        return delcp;
    }


}