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


@WebServlet("/EditShoopingCartItem2")
public class EditShoopingCartItem2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public EditShoopingCartItem2() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CartItem item = new CartItem();
		
		item.setItemId(Integer.parseInt(request.getParameter("itemId")));
		item.setItemName(request.getParameter("itemName"));
		item.setItemDescription(request.getParameter("itemDescription"));
		item.setBrandName(request.getParameter("brandName"));
		item.setStatus(request.getParameter("status"));
		item.setItemPrice(Double.parseDouble(request.getParameter("itemPrice")));
		
		ShoopingCartService service = new ShoopingCartService();
		
		service.updateitem(item);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("AllShoppingCartItem");
		
		dispatcher.forward(request, response);
	}

}
