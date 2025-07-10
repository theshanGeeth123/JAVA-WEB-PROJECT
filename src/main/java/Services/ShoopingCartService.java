package Services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Model.CartItem;
import Utils.DBConnect;

public class ShoopingCartService {

	
	public void AddCartItem(CartItem item) {
		
		try {
			
			String query = "insert into shoppingcart(itemName,itemDescription,brandName,status,itemPrice,imageUrl) values ('"+item.getItemName()+"','"+item.getItemDescription()+"','"+item.getBrandName()+"','"+item.getStatus()+"','"+item.getItemPrice()+"','"+item.getImageUrl()+"')";
			
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			statement.executeUpdate(query);
			
				
		} catch (Exception e) {
			e.printStackTrace();
		}
			
	};
	
	
	public ArrayList<CartItem> getAllItem(){
		
		
		try {
			
			ArrayList<CartItem> itemList = new ArrayList<CartItem>();
			
			String query = "select * from shoppingcart";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				
				CartItem item = new CartItem();
				
				item.setItemId(rs.getInt("itemID"));
				item.setItemName(rs.getString("itemName"));
				item.setItemDescription(rs.getString("itemDescription"));
				item.setBrandName(rs.getString("brandName"));
				item.setStatus(rs.getString("status"));
				item.setImageUrl(rs.getString("imageUrl"));
				item.setItemPrice(rs.getDouble("itemPrice"));
				
				itemList.add(item);
				
			}
			
			return itemList;
			
		} catch (Exception e) {
			e.printStackTrace();
			
			return null;
		}
		
	};
	
	
	public CartItem getSingleCartItem(CartItem item) {
		
		try {
			
			String query = "select * from shoppingcart where itemId = '"+item.getItemId()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				
				item.setItemId(rs.getInt("itemId"));
				item.setItemName(rs.getString("itemName"));
				item.setItemDescription(rs.getString("itemDescription"));
				item.setBrandName(rs.getString("brandName"));
				item.setStatus(rs.getString("status"));
				item.setItemPrice(rs.getDouble("itemPrice"));
				item.setImageUrl(rs.getString("imageUrl"));
			}
			
			return item;
			
		} catch (Exception e) {
			e.printStackTrace();
			
			return null;
		}
	
	};
	
	
	public void updateitem(CartItem item) {
		
		try {
			
			String query = "update shoppingcart set itemName = '"+item.getItemName()+"' ,itemDescription = '"+item.getItemDescription()+"',brandName = '"+item.getBrandName()+"',status = '"+item.getStatus()+"',itemPrice = '"+item.getItemPrice()+"' where itemId = '"+item.getItemId()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			statement.executeUpdate(query);	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	};
	
	
	public void deleteItem(CartItem item) {
		
		try {
			
			String query = "Delete from shoppingcart where itemId = '"+item.getItemId()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			statement.executeUpdate(query);	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	};
	
}
