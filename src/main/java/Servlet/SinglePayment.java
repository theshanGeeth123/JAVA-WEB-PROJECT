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


@WebServlet("/SinglePayment")
public class SinglePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SinglePayment() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Payment payment = new Payment();
		
		payment.setPaymentId(Integer.parseInt(request.getParameter("paymentId")));
		
		PaymentService service = new PaymentService();
		
		Payment singlePayment = service.getOnePayment(payment);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Payment/editSinglePayment.jsp");
		
		request.setAttribute("singlePayment",singlePayment);
		
		dispatcher.forward(request, response);
	}

}
