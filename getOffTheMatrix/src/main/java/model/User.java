package model;
import java.io.Serializable;
import javax.persistence.*;

/**
 * The persistent class for the user database table.
 * 
 */
@Entity
@Table(name = "user")
@NamedQuery(name="user.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	private int iduser;


	private String discordTag;

	private String email;


	private String name;

	private String phoneN;

	

	private int score;

	private String username;

	//bi-directional many-to-one association to Dept
	@ManyToOne
	private Dept dept;

	//bi-directional many-to-one association to Pending
	@ManyToOne
	private Pending pending;

	//bi-directional many-to-one association to Profile
	@ManyToOne
	private Profile profile;

	public User() {
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

	public int getIduser() {
		return this.iduser;
	}

	public void setIduser(int iduser) {
		this.iduser = iduser;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneN() {
		return this.phoneN;
	}

	public void setPhoneN(String phoneN) {
		this.phoneN = phoneN;
	}

	

	public int getScore() {
		return this.score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Dept getDept() {
		return this.dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public Pending getPending() {
		return this.pending;
	}

	public void setPending(Pending pending) {
		this.pending = pending;
	}

	public Profile getProfile() {
		return this.profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}

}
