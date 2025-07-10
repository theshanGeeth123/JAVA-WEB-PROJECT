package Services;

import java.sql.ResultSet;
import java.sql.Statement;

import Model.Admin;
import Utils.DBConnect;

public class AdminService {
	
	public boolean adminValidate(Admin admin) {
		
		try {
			
			String query = "select * from admin where email = '"+admin.getEmail()+"' and password = '"+admin.getPassword()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				return true;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		return false;
	}

}
