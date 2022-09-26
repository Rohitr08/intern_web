 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Page</title>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"
integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <style>
   
   
        table { width: 70%;
        text-align: center; }
        table, th, td { border: 0px;
            border-collapse: collapse; padding: 2px 3px; text-align: center;font-size:20px;height: 40px !important;
        }
        .gen{
 max-width: 1000px;
    width: 25%;
    background-color: #fff;
    margin: center;
    overflow-x: auto;
    bottom:10;      
    box-shadow: 0 2px 20px #0001, 0 1px 6px #0001;                  
    left:5;
    margin-top: 100px;
}
.add-btn{
background-color: 	#C0C0C0;
color : #ffffff ;
width:80px;
height:40px;
 font-weight: bold;
 text-align:center;
 border-radius: 5px;
 box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
 
}
.save-btn{
background-color:	#008000 ;
color : #ffffff ;
width:80px;
height:40px;
 font-weight: bold;
 border-radius: 5px;
 box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
 
 /* float: right; */
}
.delete-btn{
background-color: #ff0000!important;
color : #ffffff ;
width:80px;
height:40px;
 font-weight: bold;
 border-radius: 5px;
 box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
 
 
}

.form-control {
    /* border: 1px solid #0002; */
    background-color: 		#f0ffff;
    outline: none;
    padding: 8px 12px;
     font-family: 1.2rem;
    width: 80%;
   
    color: #333;
     font-family: Arial, Helvetica, sans-serif;
    transition: 0.8s ease-in-out;
   
    border: 3px solid #ccc;
transition: 0.5s;
/* padding: 8px; */
/* font-size:100%; */
box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
border-spacing:2px;
   
   
}
.container {
    max-width: 1200px;
    width: 200%;
    background-color: #e0ffff;
    padding: 15px;
    margin: auto;
    box-shadow: 0 2px 20px #0001, 0 1px 6px #0001;
    border-radius: 5px;
    overflow-x: auto;
}
.tab-class{
text-align: center;
width: 100%;
font-family: 1.2rem;
}
.submit{
color: red;
text-align: center;
margin: auto;
}
.label-validation{
color: red;
}
.del_class_option{
background-color:#FB917B;
color:white;
}
.add_option_button{
color : white;
background-color:black;
}
.select-fields{

}
.dropdownM{
width:120px;
height:40px;

}
.body_class{
background-color:#F0F0F0;
}
.mandatory_class{

}
.select_mandatory_class{

height:200px;
}
.man_validation{
color:red;
}
.check_input_class{
height:50px;
width:250px;
}
.ss{
color:red;
}

table, th, td {
    border: 0px;
    border-collapse: collapse;
    padding: 6px 3px;
    text-align: center;
    font-size: 28px;
    height: 40px !important;
}

    </style>
</head>
<body onload="createTable()" class="body_class">
<div class ="container">
    <p>
        <input type="button" id="addRow"  class = "add-btn" value="Add More" onclick="addRow()" />
    </p>
    <div id="cont"></div>  
    <p><input type="button" id="bt" value="Save" class ="save-btn" onclick="submit()"/></p>
         <!-- <p><input type="button" id="btw" value="Show"  onclick="user_show()"/></p> -->    
      </div>
      <div class ="gen" id="gen"></div>
      <center><span id = "label-validation" class= "label-validation"></span></center>
      <center><h2><span id = "success" class="submit"></span></h2></center>
      <div class ="dat" id="dat"></div>
      <div class="" id=""></div>
      <center><span id = "label-validation" class= "label-validation"></span></center>
      <span id="man_validation" class="man_validation"></span>
      <div id="selected-fields" class ="selected-fields"></div>
      <div class="check_div" id="check_id"></div>
      <div class="dropdown_mandatory" id="dropdown_mandatory"></div>
      <div class="mandatory_class" id="mandatory_class"></div>
      <center><div class="ss" id="ss"></div></center>
   
       

</body>

