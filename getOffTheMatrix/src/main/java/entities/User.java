package entities;

import java.io.Serializable;
import javax.persistence.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


/**
 * The persistent class for the user database table.
 * 
 */


@Entity
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int iduser;

	private String discordTag;

	private String email;


	private String name;

	private int phoneN;

	@Lob
	private byte[] profilePic;

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

	public int getPhoneN() {
		return this.phoneN;
	}

	public void setPhoneN(int phoneN) {
		this.phoneN = phoneN;
	}

	public byte[] getProfilePic() {
		return this.profilePic;
	}

	public void setProfilePic(byte[] profilePic) {
		this.profilePic = profilePic;
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