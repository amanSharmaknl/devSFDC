@isTest

global class  AnimalLocatorMock  implements HttpCalloutMock

{

    global HTTPResponse  respond(HttpRequest request)
    {
        string responseBody='{"animal":{"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}';
        
        
        HttpResponse response=new HttpResponse();
        response.setHeader('Content-Type','application/json;char-set=utf-8');
        response.setStatusCode(200);
        response.setBody(responseBody);
        return response;
    }




}