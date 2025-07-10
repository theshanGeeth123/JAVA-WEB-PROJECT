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



@WebServlet("/deleteRatings")
public class deleteRatings extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public deleteRatings() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		rattings delRate = new rattings();
		delRate.setRatingID(Integer.parseInt(request.getParameter("ratingID")));
		
		
		rateService deleteServe = new rateService();
		deleteServe.deleteRating(delRate);
		
		
		 RequestDispatcher dispatcher = request.getRequestDispatcher("viewMyRatings");
	     dispatcher.forward(request, response);
	}

}
