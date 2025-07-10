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


@WebServlet("/DeleteSinglePayment")
public class DeleteSinglePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteSinglePayment() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Payment payment = new Payment();
		
		payment.setPaymentId(Integer.parseInt(request.getParameter("paymentId")));
		
		PaymentService service = new PaymentService();
		
		service.deletePayment(payment);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("AllPayments");
		
		dispatcher.forward(request, response);
		
	}

}
