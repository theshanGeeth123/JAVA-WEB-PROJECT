package Services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import Model.Customer;
import Model.Payment;
import Utils.DBConnect;

public class CustomerService {

	
	public void regCustomer(Customer cus) {
		
		try {
			
			String query = "insert into customer (email,name,age,password,gender) values ('"+cus.getEmail()+"','"+cus.getName()+"','"+cus.getAge()+"','"+cus.getPassword()+"','"+cus.getGender()+"')";
	
			Statement statement = DBConnect.getConnection().createStatement();
			
			statement.executeUpdate(query);
	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	};
	
	
	public boolean validate(Customer cus) {
		
		try {
			
			String query = "select * from customer where email = '"+cus.getEmail()+"' and password = '"+cus.getPassword()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				return true;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		return false;
		
	};
	
	public Customer getOne(Customer cus) {
		
		try {
			
			String query = "select * from customer where email = '"+cus.getEmail()+"' and password = '"+cus.getPassword()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				
				cus.setId(rs.getInt("id"));
				cus.setEmail(rs.getString("email"));
				cus.setName(rs.getString("name"));
				cus.setAge(rs.getInt("age"));
				cus.setPassword(rs.getString("password"));
				
				return cus;
			}
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}


		return null;
		
	};
	
	
	public void UpdateCustomer(Customer cus) {
		
		
		try {
			
			String query ="update customer set email = '"+cus.getEmail()+"',name = '"+cus.getName()+"',age = '"+cus.getAge()+"',password = '"+cus.getPassword()+"',gender='"+cus.getGender()+"' where id = '"+cus.getId()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			statement.executeUpdate(query);	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	};
	
	
	
	public ArrayList<Customer> getAllCustomers(){
		
		try {
			
			
			ArrayList<Customer> customersList = new ArrayList();
			
			String query = "select * from customer";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				
				Customer cus = new Customer();
				
				cus.setId(rs.getInt("id"));
				cus.setEmail(rs.getString("email"));
				cus.setName(rs.getString("name"));
				cus.setAge(rs.getInt("age"));
				cus.setPassword(rs.getString("password"));
				cus.setGender(rs.getString("gender"));
				
				customersList.add(cus);
				
			}
			
			return customersList;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
			return null;
		}
		
	};
	
	
	
	
	
	public Customer getOneCustomerByAdmin(Customer cus) {
			
			try {
				
				String query = "select * from customer where id = '"+cus.getId()+"'";
				
				Statement statement = DBConnect.getConnection().createStatement();
				
				ResultSet rs = statement.executeQuery(query);
				
				if(rs.next()) {
					
					cus.setId(rs.getInt("id"));
					cus.setEmail(rs.getString("email"));
					cus.setName(rs.getString("name"));
					cus.setAge(rs.getInt("age"));
					cus.setPassword(rs.getString("password"));
					cus.setGender(rs.getString("gender"));
					
					return cus;
				}
				
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
	
	
			return null;
			
		};
		
		
		public void deleteCustomer(Customer cus) {
			
			try {
				
				String query = "delete from customer where id='"+cus.getId()+"'";
				
				Statement statement = DBConnect.getConnection().createStatement();
				
				statement.executeUpdate(query);	
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		};
		
		
		
		public ArrayList<Payment> getSingleCustomerPayments(Customer cus){
			
			
			try {
				
				ArrayList<Payment> customerPayments = new ArrayList<Payment>();	
				
				String query = "select * from payment where customerId = '"+cus.getId()+"'";
				
				Statement statement = DBConnect.getConnection().createStatement();
				
				ResultSet rs = statement.executeQuery(query);
				
				while(rs.next()) {
					
					Payment payment = new Payment();
					
					payment.setPaymentId(rs.getInt("paymentId"));
					
					payment.setPackagePrice(rs.getDouble("packagePrice"));
					
					payment.setCusomerId(rs.getInt("customerId"));
					
					payment.setTimestamp(rs.getString("date_time"));
					
					payment.setTax(rs.getDouble("tax"));
					
					payment.setTotal(rs.getDouble("total"));
					
					customerPayments.add(payment);
					
					
				}
				
				return customerPayments;
				
				
			} catch (Exception e) {
				e.printStackTrace();
				
				return null;
			}
			
			
		};
		
		
		
		
	
	
}
