global class ParkServiceMock implements WebServiceMock  {

    global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
        // send the park names
         Map<String, ParkService.byCountryResponse> response_map_x = new Map<String, ParkService.byCountryResponse>();
               string[] parkNames = new string[]{'Disney'};
                   ParkService.byCountryResponse response_x = new ParkService.byCountryResponse();
               response_x.return_x = parkNames;
               //response_map_x.put('response_x', response_x);
        // end
        response.put('response_x', response_x); 
   }
    
}