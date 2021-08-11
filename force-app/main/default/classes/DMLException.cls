public class DMLException extends Exception {

    public static void getException(){
        try{
            Account acct = new Account();
            insert acct;
        } catch(DmlException e){
            System.debug('A DML exception has occurred: ' + e.getMessage());
        }
    }
}