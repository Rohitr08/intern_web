package springmvc.dao;

import java.util.List;

import org.json.JSONObject;
import org.springframework.web.bind.annotation.ModelAttribute;

import springmvc.model.Admin;
import springmvc.model.HomeModel;
import springmvc.model.User;

public interface HomeDao {
	public void addData(HomeModel modeli);

	public void addData(ModelAttribute m);

	public List<HomeModel> getTableData(String id);

	public void addData(User us);
	public void regData(Admin admin);

	
}
