package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CartItem;
import Services.ShoopingCartService;


@WebServlet("/EditShoopingCartItem")
public class EditShoopingCartItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public EditShoopingCartItem() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CartItem item = new CartItem();
		
		item.setItemId(Integer.parseInt(request.getParameter("itemID")));
		
		ShoopingCartService service = new ShoopingCartService();
		
		CartItem itemDetails = service.getSingleCartItem(item);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("shoppingCart/singleItemDetails.jsp");
		
		request.setAttribute("itemDetails", itemDetails);
		
		dispatcher.forward(request, response);
		
		
	}

}
