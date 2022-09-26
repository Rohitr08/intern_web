<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
crossorigin="anonymous"></script>

<style type="text/css">
.body_class{
/*  background-color:#F8F8F8; */
background-color: LightGray;;

 border-bottom-width: 4px;
 
}


.save_class{
background-color: #3cb371;
color: #fff;
border-radius: 8px;
font-size: 20px;
box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
width:10%;
border-color:white;
padding: 10px 15px;
font-weight: bold;
float: right;
}

.header_h1_class{
color:#fff;
max-width: 1000px;
width: 200%;
background-color:	#40e0d0;
margin: auto;
padding:40px;
box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
padding-left:10px;
padding-top:20px;
padding-bottom:20px;
 border-bottom-color: #D0D0D0;
 border-bottom-style: inset;
 border-bottom-width: 4px;
}


.user-input-class{
  width: 85%;
  padding: 12px 30px;
  margin:auto;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
   background-color:#ffffe0;
}
 .user-class{
 width: 80%;
  padding: 12px 30px;
  margin:auto;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  background-color:	white;
  
 }
 
 .gen{
 padding:auto;
 }


.footer_class{
max-width: 1000px;
padding:40px;
width: 600%;
max-height:1000px;
box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
height:40%;
padding-left:10px;
padding-top:6px;
padding-bottom:50px;
background-color:#40e0d0	;

}
table{
width:100%;

}
.container {
    max-width: 1000px;
    width: 100%;
    height:500px !important;
    background-color: 	#f0f8ff;
    background-image: 	#f0f8ff;
    padding: 25px;
    margin:auto;
    padding-right:25px;
    box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
    overflow-y: auto;
     border-bottom-color: #D0D0D0;
 border-bottom-style: inset;
 border-bottom-width: 4px;
    }
</style>









<!-- <style type="text/css">
.save_class{
background-color: #ffffff;
color: #6495ED;
border-radius: 8px;
font-size: 20px;
box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
width:10%;
border-color:white;
padding: 10px 15px;
font-weight: bold;
float: right;
}
.submit{
color: red;
text-align: center;
margin: auto;
transition: 0.9s ease-in-out;
}
.submit:focus{
border:0.5em solid #0000cc;
}

.container {
    max-width: 1000px;
    width: 500%;
    height:500px !important;
    background-color: #F0F0F0;
    padding: 25px;
    margin:auto;
    padding-bottom:25px;
    box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
    overflow-y: auto;
     border-bottom-color: #D0D0D0;
 border-bottom-style: inset;
 border-bottom-width: 4px;
    }
   

.title_class{
color:red;
}
.user-class{

 margin-top:0;
width: 80% !important;
border: 3px solid #ccc;
transition: 0.5s;
padding: 8px;
font-size:110%;
box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
border-spacing:2px;
 vertical-align: top !important;  
 border-radius: 4px;

}
.user-class:focus {
  background-color: #0001;
}
.user-input-class{
width: 80% !important;
height: 80% !important;
margin-top:30px !important;

  padding: 14px 20px;
  font-size: 140%;
  vertical-align: text-bottom;
 
}
table{
width:100%;

}
.body_class{
background-color:#F8F8F8;
}
.span-class{
color:red;
font-size: 80%;
padding-bottom:5px;
visibility: hidden;
margin:auto;
font-weight:bold;
display: block;
}
td{
color:black;
vertical-align: top !important;
}
.td_class{
padding-bottom:1px;
}

.server_validation{
color:red;
font-weight: bold;
}
.header_class{
width:100%;
height:100%;
margin:0px;

}
.header_h1_class{
color:#fff;
max-width: 1000px;
width: 200%;
background-color:#85B8D8;
margin: auto;
padding:40px;
box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
padding-left:10px;
padding-top:20px;
padding-bottom:20px;
 border-bottom-color: #D0D0D0;
 border-bottom-style: inset;
 border-bottom-width: 4px;
}
.footer_class{
max-width: 1000px;
padding:40px;
width: 600%;
max-height:1000px;
box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
height:40%;
padding-left:10px;
padding-top:6px;
padding-bottom:50px;
background-color:#85B8D8;

}
.col-md-6{

}
.img_class{
width:120px;
height:50px;
padding-left:640px;
}
.serv_error{
color:red;
}

