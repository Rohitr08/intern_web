package springmvc.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.json.JSONParser;
import org.apache.tomcat.util.json.ParseException;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.cj.x.protobuf.MysqlxCrud.DataModel;
import com.mysql.cj.xdevapi.JsonArray;
import com.mysql.cj.xdevapi.JsonParser;

import springmvc.Service.HomeService;
import springmvc.model.Admin;
import springmvc.model.HomeModel;
import springmvc.model.User;


@Controller
public class HomeController {


@Autowired
HomeService homeService;

@RequestMapping(value="/abc")
public String home() {
return "NewFile";
}
@RequestMapping(value="/get")
public void add(HttpServletRequest request){

BufferedReader reader;
String s = null;
try {
reader = new BufferedReader(new InputStreamReader(request.getInputStream()));
s = reader.readLine();
System.out.println(s);

HomeModel con = new HomeModel();

con.setLabel_Name(s);


this.homeService.addData(con);
} catch (IOException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}


}



@RequestMapping(value="za")
public String regData() {
return "demo";
}
@RequestMapping(value="/userData")
public ModelAndView user_form(HttpServletRequest request) {
System.out.println("ss");
ModelAndView mv = null;
 mv= new ModelAndView("user");
 mv.addObject("data", "a");
 
return mv;
}
@RequestMapping(value="/userForm")
public ModelAndView getDetails() {
String getdata = this.homeService.getDetails();
//System.out.println(getdata.toString());
ModelAndView mv = null;
 mv= new ModelAndView("user");
 mv.addObject("data", getdata);
 mv.setViewName("dynamic");
 
return mv;

}
@RequestMapping(value="/submitDataa")
public @ResponseBody String saveData(HttpServletRequest request,HttpServletResponse response) {
BufferedReader reader;
String s = null;
try {

reader = new BufferedReader(new InputStreamReader(request.getInputStream()));
s = reader.readLine();

//System.out.println(s);

 JSONObject o = new JSONObject(s);

 String str = o.toString();
 //System.out.println(o);
 
 List val_data = this.homeService.validate_data();
 int strin = 0;
for(int i = 0 ; i<val_data.size() ; i++) {
//System.out.println(val_data.get(i));

 if(val_data.get(i).equals(o.getString("Login Id")))
 {
 strin ++;
 }
}

if(strin !=0 ) {

System.out.println("Error");
ModelAndView mv = null;
 mv= new ModelAndView("user");
 mv.addObject("msg", "* This Login Id has been taken");
return "Error";
}

}

catch (IOException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return "";
}

  @RequestMapping(value = "/loginIdCheck")
  public @ResponseBody String str(HttpServletRequest request,HttpServletResponse response) {
 BufferedReader reader;
 String s = null;
 try {

reader = new BufferedReader(new InputStreamReader(request.getInputStream()));
s = reader.readLine();
System.out.println(s);
List val_data = this.homeService.validate_data();
int strin = 0;
for(int i = 0 ; i<val_data.size() ; i++) {
//System.out.println(val_data.get(i));

 if(val_data.get(i).equals(s))
 {
 strin ++;
 }
}

if(strin !=0 ) {

System.out.println("Error");
ModelAndView mv = null;
 mv= new ModelAndView("user");
 mv.addObject("msg", "* This Login Id has been taken");
return "Error";
}
}
catch (IOException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
 return ""; }
 


@RequestMapping(value = "/validate_data")
public List validate_data() {
List val_data = this.homeService.validate_data();
for(int i = 0 ; i<val_data.size() ; i++) {
//System.out.println(val_data.get(i));

 if(val_data.get(i).equals("shivansh123"))
 {
 System.out.println("ss");
 }



}
//System.out.println(val_data);
return val_data;
}


@RequestMapping("/zac")
public ModelAndView data( ModelAndView mdl) {
	String name = "c, , d, b, c, , , b, d, a, , a, b, , , a, a, b, , , ";
	String aa = String.valueOf(name).replaceAll(" ,", " NA,");
	String bb = String.valueOf(aa).replaceAll("NA,", "&nbsp");
	String cc = String.valueOf(bb).replaceAll(",", "");
	
	mdl.addObject("Name", name);
	mdl.addObject("AA", aa);
	mdl.addObject("BB", bb);
	mdl.addObject("CC", cc);
	mdl.setViewName("success");
	System.out.println(name);
	System.out.println(bb);
	return mdl;

}


@RequestMapping(method=RequestMethod.POST,value="/showData")
public void show( ModelAndView model,HttpServletRequest request) {
	
	String data = request.getParameter("data");
	
	System.out.println(data);
	User us = new User();
	us.setArr(data);
	this.homeService.addData(us);
	
	}




// get admin page
@RequestMapping(value="/adminForm")
public String dat() {
return "regis";
}

// get admin data and set in db
@RequestMapping(value="/getData")
public void ad(HttpServletRequest request){

BufferedReader reader;
String s = null;
try {
reader = new BufferedReader(new InputStreamReader(request.getInputStream()));
s = reader.readLine();
System.out.println("registration data="+s);

HomeModel con = new HomeModel();

con.setLabel_Name(s);

this.homeService.addData(con);
} catch (IOException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
}

// get admin form data.       and            send admin data in dynamc jsp.
@RequestMapping(method = RequestMethod.GET, value = "/getTableData")
public ModelAndView  getEmployeeData(HttpServletRequest request , ModelAndView mdll) {
	
	
	String id = request.getParameter("id");//get through id parameter 
	String getAllEmployees = this.homeService.getTableData(id);
	
	mdll.addObject("data", getAllEmployees);
	mdll.setViewName("dynamic");
	
	System.out.println(getAllEmployees);
	
	return mdll;
	}

//save registration form data in db
@RequestMapping(method=RequestMethod.POST,value="/submitData")
public void showadmin( ModelAndView model,HttpServletRequest request) {
	BufferedReader reader;
	String s = null;
	try {
	reader = new BufferedReader(new InputStreamReader(request.getInputStream()));
    s = reader.readLine();

   
	JSONObject rrr = new JSONObject(s);
  //String xyz = rrr.toString();

    JSONArray jsonArray = new JSONArray();
    jsonArray.put(rrr);
    System.out.println("admin array="+jsonArray);
	
	for (int i = 0; i < jsonArray.length(); i++) 
	{
		
	}
	
	
	
	
	System.out.println("admin data="+s);
	Admin admin = new Admin();
    admin.setJsstring(s);
    //admin.setLogin_id(s);
	this.homeService.regData(admin);
	}
	catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
	}
private JSONArray json(int i) {
	// TODO Auto-generated method stub
	return null;
}

}