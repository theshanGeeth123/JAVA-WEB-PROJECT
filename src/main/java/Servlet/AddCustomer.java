package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Customer;
import Services.CustomerService;


@WebServlet("/AddCustomer")
public class AddCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddCustomer() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Customer cus = new Customer();
		
		cus.setEmail(request.getParameter("email"));
		
		cus.setName(request.getParameter("name"));
		
		cus.setAge(Integer.parseInt(request.getParameter("age")));
		
		cus.setPassword(request.getParameter("password"));
		
		cus.setGender(request.getParameter("gender"));
		
		CustomerService service = new CustomerService();
		
		service.regCustomer(cus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Homepage/HomePage.jsp");
		
		dispatcher.forward(request, response);
	}

}
