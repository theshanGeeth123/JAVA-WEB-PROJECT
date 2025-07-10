package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.rattings;
import Services.rateService;

@WebServlet("/ViewRatings")
public class ViewRatings extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public ViewRatings() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		rateService service = new rateService();
        ArrayList<rattings> reviewList = service.getAllrating();

        // Prevent NullPointerException
        if (reviewList == null) {
            reviewList = new ArrayList<>();
        }
        

        request.setAttribute("review", reviewList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Ratings/veiwRatings.jsp"); 
        dispatcher.forward(request, response);
		
		doGet(request, response);
	}

}
