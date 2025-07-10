package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Payment;
import Services.PaymentService;


@WebServlet("/AddNewPayment")
public class AddNewPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddNewPayment() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Payment payment = new Payment();
		
		payment.setPackagePrice(Double.parseDouble(request.getParameter("package-price")));
		
		payment.setCusomerId(Integer.parseInt(request.getParameter("customer-id")));
		
		payment.setTimestamp(request.getParameter("timestamp"));
		
		payment.setTax(Double.parseDouble(request.getParameter("tax")));
		
		payment.setTotal(Double.parseDouble(request.getParameter("total")));
		
		
		PaymentService service = new PaymentService();
		
		service.addNewPayment(payment);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Profile/UserInterface.jsp");
		
		dispatcher.forward(request, response);
	}

}
