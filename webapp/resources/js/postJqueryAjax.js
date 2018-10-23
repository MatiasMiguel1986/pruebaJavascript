 $(document).ready(function() {
      
      $('#stackedForm').submit(function(event) {
    	  
    	  var producer = $('#stackedFirstName').val();
    	  var model = $('#stackedLastName').val();

    	  var json = { "titulo" : producer, "status" : model};
    	  
        $.ajax({
        	url: $("#stackedForm").attr( "action"),
        	data: JSON.stringify(json),
        	type: "POST",
        	
        	beforeSend: function(xhr) {
        		xhr.setRequestHeader("Accept", "application/json");
        		xhr.setRequestHeader("Content-Type", "application/json");
        		$(".error").remove();
        	},
        	success: function(pelicula) {
        		var respContent = "";
        		
		  		respContent += "<span class='success'>Smartphone was created: [";
		  		respContent += pelicula.titulo + " : ";
		  		respContent += pelicula.status + " : " ;
		  		respContent +=  "]</span>";
        		
        		$("#postResultMsg").html(respContent);   		
        	},
        	error: function(jqXHR, textStatus, errorThrown) {
        		var respBody = $.parseJSON(jqXHR.responseText);
        		var respContent = "";
        		
        		respContent += "<span class='error-main'>";
        		respContent += respBody.message;
        		respContent += "</span>";
        		
        		$("#postResultMsg").html(respContent);
        		
        		$.each(respBody.fieldErrors, function(index, errEntity) {
        			var tdEl = $("."+errEntity.fieldName+"-info");
        			tdEl.html("<span class=\"error\">"+errEntity.fieldError+"</span>");
        		});
        	}
        });
         
        event.preventDefault();
      });
       
    });   