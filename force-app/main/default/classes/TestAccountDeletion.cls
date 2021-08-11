@isTest
public class TestAccountDeletion {

    @isTest static void TestDeleteAccountWithOneOpportunity(){
        
		Account[] accts = TestDataFactory.createAccountWithOpps(1,1);
        
        Test.startTest();
        
        Database.DeleteResult result = Database.delete(accts[0], false);
       
        Test.stopTest();
        
        System.assert(!result.isSuccess());
        
        System.assert(result.getErrors().size() > 0);
        
        System.assertEquals('Cannot delete account with related opportunities.',
                            result.getErrors()[0].getMessage());
    }
    
    @isTest static void TestDeleteAccountWithNoOpportunities(){
        
        Account[] accts = TestDataFactory.createAccountWithOpps(1,0);
        
        Test.startTest();
        
        Database.DeleteResult result = Database.delete(accts[0], false);
        
        Test.stopTest();
        
        System.assert(result.isSuccess());
    }
    
    @isTest static void TestDeleteBulkAccountsWithOneOpportunity(){
        
        Account[] accts = TestDataFactory.createAccountWithOpps(200,1);
        
        Test.startTest();
        
        Database.DeleteResult[] results = Database.delete(accts, false);
        
        Test.stopTest();
        
        for(Database.DeleteResult dr: results){
            
            System.assert(!dr.isSuccess());
            
            System.assert(dr.getErrors().size() > 0);
            
            System.assertEquals('Cannot delete account with related opportunities.',
                               dr.getErrors()[0].getMessage());
        }        
    }
    
    @isTest static void TestDeleteBulkAccountsWithNoOpportunities(){
        
        Account[] accts = TestDataFactory.createAccountWithOpps(200,0);
        
        Test.startTest();
        
        Database.DeleteResult[] results = Database.delete(accts, false);
        
        Test.stopTest();
        
        for(Database.DeleteResult dr: results){
            
            System.assert(dr.isSuccess());
            
        }
        
    }
}