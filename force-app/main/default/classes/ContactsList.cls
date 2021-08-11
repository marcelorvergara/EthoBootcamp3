global class ContactsList {
    
	public static void conInert(){
        
        List<Contact> conList = new List<Contact>{
                new Contact(FirstName='Joe', LastName='Smith', Department='Finance'),
                new Contact(FirstName='Kathy', LastName='Smith', Department='Technology'),
                new Contact(FirstName='Caroline',LastName='Roth', Department='Finance'),
                new Contact(FirstName='Kim', LastName='Shhain', Department='Education')};

        insert conList;

        List<Contact> listToUpdate = new List<Contact>();

        for(Contact con: conList){
            if(con.Department == 'Finance'){
                con.Title = 'Financial analyst';
                listToUpdate.add(con);
            }
        }

        update listToUpdate;
    }

}