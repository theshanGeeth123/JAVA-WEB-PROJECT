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


@WebServlet("/adminAllPackages")
public class adminAllPackages extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public adminAllPackages() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PackageService service = new PackageService();
		
		ArrayList<Model.Package> allPackages = service.getAllPackages();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("AdminPackageControl/AdminPackagesInterface.jsp");


	  request.setAttribute("packages", allPackages);
	  
      dispatcher.forward(request, response);
		
	}

}
