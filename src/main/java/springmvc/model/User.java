package springmvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user_table")
public class User {

	@GeneratedValue(strategy= GenerationType.AUTO)
	@Id
	int id;
	String arr;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getArr() {
		return arr;
	}
	public void setArr(String arr) {
		this.arr = arr;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", arr=" + arr + "]";
	}
	
}
