package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Admin;
import Services.AdminService;


@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AdminLogin() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Admin admin = new Admin();
		
		admin.setEmail(request.getParameter("email"));
		
		admin.setPassword(request.getParameter("password"));
		
		AdminService service = new AdminService();
		
		boolean status = service.adminValidate(admin);
		
		if(status) {
			
			RequestDispatcher dispatcher  = request.getRequestDispatcher("AdminControl/AdminInterface.jsp");
			
			dispatcher.forward(request, response);
			
		}else {
			
			RequestDispatcher dispatcher  = request.getRequestDispatcher("Homepage/HomePage.jsp");
			
			dispatcher.forward(request, response);
		}
		
		
		
		doGet(request, response);
	}

}
