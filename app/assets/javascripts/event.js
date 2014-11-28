$(document).ready(function(){
   
    $(".slide img").hover(function(){
        $(this).parent("div").find("div").slideDown("slow");
    },function(){
        $(this).parent("div").find("div").slideUp("slow");    
    });
 
    
});
