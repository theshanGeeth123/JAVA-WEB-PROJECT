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

@WebServlet("/RegPlanner")
public class RegPlanner extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegPlanner() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Planner plan = new Planner();
		plan.setName(request.getParameter("name"));
		plan.setContact(request.getParameter("contact"));
		plan.setMail(request.getParameter("email"));
		plan.setcName(request.getParameter("company"));
		plan.setEventType(request.getParameter("eventTypes"));
		plan.setLocate(request.getParameter("location"));
		plan.setExperience(Integer.parseInt(request.getParameter("experience")));
		plan.setDescrip(request.getParameter("services"));
		
		Planservice service = new Planservice();
		service.regPlan(plan);
		
		RequestDispatcher dispach = request.getRequestDispatcher("ReadPlnner");
		
		
		dispach.forward(request, response);
	}

}
