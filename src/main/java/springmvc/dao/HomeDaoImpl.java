package springmvc.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import springmvc.model.Admin;
import springmvc.model.HomeModel;
import springmvc.model.User;


@Repository
@Transactional
public class HomeDaoImpl implements HomeDao{

	 
	@Autowired
	private SessionFactory session;
	
	

	@Override
	public void addData(HomeModel modeli) {
	    this.session.getCurrentSession().save(modeli);
				
	}
	@Override
	public void addData(User us) {
	    this.session.getCurrentSession().save(us);
				
	}




	@Override
	public void addData(ModelAttribute m) {
		// TODO Auto-generated method stub
		this.session.getCurrentSession().save(m);
	}



	@SuppressWarnings("unchecked")
	@Override
	public List<HomeModel> getTableData(String id) {
		Criteria criteria = this.session.getCurrentSession().createCriteria(HomeModel.class);
		criteria.add(Restrictions.eq("id", id));
		return criteria.list();
	}
	@Override
	public void regData(Admin admin) {
		this.session.getCurrentSession().save(admin);
		
	}

}
