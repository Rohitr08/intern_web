package springmvc.Service;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;

import springmvc.common.ServerSideValidations;
import springmvc.dao.HomeDao;
import springmvc.model.Admin;
import springmvc.model.HomeModel;
import springmvc.model.User;

@Service
public class HomeServiceImpl implements HomeService {
	@Autowired
	private HomeDao homedao;

	@Transactional
	public void addData(HomeModel modeli ) {
		homedao.addData(modeli);
		
	}

	
	
	 @Override 
	  public String getTableData(String id){ 
		 String sys ="";
	  JSONObject returnResponse = new JSONObject(); 
	  List<HomeModel> getEmployeeDetails = this.homedao.getTableData(id); 
	  for(int i = 0; i < getEmployeeDetails.size();i++) { 
	  
	   sys = getEmployeeDetails.get(i).getLabel_Name();
	  }
	  return sys;
	  
	 }
	 
	 
	
	

	@Override
	public List validate_data() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getDetails() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addData(User us) {
		homedao.addData(us);
		
	}

	@Override
	public JSONObject ser_data() {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public void addData(ModelAttribute m) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void regData(Admin admin) {
		homedao.regData(admin);
		
	}



	}



