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

/**
 * Servlet implementation class AllShoppingCartItemCustomer
 */
@WebServlet("/AllShoppingCartItemCustomer")
public class AllShoppingCartItemCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllShoppingCartItemCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ShoopingCartService service = new ShoopingCartService();
		
		ArrayList<CartItem> itemList= service.getAllItem();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("shoppingCart/shoppingCartCustomer.jsp");
		
		request.setAttribute("itemList", itemList);
		
		dispatcher.forward(request, response);
	}

}
