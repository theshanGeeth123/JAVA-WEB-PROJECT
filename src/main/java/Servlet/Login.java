package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Customer;
import Services.CustomerService;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Login() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Customer cus = new Customer();
		
		cus.setEmail(request.getParameter("email"));
		
		cus.setPassword(request.getParameter("password"));
		
		CustomerService service = new CustomerService();
		
		boolean status = service.validate(cus);
		
		
		if(status) {
			
			Customer loginCus = service.getOne(cus);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Profile/UserInterface.jsp");
			
			HttpSession session = request.getSession();
			session.setAttribute("customer", loginCus);

			
			dispatcher.forward(request, response);
			
		}
		else{
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Homepage/HomePage.jsp");
			
			dispatcher.forward(request, response);
			
			
		}
		
		
		
	}

}
