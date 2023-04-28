package mvcModels;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import model.Account;
import model.Dept;
import model.Pending;
import model.Profile;
import model.User;

/**
 * Session Bean implementation class UserService
 */
@Stateless
@LocalBean
public class UserService {
	@PersistenceContext(unitName="getOffTheMatrix")
	
	private EntityManager em ;
	
	
    /**
     * Default constructor. 
     */
    public UserService() {
        // TODO Auto-generated constructor stub
    }
    
    public List<User> getAllUsers()
    {
	    List<User> users = new ArrayList<User>();
	    TypedQuery<User> query = em.createNamedQuery("user.findAll",User.class);
	    users = query.getResultList();
	    return users;
    }
    
    public User getUserById(int userId) {
        User user = em.find(User.class, userId);
        return user;
    }

    
    public User updateUser(User user) {
        User updatedUser = em.merge(user);
        return updatedUser;
    }
    
    public Profile getProfileById(int profileId) {
        Profile profile = em.find(Profile.class, profileId);
        return profile;
    }
    
    public Account getAccountById(int accountId) {
    	Account account = em.find(Account.class, accountId);
        return account;
    }
    
    public Dept getDeptById(int deptId) {
    	Dept dept = em.find(Dept.class, deptId);
        return dept;
    }
    
    public Pending getPendingById(int pendingId) {
    	Pending pending = em.find(Pending.class, pendingId);
        return pending;
    }

}
