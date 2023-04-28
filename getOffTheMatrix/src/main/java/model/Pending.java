package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the pending database table.
 * 
 */
@Entity
@NamedQuery(name="Pending.findAll", query="SELECT p FROM Pending p")
public class Pending implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idpending;

	private String confirmPassword;

	private String discordTag;

	private String email;

	private String password;

	private String username;

	//bi-directional many-to-one association to User
	@OneToMany(mappedBy="pending")
	private List<User> users;

	public Pending() {
	}

	public int getIdpending() {
		return this.idpending;
	}

	public void setIdpending(int idpending) {
		this.idpending = idpending;
	}

	public String getConfirmPassword() {
		return this.confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getDiscordTag() {
		return this.discordTag;
	}

	public void setDiscordTag(String discordTag) {
		this.discordTag = discordTag;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public List<User> getUsers() {
		return this.users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public User addUser(User user) {
		getUsers().add(user);
		user.setPending(this);

		return user;
	}

	public User removeUser(User user) {
		getUsers().remove(user);
		user.setPending(null);

		return user;
	}

}