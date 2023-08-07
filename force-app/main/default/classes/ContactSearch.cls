public class ContactSearch {

    public static list<contact> searchForContacts(string lastName, string mailingPostalCode){
        list<contact> retlist = [SELECT id,name,lastName,mailingPostalCode from contact 
                                 where lastName =:lastName AND mailingPostalCode= :mailingPostalCode];
        return retlist;
       
    }
}