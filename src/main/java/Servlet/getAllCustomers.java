package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Customer;
import Services.CustomerService;


@WebServlet("/getAllCustomers")
public class getAllCustomers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public getAllCustomers() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CustomerService service = new CustomerService();
		
		ArrayList<Customer> customerList = service.getAllCustomers();
		
		RequestDispatcher dispatcher =  request.getRequestDispatcher("AdminControl/AllCustomers.jsp");
		
		request.setAttribute("customers",customerList);
		
		dispatcher.forward(request, response);
		
	}

}
