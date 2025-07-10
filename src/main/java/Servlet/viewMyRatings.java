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

import Model.Customer;
import Model.rattings;
import Services.rateService;

@WebServlet("/viewMyRatings")
public class viewMyRatings extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public viewMyRatings() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false); // false = don't create a new one
        if (session == null || session.getAttribute("customer") == null) {
            // No user logged in
            RequestDispatcher dispatcher = request.getRequestDispatcher("./Homepage/HomePage.jsp");
            dispatcher.forward(request, response);
            return;
        }

        Customer loginCus = (Customer) session.getAttribute("customer");

        rateService mservice = new rateService();
        ArrayList<rattings> myList = mservice.getMyRatings(loginCus);

        if (myList == null) {
            myList = new ArrayList<>();
        }

        request.setAttribute("mRatings", myList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Ratings/myFeedbacks.jsp");
        dispatcher.forward(request, response);
		
	}

}
