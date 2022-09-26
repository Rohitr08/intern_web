 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	
</head>
<body>
<%-- <form action="processform" method="POST"   > --%>
<form id="search-form"  method="POST"  >
<div class="container">
<div id="feedback"></div>
	
	<table id = "tid" class="_table">
	<thead> 
	<tr>
	<th>LabelName </th>
	<th>Field Type</th>
	<th>Placeholder</th>
	<th>Validation</th> 
	<th width="50px">
	
	<div class="action_container">
<!-- 	<href class="success" onclick="create_tr('table_body')"> Add More <i class="fa fa-plus"> </i> </href> -->
	<input type='button' id='but_add' value='Add new'>
	</div> 
	</th>
	
	&nbsp;
	
	<th width="50px"> 
	
	<div class="action_container"> 
	<button onclick="myFunction()" class="_save"> Save </button>
	</div>
	</th> </tr></thead>
	<tbody id="table_body">
	
	<tr class= "r" id = "s">
	<div id="new_chq"></div>
	<td><input type="text"  id = "labelName0" name="labelName"  class="form_control" placeholder="Please enter field name" autocomplete="off"></td> 
	<td><select  class="form_control" id="Field_Type" name="Field_Type" autocomplete="off">
	<option selected disabled>Select</option>
						   <option value="Text Box">Text Box</option>
						   <option value="Drop Down">Drop Down</option>
						   <option value="Radio Button">Radio Button</option>
		</select></td>
	<td><input type="text"  id="Placeholder"  class="form_control" name="Placeholder" placeholder="Please Enter Placeholder" autocomplete="off"></td>
    <td><select  class="form_control" id="validation" name="validation"  autocomplete="off">
    <option selected disabled>Select</option>
    <option value="Mandtory">Mandatory</option>
	<option value="Optional">Optional</option>
	</select></td>
				
	<td>
	<div class="action_container">
	<href class="danger" onclick="remove_tr(this)"> Remove <i class="fa fa-close"> </i> </href> 
	</div>
	
	
	
	</tr></tbody>
	</table>
