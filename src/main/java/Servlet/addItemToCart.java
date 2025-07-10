package Servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Model.CartItem;
import Services.ShoopingCartService;

@MultipartConfig
@WebServlet("/addItemToCart")
public class addItemToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public addItemToCart() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Hello poto uploaded");
		
		Part file = request.getPart("image");
		
		String imageFileName = file.getSubmittedFileName();	
		
		System.out.println("Selected Image file name = "+imageFileName);
		
//		String uploadPath = "C:/Users/Lenovo/Desktop/JAVA projects/test4/src/main/webapp/shoppingCart/itemImage/"+imageFileName;
		String uploadPath = "C:/Users/Lenovo/Desktop/JAVA projects/test4/src/main/webapp/cartItemImages/"+imageFileName;
		
		System.out.println("Upload path = "+uploadPath);
		
		try {
			
			FileOutputStream fos = new FileOutputStream(uploadPath);
			
			InputStream is = file.getInputStream();
			
			byte[] data = new byte[is.available()];
			
			is.read(data);
			
			fos.write(data);
			
			fos.close();
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		CartItem item = new CartItem();
		
		item.setImageUrl(imageFileName);
		
		item.setItemName(request.getParameter("itemName"));
		
		item.setItemDescription(request.getParameter("itemDescription"));
		
		item.setBrandName(request.getParameter("itemBrand"));
		
		item.setStatus(request.getParameter("itemStatus"));
		
		item.setItemPrice(Double.parseDouble(request.getParameter("itemPrice")));
		
		
		ShoopingCartService service = new ShoopingCartService();
		
		service.AddCartItem(item);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("AdminControl/AdminInterface.jsp");
		
//		RequestDispatcher dispatcher = request.getRequestDispatcher("AllShoppingCartItem");
		
		dispatcher.forward(request, response);
		
	}

}
