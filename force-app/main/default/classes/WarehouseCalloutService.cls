public with sharing class WarehouseCalloutService implements Queueable {
    private static final String WAREHOUSE_URL = 'https://th-superbadge-apex.herokuapp.com/equipment';
    
    //class that makes a REST callout to an external warehouse system to get a list of equipment that needs to be updated.
    //The callout’s JSON response returns the equipment records that you upsert in Salesforce. 
    
    @future(callout=true)
    public static void runWarehouseEquipmentSync(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        
        request.setEndpoint(WAREHOUSE_URL);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        List<Product2> warehouselist = new List<Product2>();
        
        if (response.getStatusCode() == 200){
            List<Object> jsonResponse = (List<Object>)JSON.deserializeUntyped(response.getBody());
            System.debug(response.getBody());
            
            //class maps the following fields: replacement part (always true), cost, current inventory, lifespan, maintenance cycle, and warehouse SKU
            //warehouse SKU will be external ID for identifying which equipment records to update within Salesforce
            for (Object eq : jsonResponse){
                Map<String,Object> mapJson = (Map<String,Object>)eq;
                Product2 myEqlist = new Product2();
                myEqlist.Replacement_Part__c = (Boolean) mapJson.get('replacement');
                myEqlist.Name = (String) mapJson.get('name');
                myEqlist.Maintenance_Cycle__c = (Integer) mapJson.get('maintenanceperiod');
                myEqlist.Lifespan_Months__c = (Integer) mapJson.get('lifespan');
                myEqlist.Cost__c = (Integer) mapJson.get('cost');
                myEqlist.Warehouse_SKU__c = (String) mapJson.get('sku');
                myEqlist.Current_Inventory__c = (Double) mapJson.get('quantity');
                myEqlist.ProductCode = (String) mapJson.get('_id');
                warehouselist.add(myEqlist);
            }
            
            if (warehouselist.size() > 0){
                upsert warehouselist;
                System.debug('Your equipment was synced with the warehouse one');
            }
        }
    }
    
    public static void execute (QueueableContext context){
        runWarehouseEquipmentSync();
    }
    
}