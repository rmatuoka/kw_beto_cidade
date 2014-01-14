// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
                                                                          
changeSelects = function (obj, result) { 
   jQuery('#' + obj).live('change', function() { 
	//alert(jQuery('#' + id1 + ' :selected').val());
     var type = jQuery('#' + obj + ' :selected').val(); 
     if(type == ""){
	    alert("Selecione um Tipo de Entidade");
	 }else{
	     jQuery.get('/admin/beings/'+ type +'/type', function(data){ 
	         jQuery("#" + result).html(data); 
	     })
	}

     return false;
   }); 
 }