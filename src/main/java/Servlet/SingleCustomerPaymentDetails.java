package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Model.Customer;
import Model.Payment;
import Services.CustomerService;


@WebServlet("/SingleCustomerPaymentDetails")
public class SingleCustomerPaymentDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SingleCustomerPaymentDetails() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		Customer loginCus = (Customer) session.getAttribute("customer");

		CustomerService service = new CustomerService();
		
		ArrayList<Payment> payments = service.getSingleCustomerPayments(loginCus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Profile/myPayments.jsp");
		
		request.setAttribute("payments", payments);
		
		dispatcher.forward(request, response);
	}

}
