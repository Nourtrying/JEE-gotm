package mvcController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.ejb.EJB;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Account;
import model.Dept;
import model.Pending;
import model.Profile;
import model.User;
import mvcModels.UserService;

/**
 * Servlet implementation class ManageMembers
 */
@WebServlet(name = "ManageMembers", urlPatterns = {"/ManageMembers"})
public class ManageMembers extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
    private UserService userService;
	
    RequestDispatcher rd ;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageMembers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> users = new ArrayList<User>();
        users = userService.getAllUsers();
        System.out.println(users);
        request.setAttribute("users", users);
        rd = getServletContext().getRequestDispatcher("/ManageMembers.jsp");
        rd.forward(request, response);
        System.out.println("hello you are in the get method");// Forward the request to the JSP page
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the value of the "action" parameter
        String action = request.getParameter("action");
        System.out.println(action);
        System.out.println("you are in the do post");
        if (action != null) {
            if (action.equals("addMember")) {
                // Handle the "addMember" form submission
                String username = request.getParameter("username");
                String name = request.getParameter("name");
                String discord = request.getParameter("discord");
                String email = request.getParameter("email");
                String phoneN = request.getParameter("phone");

                // Create a new User object with the form data
                User newUser = new User();
                newUser.setUsername(username);
                newUser.setName(name);
                newUser.setDiscordTag(discord);
                newUser.setEmail(email);
                newUser.setPhoneN(phoneN);

                //UserService userService = new UserService();
                //User savedUser = userService.addUser(newUser);

                /*if (savedUser != null) {
                    request.setAttribute("successMessage", "User added successfully");
                } else {
                    request.setAttribute("errorMessage", "Failed to add user");
                }*/

            } else if (action.equals("editMember")) {
                String username = request.getParameter("username");
                String name = request.getParameter("name");
                String discord = request.getParameter("discord");
                String email = request.getParameter("email");
                String phoneN = request.getParameter("phone");
                System.out.println("username " + username);
                String IdStr = request.getParameter("id");
                String scoreStr = request.getParameter("score");
                String profileIdStr = request.getParameter("dept");
                String deptIdStr = request.getParameter("profile");
                String pendingIdStr = request.getParameter("pending");

                int id = Integer.parseInt(IdStr);
                int score = Integer.parseInt(scoreStr);
                int profileId = Integer.parseInt(profileIdStr);
                int deptId = Integer.parseInt(deptIdStr);
                int pendingId = Integer.parseInt(pendingIdStr);
                
                /*
                // Create a new User object with the form data
                User updatedUser = new User();
                updatedUser.setIduser(id);
                updatedUser.setUsername(username);
                updatedUser.setName(name);
                updatedUser.setDiscordTag(discord);
                updatedUser.setEmail(email);
                updatedUser.setPhoneN(phoneN);
                updatedUser.setScore(score);
                
                //foreign keys
                Dept d = new Dept();
                d.setIddept(5);
                d.setDeptna("hr");
                updatedUser.setDept(d);
                
                Pending pending = new Pending();

             // Generate random values for the fields
             Random rand = new Random();
             int idp = rand.nextInt(1000);
             String usernamep = UUID.randomUUID().toString().substring(0, 8); // Generate a random UUID and take the first 8 characters as username
             String discordTagp = UUID.randomUUID().toString().substring(0, 8) + "#" + rand.nextInt(10000); // Generate a random UUID and take the first 8 characters as username, and append a random number between 0 and 9999
             String emailp = UUID.randomUUID().toString().substring(0, 8) + "@example.com"; // Generate a random UUID and append a domain name
             String passwordp = UUID.randomUUID().toString().substring(0, 8);

             // Set the values on the Pending object
             pending.setIdpending(idp);
             pending.setUsername(usernamep);
             pending.setDiscordTag(discordTagp);
             pending.setEmail(emailp);
             pending.setPassword(passwordp);
             pending.setConfirmPassword(passwordp);
             updatedUser.setPending(pending);
             
          // Assuming you have a Profile class with the following fields:
          // idprofile (int), username (String), password (String), role (String), account_idaccount (int)

          // Create a new random number generator

          // Create a new Profile object
          Profile profile = new Profile();

          // Set the idprofile field to a random integer between 1 and 100
          profile.setIdprofile(rand.nextInt(100) + 1);

          // Set the username field to a random string of length 10
          String usernamepro = "user" + (rand.nextInt(900) + 100);
          profile.setUsername(usernamepro);

          // Set the password field to a random string of length 10
          String passwordpro = "password" + (rand.nextInt(900) + 100);
          profile.setPassword(passwordpro);

          // Set the role field to a random string of length 5
          String rolepro = "role" + (rand.nextInt(900) + 100);
          profile.setRole(rolepro);

          // Set the account_idaccount field to a random integer between 1 and 10
          profile.setAccount(null);
          Account acc = new Account();
          acc.setIdaccount(7);
          profile.setAccount(acc);

             

                UserService userService = new UserService();
                // Create a new Profile object and set it on the User
                Profile userProfile = userService.getProfileById(profileId);
                updatedUser.setProfile(userProfile);

                // Create a new Department object and set it on the User
                Dept userDept = userService.getDeptById(deptId);
                updatedUser.setDept(userDept);

                // Create a new Pending object and set it on the User
                Pending userPending = userService.getPendingById(pendingId); // assuming you have the pendingId available
                updatedUser.setPending(userPending);

                // Call the updateUser method in your UserService
                System.out.println("*****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************");
                System.out.println(updatedUser);
                User savedUser = userService.updateUser(updatedUser);

                if (savedUser != null) {
                    request.setAttribute("successMessage", "User updated successfully");
                } else {
                    request.setAttribute("errorMessage", "Failed to update user");
                }*/
            		
            	 
                 
                 
              
                 
                 
            }
        }

        // Get all users and forward to JSP
        /*UserService userService = new UserService();
        List<User> users = userService.getAllUsers();
        request.setAttribute("users", users);*/

        RequestDispatcher rd = request.getRequestDispatcher("/ManageMembers.jsp");
        rd.forward(request, response);
    }


}
