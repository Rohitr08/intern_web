package springmvc.Service;

import springmvc.model.Admin;
import springmvc.model.HomeModel;
import springmvc.model.User;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.web.bind.annotation.ModelAttribute;

public interface HomeService {
	
	public void addData(HomeModel modeli);

	public void addData(ModelAttribute m);

	public String getTableData(String id);

	

	public List validate_data();

	public String getDetails();

	

	public void addData(User us);

	public JSONObject ser_data();

	public void regData(Admin admin);


}