<script>
    var arrHead = new Array();
    var rowCnt;
    var ele;
    arrHead = ['', 'Label Name', 'Field Type','Placeholder', 'Validation'];
    var fieldsArray = [];
    var arrValues = [];
    var jstring;
    var jsstring;
    var optionsArray = [];
    var optionsArrayJString = ""
    var optionsList = "";
    var newArray =[];
    var newOptionArray =[];
    var selected ="";
    var mandatoryArray=[];
    var checkArray=[];
    var checkBox_data;
   
    function createTable() {
        var empTable = document.createElement('table');
        empTable.setAttribute('id', 'empTable');
        empTable.setAttribute('class','tab-class');
        var tr = empTable.insertRow(-1);

        for (var h = 0; h < arrHead.length; h++) {
            var th = document.createElement('th');
           
            th.innerHTML = arrHead[h];
            tr.appendChild(th);
           
        }

        var div = document.getElementById('cont');
        div.appendChild(empTable);  
    }

   
    function addRow() {
        var empTab = document.getElementById('empTable');
         rowCnt = empTab.rows.length;    
        console.log("rowcount="+rowCnt);
        var tr = empTab.insertRow(rowCnt);
       
       

        for (var c = 0; c < arrHead.length; c++) {
       
            var td = document.createElement('td');        
            td = tr.insertCell(c);
             if( c == 1) {
                ele = document.createElement('input');
               ele.setAttribute('type', 'text');
               
               ele.setAttribute('id',"txt"+rowCnt+c);
               ele.setAttribute('name',"txt"+rowCnt+c);
               ele.setAttribute('class','form-control');
               
              
               //console.log(ele);
               td.appendChild(ele);
           }

             else if (c == 0) {  
                var button = document.createElement('input');
                button.setAttribute('type', 'button');
                button.setAttribute('value', 'Delete');
                button.setAttribute('class','delete-btn');
                button.setAttribute('onclick', 'removeRow(this)');

                td.appendChild(button);
            }
           
             else if(c == 2){
            ele = document.createElement('select');
            ele.setAttribute('id',"txt"+rowCnt+c)
            ele.setAttribute('class','form-control');
            //td.appendChild(ele);
           
            var array = ["Please Select","Text Box","Password","Email","Number","Date","File","Drop Down"];

           
            var selectList = document.createElement("select");
            selectList.setAttribute("id","txt"+rowCnt+c);
            selectList.setAttribute("class", "form-control");
            selectList.setAttribute("name","txt"+rowCnt+c);
            selectList.setAttribute("class","form-control");
            td.appendChild(ele);

           
            for (var i = 0; i < array.length; i++) {
               var option = document.createElement("option");
               if(i==0){
                option.setAttribute('selected', "selected"); // selected="true"
                option.setAttribute('disabled',"disabled");  
               }
               option.setAttribute("value", array[i]);
               option.text = array[i];
               ele.appendChild(option);
            }
            }  
           

            else if(c == 3) {
                 ele = document.createElement('input');
                ele.setAttribute('type', 'text');
                /* ele.setAttribute('value',''); */
                ele.setAttribute('id',"txt"+rowCnt+c);
                ele.setAttribute('name',"txt"+rowCnt+c);
                ele.setAttribute('class','form-control');
                td.appendChild(ele);
            }
           

            else if(c == 4){
            ele = document.createElement('select');
            ele.setAttribute('id',"txt"+rowCnt+c)
            ele.setAttribute('class','form-control');
            //td.appendChild(ele);
           
           
            var array = ["Please Select","Mandatory","Optional"];

           
            var selectList = document.createElement("select");
            selectList.setAttribute("id","txt"+rowCnt+c);
            selectList.setAttribute("class", "form-control");
            selectList.setAttribute("name","txt"+rowCnt+c);
            td.appendChild(ele);

           
            for (var i = 0; i < array.length; i++) {
               var option = document.createElement("option");
                if(i==0){
                option.setAttribute('selected', "selected"); // selected="true"
                option.setAttribute('disabled',"disabled");  
               }
               option.setAttribute("value", array[i]);
               option.text = array[i];
               ele.appendChild(option);
            }
            }
             
             $("#txt"+rowCnt+c).on("change", function(e) {
              selected=$("#txt"+rowCnt+"2").find(":selected").val();
              //console.log(selected);
             
              if(selected =="Drop Down"){
              var input_field = "<table id='option_table'>";
              input_field ="<div id='option_div' class='option_div'>";
              input_field+="<tr><td><label class='user'> Fill options</label></td></tr>";
              input_field+="<tr><td><input id='option-text-field' class='w-25 rounded-3 border-1' type='text' name='option-text-field'/>";
              input_field+="<button type ='button' id='add_option_button' class='add_option_button' onclick ='add_option()'>Add</button>";
              input_field+="</td>";
              input_field+="</tr>";
              input_field+="</div>";
              input_field+= "</table>";
              $("#selected-fields").html(input_field);

              //$("#option-text-field").attr("placeholder")
             
              /* var dd =null;
              optionsArray.push(dd);
              console.log(optionsArray); */
             
              }
             
             });
             
             $("#txt"+rowCnt+c).on("change", function(e) {
              selected_validation =$("#txt"+rowCnt+"4").find(":selected").val();
              if (selected_validation =="Mandatory"){
              var drop ="<table>";
              drop+="<tr><td class='mandatory_class'><label class='select_mandatory_class'> "+ "Select Mandatory Condtion" +":</label><select class='dropdownM' id='dropdownM' name='dropdownM'>";
              drop+="<option disabled selected>" + "Select" + "</option>";
              drop+="<option >" + "Numeric Only" + "</option>";
              drop+="<option >" + "Alphabet Only" + "</option>";
              drop+="<option >" + "AlphaNumeric" + "</option>";
              drop+="<option >" + "Email" + "</option>";
              drop+="<option >" + "Date" + "</option>";
              drop+="</td></tr>"
              drop+="<table>";
              } $("#dropdown_mandatory").html(drop);
             });
             
             
             $("#txt" + rowCnt+c).on("change", function(e){
            checkBox_data =$("#txt"+rowCnt+"2").find(":selected").val();
            if(checkBox_data == "CheckBox"){
            //console.log(checkBox_data);
            var check ="<div class='check_div' id='check_id'>";
            check+="<textarea class='check_input_class' id='check_input_id'>";
            $("#check_id").html(check);
           
            }
             });
             
             
        }
             if(rowCnt >1 &&rowCnt<50){
            if(selected_validation =="Mandatory"){
             var man =document.getElementById("dropdownM").value;
             //console.log(man);
             
             if(man != "" && selected_validation =="Mandatory"){
             mandatoryArray.push(man);
           
             console.log(mandatoryArray);}
              if (selected_validation == "Optional"){
            mandatoryArray.push("optional");
             }
            }
           /*  if(selected_validation =="Mandatory" ){
            if(man =="" || man =="Select"){
            document.getElementById("man_validation").innerHTML="* Please select mandatory condtion";
            return false;
            }
            } */
             }
              if(rowCnt >1 && rowCnt<100){
             if(checkBox_data =="CheckBox"){
             var checkDA =document.getElementById("check_input_id").value;
          console.log(checkDA);
          if(checkDA != "" && checkDA.trim().length!=0){
          checkArray.push(checkDA);
          }
             }
             else{
                checkArray.push("none");
                }
             console.log(checkArray);
              }
             
       
         /* var empTab = document.getElementById('empTable');
        console.log(empTab);
        rowCnt = empTab.rows.length;
        console.log(rowCnt);
       
        var fields = "<table>";
        for(var i=1;i<rowCnt;i++){
        var gg2 = document.getElementById('txt'+i+'2').value;
        if(gg2 == "Drop Down"){  
        for (var k in data) {
        fields+="<tr><td><label> "+ data[k].label +":</label></td><td><select class='w-100'>";
    fields+="<option disabled selected>" + data[k].placeholder + "</option>";
    for(var d in data[k].options){
    //console.log(data[k].options[d]);
    fields+="<option value='"+ data[k].options[d] +"'>"+ data[k].options[d] + "</option>";
   
   
    }
    fields+="</select></td><td><button class='btn btn-danger w-70' onclick='removeField(" + k + ")' id='" + k + "'>Remove</button></td>"
    fields+="</tr>";
    optionsList="";
    console.log(optionsList);}

        } } */
       
        /* newOptionArray.push({
        optionsArray
        });
        console.log(newOptionArray); */
        /* optionsArray.splice(0, optionsArray.length); */
       
       
        /* $("option_div").attr("style", "display:block");
        $("selected-fields").attr("style", "display:block"); */
        //$("option_div").css("visibility", "hidden");
       
       
       
    }
   /*  var empTab = document.getElementById('empTable');
    rowCnt = empTab.rows.length;
     for(var i=1;i<rowCnt;i++){
    $("#txt"+i+'2').on("change", function(e) {
    //console.log(e);
   
    let type=$("#txt"+i+'2').find(":selected").val();
    console.log(type);
    )}
    }  */

    function removeRow(oButton) {
        var empTab = document.getElementById('empTable');
        empTab.deleteRow(oButton.parentNode.parentNode.rowIndex);
    }
   
    
       
       
   
   

    function submit() {
   
        var myTab = document.getElementById('empTable');
               
        var empTab = document.getElementById('empTable');
        rowCnt = empTab.rows.length;
      
       
       
        var count =0;
        for(var i=1;i<rowCnt;i++){
       
        var gg1 = document.getElementById('txt'+i+'1').value;
        var gg2 = document.getElementById('txt'+i+'2').value;
        var gg3 = document.getElementById('txt'+i+'3').value;
        var gg4 = document.getElementById('txt'+i+'4').value;
        console.log("labelname="+gg1);
        var letters = /^[A-Za-z ]*$/;
        if(gg1.match(letters)){
      console.log("accepted="+gg1);
        }
        else{
        document.getElementById("ss").innerHTML="* Please enter aplhabet Label Name only";
        console.log("rejected="+gg1);
        return false;
      } 
 
       
        for(var l=1;l<i;l++){
    var ll1 = document.getElementById('txt'+l+'1').value;
    if(gg1==ll1){
    document.getElementById("label-validation").innerHTML="* Label Name cannot be repeated";
    return false;
    }
    }
        if(gg1 =="" || gg1.trim() ==""){
        console.log("null field");
        document.getElementById("label-validation").innerHTML="* Label Name is Mandatory";
        count = count+1;
        }
       
        else if(gg2 =="" || gg2.trim() =="" || gg2 =="Please Select"){
        document.getElementById("label-validation").innerHTML="* Field Type is Mandatory";
        count =count+1;
        }
        else if(gg4 =="" || gg4.trim() =="" || gg4 =="Please Select"){
    document.getElementById("label-validation").innerHTML="* Validation is Mandatory";
    count =count+1;
    }
       
        if(gg4 == "Mandatory" && mandatoryArray !=""){
       
        }
       
        if(gg2 == "CheckBox" && gg4 !="Mandatory" ){
        fieldsArray.push({
        labelName : gg1,
        Field_Type : gg2,
        checkBox_Data : checkArray,
        Placeholder : gg3,
    Validation : gg4
        });
        }
        else if(gg4 =="Mandatory" && gg2 =="CheckBox"){
       
        fieldsArray.push({
            labelName : gg1,
            Field_Type : gg2,
            checkBox_Data : checkArray,
            Placeholder : gg3,
        Validation : gg4,
        mandatory_validation : mandatoryArray
            });
        }
        else if(gg4 =="Mandatory" && gg2 !="CheckBox"){
       
        fieldsArray.push({
            labelName : gg1,
            Field_Type : gg2,
            DropDown_array : optionsArray,
            Placeholder : gg3,
        Validation : gg4,
        mandatory_validation : mandatoryArray
            });
        }
       
        else{
        fieldsArray.push({
            labelName : gg1,
            Field_Type : gg2,
            Placeholder : gg3,
            Validation : gg4,
            DropDown_array : optionsArray
            });
       
        }
       
       
       
        }
        if(count ==0){


jsstring = JSON.stringify(fieldsArray);
console.log("DATA="+jsstring);

         
       // console.log(arrValues);
        jstring = JSON.stringify(arrValues);
        var jsonString =  jsstring;
        $.ajax({
       
   
        type : "POST",
       contentType : "application/json",
        url : "http://localhost:8080/springmvc/getData",
        data : jsonString,
        timeout : 100000,
       
         success : function(data) {
            console.log("SUCCESS123: ", data);
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
        show(jsonString);
        document.getElementById("success").innerHTML="Data Successfully Entered";
      /*   window.location.reload(); */
    }
       
    }
   
    function show(data){
   
    data = JSON.parse(data);
var fields = "<table>";

for (var k in data) {
if(1){
fields += "<tr><td><label class='user-input-class'>" + data[k].labelName + "</label></td><td><input class='user-class' type='" + data[k].Field_Type + "' placeholder='" + data[k].Placeholder + "' ";
if (data[k].Validation === "required") {
fields += "required";
}
fields += "</tr>";
}
}
fields += "</table>";
//console.log(fields);
//$("#gen").html(fields);



}
   
    function user_show(){
    jsstring = JSON.stringify(fieldsArray);
    var jsonString =  jsstring;
    var strr =null;
    //alert(jsonString);
    $.ajax({
         
     
        type : "POST",
       contentType : "application/json",
        url : "http://localhost:8080/springmvc/userData",
        data : jsonString,
        timeout : 100000,
       
         success : function(data) {
            console.log("SUCCESS: ", data);
         
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
   
    function displayAddedOptions(){
    var oop = document.getElementById("option-text-field").value;
   
    //console.log("Askdncv");
    /* console.log(oop); */
    optionsList="";
    console.log(optionsArray);
    for(let x in optionsArray){
    //console.log(x);
   
     optionsList += "<div class='single-option-list'  id='"+optionsArray[x]+"'><h6 class='option-list-text'>" + optionsArray[x]+"</h6>";
    optionsList += "<div class='option-list-clsBtn'><button  class='del_class_option' onclick=remove('" + optionsArray[x] + "') type='button' id='" + optionsArray[x] + "'>Delete</button></div></div>";

   
    }
   
   
    }
   
    function add_option(){
    var oop = document.getElementById("option-text-field").value;
    //console.log(oop);
    optionsArray.push(oop);
//console.log(optionsArray);
$("#option-text-field").val("");




    }
   
    function checkData(){
    var checkDA =document.getElementById("check_input_id").value;
    console.log(checkDA);
    }
   
</script>

</html>