public with sharing class encodingTestingExt {

    public String myTextField { get; set; }
    private string ecmachange='<script> alert("hi");</script>';
    
    
    public encodingTestingExt() {
    
        ecmachange=ecmachange.escapeEcmaScript();
        myTextField ='<a href="wwww.google.com">'+ecmachange +'</a>';
    }


    public encodingTestingExt(ApexPages.StandardController controller) {

    }

}