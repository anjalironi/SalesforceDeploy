trigger AcccountUpdate on Opportunity (after insert,after update) {
    
    //empty account list
    List<Account> lstAccounts=new List<Account>();
    //to store account ids of related account
    Set<Id> setAccountIds=new Set<Id>();
    //to store related acc id and opp
    Map<Id,Opportunity> mapAccIdOpp=new Map<Id,Opportunity>();
    
    if(Trigger.isUpdate && Trigger.isAfter){
        for(Opportunity obj : Trigger.new){
            setAccountIds.add(obj.AccountId);
        }
        for(Opportunity obj:Trigger.new) {
            mapAccIdOpp.put(obj.AccountId,obj);
        }
        for(Account obj : [select Id, Is_Gold__c from Account where Id IN:setAccountIds]){
            if(mapAccIdOpp.get(obj.Id).Amount> 20000){
                obj.Is_Gold__c=True;
                lstAccounts.add(obj);
            }
            else
            {
                obj.Is_Gold__c=False;
                lstAccounts.add(obj);
            }
        }
        if(lstAccounts.size()>0){
            upsert lstAccounts;
        }
    }
}
