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


@WebServlet("/SinglePackage")
public class SinglePackage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SinglePackage() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Package pack = new Package();
		
		pack.setId(Integer.parseInt(request.getParameter("package-id")));
		
		PackageService service = new PackageService();
		
		Package packet = service.getSinglePackage(pack);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("AdminPackageControl/AdminEditSinglePackage.jsp");
		
		request.setAttribute("pack", packet);
		
        dispatcher.forward(request, response);
		
	}

}
