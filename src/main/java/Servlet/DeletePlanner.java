package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Planner;
import Services.Planservice;



@WebServlet("/DeletePlanner")
public class DeletePlanner extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeletePlanner() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Planner plan = new Planner();
		plan.setPlanid(Integer.parseInt(request.getParameter("planid")));
		
		Planservice service = new Planservice();
		service.DeletePlann(plan);
		
		RequestDispatcher dispacher = request.getRequestDispatcher("ReadPlnner");
		
		
		dispacher.forward(request, response);
	}

}
