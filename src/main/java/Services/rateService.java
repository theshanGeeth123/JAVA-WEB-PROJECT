package Services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Model.Customer;
import Model.rattings;
import Utils.DBConnect;

public class rateService {
	
	
	 // insert user ratings//
	public void userRatings(rattings rate) {
		try {
			String query ="insert into rating(email,Name,Rating,Comment,hotelevent) values('"+rate.getEmail()+"','"+rate.getName()+"','"+rate.getRatings()+"','"+rate.getComm()+"','"+rate.getHotelevent()+"')";
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}



	//all ratings from the database//
	public ArrayList<rattings> getAllrating() {
		try {
			ArrayList<rattings> listRate = new ArrayList<rattings>();
			
			String query = "SELECT * FROM rating";
			
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			while (rs.next()) {
				rattings rate1 = new rattings();
				rate1.setRatingID(rs.getInt("ratingID"));
				rate1.setEmail(rs.getString("email"));
				rate1.setName(rs.getString("name"));
				rate1.setRatings(rs.getInt("Rating"));
				rate1.setComm(rs.getString("Comment"));	
				rate1.setHotelevent(rs.getString("hotelevent"));
				
				System.out.println("allrate: "+ rate1.getRatingID());
				listRate.add(rate1);
			}
			return listRate;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	
	//myRatings//
	public ArrayList<rattings> getMyRatings(Customer cus) {
		try {
			ArrayList<rattings> myRate = new ArrayList<rattings>();
			
			String query = "SELECT * FROM rating where email = '"+cus.getEmail()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			while (rs.next()) {
				rattings rateM = new rattings();
				rateM.setRatingID(rs.getInt("ratingID"));
				rateM.setEmail(rs.getString("email"));
				rateM.setName(rs.getString("name"));
				rateM.setRatings(rs.getInt("Rating"));
				rateM.setComm(rs.getString("Comment"));
				rateM.setHotelevent(rs.getString("hotelevent"));
				System.out.println("Myrate: "+ rateM.getRatingID());

				myRate.add(rateM);
			}
			return myRate;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	
	
	//Update myRatings//
	public void updateRating(rattings eRate) {
		try {
			
/*			String query = "UPDATE rating SET Name = '" + eRate.getName() + 
		               "', Rating = " + eRate.getRatings() + 
		               ", Comment = '" + eRate.getComm() + 
		               "', hotelevent = '" + eRate.getHotelevent() + 
		               "' WHERE email = '" + eRate.getEmail() + 
		               "' AND ratingID = '" + eRate.getRatingID() + "' ";	*/

			String query = "UPDATE rating SET Name = '" + eRate.getName() + 
		               "', Rating = " + eRate.getRatings() + 
		               ", Comment = '" + eRate.getComm() + 
		               "', hotelevent = '" + eRate.getHotelevent() + 
		               "' WHERE ratingID = '" + eRate.getRatingID() + "' ";


			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	public void deleteRating(rattings dRate) {
		
		try {
			String query ="DELETE from rating WHERE ratingID = '" + dRate.getRatingID() + "' ";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}