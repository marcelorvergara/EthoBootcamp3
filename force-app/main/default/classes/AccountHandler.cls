public class AccountHandler {

    public static Account insertNewAccount(String nome){
        
        Account acct = new Account(Name=nome);
        
        try{
            
            insert acct; 
            
        }catch(Exception e){
            
            System.debug('Erro: ' + e.getMessage());
            
            return null;
        }
        
        return acct;
    }
    
}