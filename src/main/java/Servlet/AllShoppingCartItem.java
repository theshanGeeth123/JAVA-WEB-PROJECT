package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CartItem;
import Services.ShoopingCartService;


@WebServlet("/AllShoppingCartItem")
public class AllShoppingCartItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AllShoppingCartItem() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ShoopingCartService service = new ShoopingCartService();
		
		ArrayList<CartItem> itemList= service.getAllItem();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("shoppingCart/shopppingCart.jsp");
		
		request.setAttribute("itemList", itemList);
		
		dispatcher.forward(request, response);
	}

}
