package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Services.PackageService;

/**
 * Servlet implementation class AllPackages
 */
@WebServlet("/AllPackages")
public class AllPackages extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AllPackages() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PackageService service = new PackageService();
		
		ArrayList<Model.Package> allPackages = service.getAllPackages();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Packages/packagesInterface.jsp");


		  request.setAttribute("packages", allPackages);
		  
	      dispatcher.forward(request, response);
	}

}
