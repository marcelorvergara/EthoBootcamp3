public class RandomContactFactory {
 
    public static List<Contact> generateRandomContacts(Integer numContacts, String lastName){
       
        List<Contact> contactLst = new List<Contact>();
        
        for(Integer i=0; i<numContacts; i++){
            
            Contact ct = new Contact(FirstName='Name Test ' + i,LastName=lastName);
            
            contactLst.add(ct);
            
        }

        return contactLst;
    }
    
}