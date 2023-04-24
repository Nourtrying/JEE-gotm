package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the dept database table.
 * 
 */
@Entity
@NamedQuery(name="Dept.findAll", query="SELECT d FROM Dept d")
public class Dept implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int iddept;

	private String deptna;

	//bi-directional many-to-one association to User
	@OneToMany(mappedBy="dept", fetch=FetchType.EAGER)
	private List<User> users;

	public Dept() {
	}

	public int getIddept() {
		return this.iddept;
	}

	public void setIddept(int iddept) {
		this.iddept = iddept;
	}

	public String getDeptna() {
		return this.deptna;
	}

	public void setDeptna(String deptna) {
		this.deptna = deptna;
	}

	public List<User> getUsers() {
		return this.users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public User addUser(User user) {
		getUsers().add(user);
		user.setDept(this);

		return user;
	}

	public User removeUser(User user) {
		getUsers().remove(user);
		user.setDept(null);

		return user;
	}

}