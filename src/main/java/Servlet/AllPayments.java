package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Payment;
import Services.PaymentService;


@WebServlet("/AllPayments")
public class AllPayments extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AllPayments() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PaymentService service = new PaymentService();
		
		ArrayList<Payment> paymentList = service.getAllPayments();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Payment/AllPayments.jsp");
		
		request.setAttribute("paymentList",paymentList);
		
		dispatcher.forward(request, response);
	}

}
