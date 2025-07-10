package Services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Model.Customer;
import Model.Package;
import Utils.DBConnect;

public class PackageService {
	
	public void addNewPackage(Package pkg) {
		
		try {
			
			String query = "insert into package (name,description,price,noOfGuests,location) values('"+pkg.getName()+"','"+pkg.getDescription()+"','"+pkg.getPrice()+"','"+pkg.getNoOfGuests()+"','"+pkg.getLocation()+"')";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			statement.executeUpdate(query);
						
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
	};
	
	public ArrayList<Package> getAllPackages(){
		
		try {
			
			ArrayList<Package> ListPackages  = new ArrayList<Package>();
			
			String query = "select * from package";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				
			
				Package pack = new Package();
				
				pack.setId(rs.getInt("id"));
				pack.setName(rs.getString("name"));
				pack.setDescription(rs.getString("description"));
				pack.setPrice(rs.getInt("price"));
				pack.setNoOfGuests(rs.getInt("noOfGuests"));
				pack.setLocation(rs.getString("location"));
				
				ListPackages.add(pack);
				
				
			}
			
			return ListPackages;
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
			return null;
		}
	};
	
	
	public Package getSinglePackage(Package pack) {
		
		
		try {
			
			String query = "select * from package where id = '"+pack.getId()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				
				pack.setId(rs.getInt("id"));
				pack.setName(rs.getString("name"));
				pack.setDescription(rs.getString("description"));
				pack.setPrice(rs.getInt("price"));
				pack.setNoOfGuests(rs.getInt("noOfGuests"));
				pack.setLocation(rs.getString("location"));
				
				return pack;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return null;
		
	};
	
	
	public void updatePackage(Package pack) {
		
		try {
			
			String query = "update package set name='"+pack.getName()+"',description='"+pack.getDescription()+"',price='"+pack.getPrice()+"',noOfGuests = '"+pack.getNoOfGuests()+"',location='"+pack.getLocation()+"' where id='"+pack.getId()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			statement.executeUpdate(query);
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
	};
	
	public void deletePackage(Package pack) {
		
		try {
			
			String query = "delete from package where id = '"+pack.getId()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
	};
	

}
