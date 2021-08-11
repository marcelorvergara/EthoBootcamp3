@isTest
public class TestVerifyDate {

    @isTest static void TestDateTrue(){
 
        Date dt = VerifyDate.CheckDates(Date.newInstance(2021, 08, 01),Date.newInstance(2021, 08, 05));
        
        System.assertEquals(Date.newInstance(2021, 08, 05), dt);
        
    }
    
    @isTest static void TestDateFalse(){
        
        Date dt = VerifyDate.CheckDates(Date.newInstance(2021, 08, 01),Date.newInstance(2021, 10, 05));
        
        System.assertEquals(Date.newInstance(2021, 08, 31), dt);
    }
}