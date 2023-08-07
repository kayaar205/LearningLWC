public class ContactAndLeadSearch {
    
    Public static List<List<sObject>> searchContactsAndLeads(String searchword)
    {
        List<List<sObject>> searchList= [FIND :searchword IN ALL FIELDS RETURNING Lead(Name,FirstName,LastName ), Contact(FirstName,LastName )];  
        Lead[] searchLeadss = (Lead[])searchList[0];
        Contact[] searchContacts = (Contact[])searchList[1];
        System.debug('Found the following leads.');
        for (Lead l : searchLeadss) {
            System.debug(l.Name+', '+ l.FirstName+', '+ l.LastName);
        }
        System.debug('Found the following contacts.');
        for (Contact c : searchContacts) {
  
            System.debug(c.LastName + ', ' + c.FirstName);
        }
        system.debug(searchList);
        
        return searchList;
        
    }
    
}