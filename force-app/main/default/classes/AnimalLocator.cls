public class AnimalLocator {
    
    public static string getAnimalNameById(Integer animalId )
    {
        string animalName;
        HttpRequest request=new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+animalId);
        request.SetMethod('GET');
        request.setHeader('Content-Type','application/json;charset=UTF-8');
        HttpResponse response=new Http().send(request);
        if(response.getStatusCode()==200)
        {
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
             if(results.size()>0 && results.containsKey('animal')){
            
                map<string, object> animalValues= (map<string,Object>)results.get('animal');
                animalName=string.valueof(animalValues.get('name'));
              
               } 
    
            
        }
        
        return animalName;
        
        
    }

}