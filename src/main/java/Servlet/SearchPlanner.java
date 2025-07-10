package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Planner;
import Services.Planservice;

@WebServlet("/SearchPlanner")
public class SearchPlanner extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SearchPlanner() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Planner plan = new Planner();
		plan.setEventType(request.getParameter("searchitem"));
		
		List<Planner>allT =Planservice.Search(plan.getEventType());
		request.setAttribute("allT", allT);
		RequestDispatcher dispacher = request.getRequestDispatcher("Planner/searchItem.jsp");
		dispacher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		doGet(request, response);
	}

}
