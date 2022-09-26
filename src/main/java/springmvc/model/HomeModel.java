package springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="registration_table")
public class HomeModel {
	
	@GeneratedValue(strategy= GenerationType.AUTO)
	@Id
	String id;
	String Label_Name;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLabel_Name() {
		return Label_Name;
	}
	public void setLabel_Name(String label_Name) {
		Label_Name = label_Name;
	}
	@Override
	public String toString() {
		return "HomeModel [id=" + id + ", Label_Name=" + Label_Name + "]";
	}
	public void setData(String s) {
		// TODO Auto-generated method stub
		
	}
	
	
}


