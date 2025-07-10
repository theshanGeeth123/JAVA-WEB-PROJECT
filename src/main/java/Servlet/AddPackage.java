package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Package;
import Services.PackageService;


@WebServlet("/AddPackage")
public class AddPackage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddPackage() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		Package newPackage = new Package();
		
		
		newPackage.setName(request.getParameter("name"));
		
		newPackage.setDescription(request.getParameter("description"));
		
		newPackage.setNoOfGuests(Integer.parseInt(request.getParameter("noOfGuests")));
		
		newPackage.setPrice(Integer.parseInt(request.getParameter("price")));
		
		newPackage.setLocation(request.getParameter("location"));
		
		
		PackageService pkgService = new PackageService();
		
		pkgService.addNewPackage(newPackage);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("AdminControl/AdminInterface.jsp");
		
        dispatcher.forward(request, response);
		
	}

}
