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


@WebServlet("/EditSinglePayment")
public class EditSinglePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public EditSinglePayment() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Payment payment = new Payment();
		
		payment.setPaymentId(Integer.parseInt(request.getParameter("paymentId")));
		
		payment.setPackagePrice(Double.parseDouble(request.getParameter("packagePrice")));
		
		payment.setCusomerId(Integer.parseInt(request.getParameter("cusomerId")));
		
		payment.setTimestamp(request.getParameter("timestamp"));
		
		payment.setTax(Double.parseDouble(request.getParameter("tax")));
		
		payment.setTotal(Double.parseDouble(request.getParameter("total")));
		
		
		PaymentService service = new PaymentService();
		
		service.updatePayment(payment);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("AllPayments");
		
		
		dispatcher.forward(request, response);
	}

}
