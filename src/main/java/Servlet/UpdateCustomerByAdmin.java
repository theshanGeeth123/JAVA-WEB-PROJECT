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


@WebServlet("/UpdateCustomerByAdmin")
public class UpdateCustomerByAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateCustomerByAdmin() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Customer cus = new Customer();
		
		cus.setId(Integer.parseInt(request.getParameter("id")));

		CustomerService service = new CustomerService();
		
		Customer customer = service.getOneCustomerByAdmin(cus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("AdminControl/singleCustomerDetails.jsp");
		
		request.setAttribute("customer", customer);
		
		dispatcher.forward(request, response);
	}

}
