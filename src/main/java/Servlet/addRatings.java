package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.rattings;
import Services.rateService;



@WebServlet("/addRatings")
public class addRatings extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public addRatings() {
        super();
     
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		rattings rate= new rattings();
		rate.setEmail(request.getParameter("mail"));
		rate.setName(request.getParameter("name"));
		rate.setRatings(Integer.parseInt(request.getParameter("ratings")));
		rate.setComm(request.getParameter("comm"));
		rate.setHotelevent(request.getParameter("hotelevent"));
		
		
		rateService serveRate = new rateService();
		 serveRate.userRatings(rate);
		 
		 
		 RequestDispatcher dispatcher = request.getRequestDispatcher("./ViewRatings");
		
		dispatcher.forward(request, response);
		
	}

}
