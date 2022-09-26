package springmvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin_table")
public class Admin {
	@GeneratedValue(strategy= GenerationType.AUTO)
	@Id
	int id;
	String jsstring;
	String login_id;
	String password;
	String name;
	String remaining_data;
	
	public String getLogin_id() {
		return login_id;
	}
	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRemaining_data() {
		return remaining_data;
	}
	public void setRemaining_data(String remaining_data) {
		this.remaining_data = remaining_data;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getJsstring() {
		return jsstring;
	}
	public void setJsstring(String jsstring) {
		this.jsstring = jsstring;
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", jsstring=" + jsstring + "]";
	}
	
	

}
