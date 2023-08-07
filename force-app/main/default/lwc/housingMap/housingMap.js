import { LightningElement, wire } from "lwc";
import  gethouses from "@salesforce/apex/HouseService.getRecords";
export default class HousingMap extends LightningElement {
    mapMarkers;
    error;
    @wire(gethouses)
    WiredHouses({error, data})
    {
        if (data){
            // We are using Javascript Map function to transform the
         this.mapMarkers = data.map((element) => {
        return {
          location: {
            Street: element.Address__c,
            City: element.City__c,
            State: element.State__c
          },
          title: element.Name
        };
      });
         this.error = undefined;
    }   
     else if (error) {
         this.error = error;
         this.mapMarkers = undefined;
    
        }
    }
}