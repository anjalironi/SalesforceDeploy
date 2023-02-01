public class RollupSummary {
    
    public static void beforeAction( list<sObject> newlist){
        set<string> fieldNames = new set<string>();
        fieldNames.add('Phone');
        fieldNames.add('Rating');
        fieldNames.add('Description');
        fieldNames.add('website');
        for(sObject  record : newlist){
            for(String fieldName : fieldNames){
                
                String errMessage = fieldName + ' is Required';
                if(record.get(fieldName) == null || record.get(fieldName) == ''){
                    record.addError(fieldName, errMessage );
                }
                
            }
        }
    }

}