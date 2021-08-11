public class NewCaseListController {

    
    public List<Case> getNewCases(){

        List<Case> lstCase = Database.query('Select Id, CaseNumber FROM Case WHERE Status=\'New\'  ');
    
        return lstCase;    
    }
    
}