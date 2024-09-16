public class ParkLocator {

    
    public static String[] country (String country){
        ParkService.ParksImplPort obj = new ParkService.ParksImplPort();
     String[] parks =   obj.byCountry(country);
        return parks;
        
    }
}