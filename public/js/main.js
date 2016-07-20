/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
   $("#searchBox").keyup(function(){
     var key = $(this).val();
     $("#inner_title").html("Search Result for : '"+key+"' (Not Implemented Yet)");
   });
   
   $("#uploadXML").click(function(){
    $.ajax({
          url:uploadURL,
          data:new FormData($("#upload_form")[0]),
          type:'post',
          processData: false,
          contentType: false,
          success:function(response){
            $("#resultData").html(response);
          },
          beforeSend:function(dd){
             $("#resultData").html('<img height="60" width="60" src="'+loadingIMG+'" />'); 
          }
        });
     });
 
 
  
   
   
    
    
          
});
