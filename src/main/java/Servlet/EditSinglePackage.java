package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Services.PackageService;

@WebServlet("/EditSinglePackage")
public class EditSinglePackage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public EditSinglePackage() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Model.Package pack = new Model.Package();
		
		pack.setId(Integer.parseInt(request.getParameter("id")));
		
		pack.setName(request.getParameter("name"));
		
		pack.setDescription(request.getParameter("description"));
		
		pack.setPrice(Integer.parseInt(request.getParameter("price")));
		
		pack.setNoOfGuests(Integer.parseInt(request.getParameter("noOfGuests")));
		
		pack.setLocation(request.getParameter("location"));
		
		PackageService service = new PackageService();
		
		service.updatePackage(pack);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("adminAllPackages");
        
        dispatcher.forward(request, response);
	}

}
