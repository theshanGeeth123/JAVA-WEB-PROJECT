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



@WebServlet("/editRatings")
public class editRatings extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public editRatings() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		rattings editRate = new rattings();

        editRate.setRatingID(Integer.parseInt(request.getParameter("ratingID")));
        editRate.setEmail(request.getParameter("email"));
        editRate.setName(request.getParameter("name"));
        editRate.setRatings(Integer.parseInt(request.getParameter("ratings")));
        editRate.setComm(request.getParameter("comm"));
        editRate.setHotelevent(request.getParameter("hotelevent"));

       
        System.out.println(" ");
        System.out.println("ID: " + editRate.getRatingID());
        System.out.println("Email: " + editRate.getEmail());
        System.out.println("Name: " + editRate.getName());
        System.out.println("Rating: " + editRate.getRatings());
        System.out.println("Comment: " + editRate.getComm());
        System.out.println("Hotel/Event: " + editRate.getHotelevent());

        rateService editServe = new rateService();
        editServe.updateRating(editRate);

        RequestDispatcher dispatcher = request.getRequestDispatcher("viewMyRatings");
        dispatcher.forward(request, response);
        
	}

}