.email_validation{
color:red;
}
.numeric_only{
color:red;
}
.alphabet_only{
color:red;
}
.alphaNumeric_validation{
color:red;
}
.check_b{
width:40px;
}
.check_td{
width :50px;

}
.checkBox-class{
width:50px;
height:20px;
}

</style> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class ="body_class">
<div class="header_class"><h1 class="header_h1_class" >Registration
 <!-- <img class = "img_class" src="https://wheebox.com/assets/images/wheebox_logo.png" alt="" > -->
 
</h1>
</div>

<div class ="container">
<div class ="title_class"></div>
<%--
<%String data = (String)request.getAttribute("data");%>
 <%=data %> --%>

 <form class="form_class">
<div class="col-md-6">
<div class ="gen" id="gen"></div><br>
<div class="server_validation" id="server_validation"></div>
<div class="email_validation" id="email_validation"></div>
<div class="numeric_only" id="numeric_only"></div>
<div class="alphaNumeric_validation" id="alphaNumeric_validation"></div>
<div class="alphabet_only" id="alphabet_only"></div>
<div></div>
<div class="serv_error" id="serv_error"></div>

</div>
 </form>
 
 </div>
 <center>
 <footer class="footer_class">
<button type="button" id="save_btn" name="save_btn" class="save_class" onclick="submitData()" >Save </button>
</footer></center>
<center><h2><span id = "success" class="submit"></span></h2></center>

 </body>
<script>
var fieldsArray = [];
var optionsArray = [];
var optionsArrayJString = "";
var optionsList = "";
show();
function show(){
var data =${data};
console.log(data);
 //a = JSON.parse(data);

var fields = "<table>";
var i =1;
for (var k in data) {
if(i%2!=0){
fields += "<tr>";
}
if(data[k].Field_Type =="Text Box" || data[k].Field_Type =="Password" || data[k].Field_Type =="Email" || data[k].Field_Type =="Number" || data[k].Field_Type=="Date" || data[k].Field_Type=="File"){
fields += "<td class='td_class'><label class='user-input-class'>" + data[k].labelName + "</label></td><td><input class='user-class' type='" + data[k].Field_Type + "' placeholder='" + data[k].Placeholder + "' id='" + data[k].labelName + "' ";
}

else if(data[k].Field_Type =="CheckBox"){
var sq= data[k].checkBox_Data;
for(var l in sq){
if(k ==l){

fields += "<td class='td_class'><label class='user-input-class'>" + data[k].labelName + "</label></td><td><input class='checkBox-class' type='" + data[k].Field_Type + "' placeholder='" + data[k].Placeholder + "' id='" + data[k].labelName + "' ";
}
}
}

else{
fields+="<td class='td_class'><label class='user-input-class'> "+ data[k].labelName +":</label></td><td><select class='user-class'>";
fields+="<option disabled selected>" + data[k].Placeholder + "</option>";
for(var d in data[k].DropDown_array){
fields+="<option value='"+ data[k].DropDown_array[d] +"'>"+ data[k].DropDown_array[d] + "</option>";
}
}

fields += "autocomplete ='off'";

fields +="/>";

fields+="<span id='validation-span' class='span-class'>*Required Field</span>";

fields += "</td>";



if(i%2==0){
fields += "</tr>";
}
i=i+1;
//console.log(i);
}
fields += "</table>";
//console.log(fields);
$("#gen").html(fields);
}
//document.getElementById("Login Id").addEventListener("mouseover", mouseOver);
//document.getElementById("Login Id").addEventListener("mouseout", mouseOut);

 function mouseOver() {
 document.getElementById("Login Id").style.color = "black";
}
function mouseOut(){
var s=document.getElementById("Login Id").value;
}

/*
$.ajax({
     
   
        type : "POST",
       contentType : "application/json",
        url : "http://localhost:8080/springmvc/loginIdCheck",
        data : s,
        timeout : 100000,
       
         success : function(data, ) {
           // console.log("SUCCESS123: ", data);
             if(data =="Error"){
            document.getElementById("server_validation").innerHTML="* Login id has been taken";
       document.getElementById("Login Id").style.borderColor = "red";
             }
           
            //$("#dat").html(data);
            //display(data);
        },
         error : function(e) {
            console.log("ERROR: ",e);
           //display(e);
        },
        done : function(e) {
            console.log("DONE");
            enableSearchButton(true);
        }
       
       
    }); 
    
    }*/



