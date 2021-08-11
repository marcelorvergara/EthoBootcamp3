public class ContactSearch {
    
    public static List<Contact> searchForContacts(String nome, String mailingPC){
        
        List<Contact> lstCont = new List<Contact>();
        
        lstCont = [SELECT Id,Name FROM Contact WHERE LastName=:nome AND MailingPostalCode=:mailingPC];
    	
        return lstCont;
    }

}