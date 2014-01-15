// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
                                                                          
changeSelects = function (obj, result, id) { 
   jQuery('#' + obj).live('change', function() { 
	//alert(jQuery('#' + id1 + ' :selected').val());
     var type = jQuery('#' + obj + ' :selected').val();  
	 codigo = '?cod='+id;
     if(type == ""){
	    alert("Selecione um Tipo de Entidade");
	 }else{
	     jQuery.get('/admin/beings/'+ type +'/type'+codigo, function(data){ 
	         jQuery("#" + result).html(data); 
	     })
	}

     return false;
   }); 
 }