function submitData(){

var data =${data};
//console.log(data);
var dataJson = {};
var noOfRequiredFields = 0;
for (var k in data) {

var sf = data[k].labelName;
var sd = document.getElementById(data[k].labelName).value;
//console.log(sd);

//console.log(sd);
//console.log(sf);
dataJson[sf] = sd;
if(data[k].Validation == "Mandatory" && sd.trim().length == 0){

//console.log("aa"+sf);
//document.getElementById('validation-span').innerHTML="* "+sf+" is required";

noOfRequiredFields++;
if (document.getElementById(sf).nextElementSibling) {
document.getElementById(sf).nextElementSibling.style.visibility= "visible";
}
} else {


if (document.getElementById(sf).nextElementSibling) {
document.getElementById(sf).nextElementSibling.style.visibility = "hidden";
}
}

var da = data[k].mandatory_validation;
console.log(da);
if(data[k].Validation =="Mandatory"){
//console.log(k+"numeric-1");
for(var l in da){

if( k == l ){

if(da[l] == "Numeric Only"){
//console.log(l+""+k);
//console.log(k+"numeric-2");
//console.log(da[l]+""+k);
var numbers = /^[0-9]+$/;
     if(sd.match(numbers)){
     
//console.log("accepted");
     }

     else{
     document.getElementById("numeric_only").innerHTML="* Please enter numeric input only";
     document.getElementById(sf).style.borderColor = "red";
     return false;
     }
}
}
}
}

if(data[k].Validation == "Mandatory"){

for(var o in da){

if(o == k ){

if(da[k] == "Alphabet Only"){
  var letters = /^[A-Za-z ]*$/;
  if(sd.match(letters)){
//console.log("accepted");
  }
  else{
  document.getElementById("alphabet_only").innerHTML="* Please enter aplhabet input only";
  document.getElementById(sf).style.borderColor = "red";
  return false;
}}}}}

if(data[k].Validation =="Mandatory"){
for(var c in da){
if(c == k){
if(da[k] =="Email"){
var atposition=sd.indexOf("@");  
var dotposition=sd.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=sd.length){  
document.getElementById("email_validation").innerHTML="* Please enter email address";
document.getElementById(sf).style.borderColor = "red";
 return false;  
 }
}
}
}
}

if(data[k].Validation =="Mandatory"){
for(var w in da){
if(w == k){
if(da[k] =="AlphaNumeric"){
var regEx = /^[0-9a-zA-Z]+$/;
if( sd.match(regEx) ) {
console.log("AlphaNumeric passed");
}
else{
      document.getElementById("alphaNumeric_validation").innerHTML="* Please enter Alpha-Numeric only";
document.getElementById(sf).style.borderColor = "red";
      return false;
   }}}}}}

   if(noOfRequiredFields ==0){  

//console.log(dataJson);

/* var search = {}
    search["name"] = $("#Name").val();
    search["email"] = $("#Email").val(); */
    //console.log(search);
var jsstring = JSON.stringify(dataJson);
var formString=JSON.stringify(data);
var jsonString =  jsstring;

console.log("Admin Data="+jsonString);
console.log("last Data="+dataJson);



//console.log(Object.keys(jsonString));

//console.log(fieldsArray);
$.ajax({
     
   
         type : "POST",
        contentType : "application/json",
         url : "http://localhost:8080/springmvc/submitData",
         data : jsonString ,
         timeout : 100000,
       
          success : function(data, ) {
             console.log("SUCCESS123: ", data);
             if(data =="Error"){
            document.getElementById("server_validation").innerHTML="* Login id has been taken";
             }
             else if(data == "server-error"){
            document.getElementById("serv_error").innerHTML="* Some fields are empty";
            /* console.log("aaaaaaaaaaaaa"); */
             }
             else{
            document.getElementById("success").innerHTML="Data Successfully Entered";
           
           
             }
             //$("#dat").html(data);
             //display(data);
         },
          error : function(e) {
             console.log("ERROR: ",e);
            //display(e);
         },
         done : function(e) {
             console.log("DONE");
             enableSearchButton(true);
         }
         
         
     });



     }  
}


</script>
</html>
