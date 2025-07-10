package Services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Model.Payment;
import Utils.DBConnect;

public class PaymentService {
	
	public void addNewPayment(Payment payment) {
		
		try {
			
			String query = "insert into payment (packagePrice,customerId,date_time,tax,total) values ('"+payment.getPackagePrice()+"','"+payment.getCusomerId()+"','"+payment.getTimestamp()+"','"+payment.getTax()+"','"+payment.getTotal()+"')";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	};
	
	
	
	public ArrayList<Payment> getAllPayments(){
		
		try {
			
			ArrayList<Payment>  paymentList = new ArrayList();
			
			String query = "select * from payment";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				
				Payment payment = new Payment();
				
				payment.setPaymentId(Integer.parseInt(rs.getString("paymentId")));
				
				payment.setPackagePrice(Double.parseDouble(rs.getString("packagePrice")));
				
				payment.setCusomerId(Integer.parseInt(rs.getString("customerId")));
				
				payment.setTimestamp(rs.getString("date_time"));
				
				payment.setTax(Double.parseDouble(rs.getString("tax")));
				
				payment.setTotal(Double.parseDouble(rs.getString("total")));
				
				paymentList.add(payment);
				
			}
			
			return paymentList;
			
		} catch (Exception e) {
			
			e.printStackTrace();
			return null;
		}
		
	};
	
	
	public Payment getOnePayment(Payment payment) {
		
		try {
			
			String query = "select * from payment where paymentid = '"+payment.getPaymentId()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				
				payment.setPaymentId(Integer.parseInt(rs.getString("paymentId")));;
				
				payment.setCusomerId(Integer.parseInt(rs.getString("customerId")));
				
				payment.setPackagePrice(Double.parseDouble(rs.getString("packagePrice")));
				
				payment.setTimestamp(rs.getString("date_time"));
				
				payment.setTax(Double.parseDouble(rs.getString("tax")));
				
				payment.setTotal(Double.parseDouble(rs.getString("total")));
				
			}
			
			return payment;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	};
	
	
	public void updatePayment(Payment payment) {
		
		try {
			
			String query = "update payment set packagePrice= '"+payment.getPackagePrice()+"' ,date_time='"+payment.getTimestamp()+"', tax = '"+payment.getTax()+"',total= '"+payment.getTotal()+"' where paymentID= '"+payment.getPaymentId()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			statement.executeUpdate(query);
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	};
	
	public void deletePayment(Payment payment) {
		
		try {
			
			String query = "Delete from payment where paymentId = '"+payment.getPaymentId()+"'";
			
			Statement statement = 	DBConnect.getConnection().createStatement();
			
			statement.executeUpdate(query);
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	};
	

}
