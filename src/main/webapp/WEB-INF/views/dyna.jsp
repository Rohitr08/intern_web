<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
<div class= "re" id= "reg"><h1>Registration</h1></div>	
</head>

<body>
<div class="gg" id="gg"></div>


</body>
<div class="sav"> 
</div>
<script type="text/javascript">

var data=${data};
console.log(data);

var arrLen = data.length;
console.log("length="+arrLen);

var iterator = data.values();
console.log(iterator.next().value);

/* for (var i = 0; i < data.length; i++) {
    console.log(data[i].labelName);
    
   } */
   
/* for(var i in data){
	 console.log(data[i].labelName);
	 console.log(i); */
	 
	 
	 for(var i in data){
	
	var ss="<table>";
	ss+="<td>";
	 //ss += data[i].labelName;
	 
	
	ss += "<td class='td_class'><label class='user-input-class'>" + data[i].labelName +":"+ "</label></td>"
	ss+= "<td> <input class='user-class' type='" + data[i].Field_Type + "' placeholder='" + data[i].Placeholder + "' id='" + data[i].labelName + "'";
	
	ss +="</table>";
	$("#gg").html(ss);
	
	 
	 $.ajax({
		  
		    type : "POST",
		    url : "showData",
		    data : data,
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
 
	<!--  <style>
	 
	 .re{
		 border-style: solid;
	 }
	 </style> -->
</script>





</html>