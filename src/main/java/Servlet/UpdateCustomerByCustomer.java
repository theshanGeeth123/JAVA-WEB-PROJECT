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


@WebServlet("/UpdateCustomerByCustomer")
public class UpdateCustomerByCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateCustomerByCustomer() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		Customer cus = new Customer();
		
		cus.setId(Integer.parseInt(request.getParameter("id")));
		
		cus.setName(request.getParameter("name"));
		
		cus.setEmail(request.getParameter("email"));
		
		cus.setAge(Integer.parseInt(request.getParameter("age")));
		
		cus.setPassword(request.getParameter("password"));

		CustomerService service = new CustomerService();
		
		service.UpdateCustomer(cus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Homepage/HomePage.jsp");

		dispatcher.forward(request, response);
	}

}
