<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
<style>

.container {
    max-width: 1000px;
    width: 50%;
    background-color: #fff;
    margin: auto;
    padding: 15px;
    box-shadow: 0 2px 20px #0001, 0 1px 6px #0001;
    border-radius: 4px;
    overflow-x: auto;
    }
    ._table {
    text-align:center;
    }
    ._save {
	background-color: #0000a0!important ;
	color: white;
	float: right;
	}
</style>
</head>
<body>

<form id= "search-form"  method="POST" >
<div class="container">
<div id="feedback"></div>

<h1 style="color: green;">Registration</h1>

    <table class="_table">
	<thead> 
	<tr>
	<th>Name</th>
	<th>User Id</th>
	<th>Password</th> 
	&nbsp;
	<th width="50px"> 
	
	</th> 
	</tr>
	</thead>
	<tbody id="table_body">
	
	<tr>
	<div id="new"></div>
	<td><input type="text" id="Name"  name="Name"  class="form_control" placeholder="Please enter name"></td> 
	<td><input type="text" id="usrname" name="usrname" required  placeholder="Please enter user_id"></td>
    <td><input type="password" id="psw" name="psw" placeholder="Please enter password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required></td>
	</tr>
	
	<tr>
	<th>Phone No</th>
	<th>Email</th>
	<th>Address</th>
	
	&nbsp;
	<th width="50px">
	
	<tr>
	
	<td><input type="text" id="phone"  name="Phone No"  class="form_control" placeholder="Please enter phone_no"></td> 
	
	<td><input type="text" id="email" name="Email" required  placeholder="Please enter email_id"></td>
	<td><input type="text" id="address"  name="Address"  class="form_control" placeholder="Please enter Address"></td> 
	</tr>
	
	<tr><button onclick="myFunction()" class="_save"> Save </button></tr>
	
	</tbody>
	</table>
	
</div>

</form>
</body>
<script type="text/javascript">
var data=${data};
console.log(data);
console.log(data.employeeId);
var dt= data.employeeId;
console.log(dt);
console.log(data.employeeId.labelName);



var arr =[];
function myFunction(){
	alert("aa");
	var str = document.getElementById("Name");
	var str1 = document.getElementById("Name").value;
	var str2 = document.getElementById("usrname").value;
	var str3 = document.getElementById("psw").value;
	var str4 = document.getElementById("phone").value;
	var str5 = document.getElementById("email").value;
	var str6 = document.getElementById("address").value;
	console.log(str);
	console.log(str1);
	console.log(str2);
	console.log(str3);
	console.log(str4);
	console.log(str5);
	console.log(str6);
	arr.push(str1, str2,str3,str4 , str5, str6);
	console.log(arr);
	var data= "data="+arr;
	console.log(data);
	
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

</html>