</div>

	<script type="text/javascript">
	
		var jArray =[];
	var i=0,j=0;	
   function create_tr(table_id) {
		var table_body = document.getElementById(table_id),
			first_tr = table_body.firstElementChild,
		 tr_clone = first_tr.cloneNode(true);
		table_body.append(tr_clone);
		 clean_first_tr(table_body.firstElementChild);
	    i++;
	   }
   
   var n=0;
   $(document).ready(function(){
	   
	   $('#but_add').click(function(){
	n=n+1;/* 
	    // Selecting last id 
	    var lastname_id = $('.r input[type=text]:nth-child(1)').last().attr('id');
	    var split_id = lastname_id.split('_');

	    // New index
	    var index = Number(split_id[1]) + 1; */

	    // Create clone
	    for(i=1;i<=n;i++){
	    var newel = $('.r:last').clone(true);

	    // Set id of new element
	    
	    $(newel).find('input[type=text]:nth-child(1)').attr("id","labelName"+i);
	     $(newel).find('input[type=text]:nth-child(2)').attr("id","Field_Type"+i);
	    $(newel).find('input[type=text]:nth-child(3)').attr("id","Placeholder"+i);
	    $(newel).find('input[type=text]:nth-child(4)').attr("id","validation"+i);
	    // Set value
	    $(newel).find('input[type=text]:nth-child(1)').val("");
	    $(newel).find('input[type=text]:nth-child(2)').val("");
	    $(newel).find('input[type=text]:nth-child(3)').val("");
	    $(newel).find('input[type=text]:nth-child(4)').val("");
	    }
	    // Insert element
	    $(newel).insertAfter(".r:last");
	   });

	  });
	    

	  function clean_first_tr(firstTr) {
		let children = firstTr.children;

		children = Array.isArray(children) ? children 
		: Object.values(children);
		children.forEach(x => {
			if (x !== firstTr.lastElementChild) 
		{
			x.firstElementChild.value = '';
		} 
		                      });
	                                  }   

	 function remove_tr(This) {
		var del= This.closest('tbody').childElementCount;
		if ( del== 1) 
		{
			alert("You Don't have Permission to Delete This ?");
	    }
		else
		{
			This.closest('tr').remove();
		}
	                         }

	 function myFunction() {
		 n= n+1;
			    var del= table_body.closest('tbody').childElementCount;
			 console.log(del);
			 
			 
			 var search = {}
			 
			 for(var j=0;j<n;j++){
				 var formData = new FormData();
				    //formData.append('labelName', $("#labelName"+j).val());
				  
				   // formData.append('Field_Type', 'value2');
				 console.log(formData);
			 for(var i=1;i<del;i++){
				 
			//search["labelName"] = $("#labelName"+j).val();
				
		     search["labelName"] = $("#labelName"+j).val();
		     search["Field_Type"] = $("#Field_Type").val();
		     search["Placeholder"] = $("#Placeholder").val();
		     search["validation"] = $("#validation").val();
		     }
			 console.log(search);
			 jArray.push(search);
			  
			 }
			 
			  
			  /* var table = document.getElementById("table_body");
			 
			  for (var i = 0, row; row = table.rows[i]; i++){
					var str1 = document.getElementById("labelName").value;
					var str2 = document.getElementById("Field_Type").value;
					var str3 = document.getElementById("Placeholder").value;
					var str4 = document.getElementById("validation").value;
			  }
			  
			  jArray.push(str1,str2,str3, str4); */
			 
	 
			  
		       
		     
		  /* var del= table_body.closest('tbody').childElementCount;
		     console.log(del);
		     var tArray = new Array();
		     $("input[name=labelName]").each(function() {
		     tArray.push({labelName : $("input[name=labelName]").val()
		        	})
		        	}); */
	
		   
		      $.ajax({
		    	  
		         type : "POST",
		         contentType : "application/json",
		         url : "getData",
		         data : JSON.stringify(jArray),
		         timeout : 100000,
		         success : function(data)
		         {
		        	 console.log("SUCCESS: ", data);
		         },
		         error : function(e)
		         {
		             console.log("ERROR: ",e);
		         }, 
		          
		         done : function(e)
		         {
		             console.log("DONE");
		             enableSearchButton(true);
		         } 
		             });
		         alert("Data submitted successfully");
		         }
		      
		     
		            
		            
		</script>
		
		<style>
		{
		box-sizing: border-box;
        padding: 0;
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
        }
        
        body
        {
    background-color: #efefef;
    padding: 25px;
        }
        
        .container {
    max-width: 1000px;
    width: 100%;
    background-color: #fff;
    margin: auto;
    padding: 15px;
    box-shadow: 0 2px 20px #0001, 0 1px 6px #0001;
    border-radius: 5px;
    overflow-x: auto;
                   }

._table {
    width: 100%;
    border-collapse: collapse;
    padding: 15px;
    text-align: center;
}
._table:is(th , td) {
    border: 1px ;
    padding: 10px ,10px;
    text-align: center;
}

/* form field design start */
.form_control {
    border: 1px solid #0002;
    background-color: transparent;
    outline: none;
    padding: 8px 12px;
    font-family: 1.2rem;
    width: 80%;
    color: #333;
    font-family: Arial, Helvetica, sans-serif;
    transition: 0.3s ease-in-out;
}

.form_control::placeholder {
    color: inherit;
    opacity: 0.5;
}

.form_control:is(:focus, :hover) {
    box-shadow: inset 0 1px 6px #0002;
}

.success {
    background-color: #400040!important;
}

.warning {
    background-color: #ebba33 !important;
}

.primary {
    background-color: #259dff !important;
}

.secondery {
    background-color: #00bcd4 !important;
}

.danger {
    background-color: #ff0000!important;
}

._save {
	background-color: #0000a0!important ;
	
}

.action_container {
    display: inline-flex;
}

.action_container>* {
    border: none;
    outline: none;
    color: #fff;
    text-decoration: none;
    display: inline-block;
    padding: 8px 14px;
    cursor: pointer;
    transition: 0.3s ease-in-out;
}

.action_container>*+* {
    border-left: 1px solid #fff5;
}

.action_container>*:hover {
    filter: hue-rotate(-20deg) brightness(0.97);
    transform: scale(1.05);
    border-color: transparent;
    box-shadow: 0 2px 10px #0004;
    border-radius: 2px;
}

.action_container>*:active {
    transition: unset;
    transform: scale(.95);
}
</style> 
  


 </form>
</body>
</html>