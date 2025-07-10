package Services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Model.Planner;
import Utils.DBConnect;

//create palnner
public class Planservice {
	
	public void regPlan(Planner plan) {
		try {
			
			String query = "insert into planner(Name,cont,mail,cName,eType,locate,exp,desccrip)values('"+plan.getName()+"','"+plan.getContact()+"','"+plan.getMail()+"','"+plan.getcName()+"','"+plan.getEventType()+"','"+plan.getLocate()+"','"+plan.getExperience()+"','"+plan.getDescrip()+"')";
			Statement statement= DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
//read planer
	public static List<Planner>getPlan(){
		ArrayList<Planner> allplan = new ArrayList<>();
		try {
			String query = "select * from planner";
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			while(rs.next()) {
				Planner pln = new Planner();
				pln.setPlanid(rs.getInt(1));
				pln.setName(rs.getString(2));
				pln.setContact(rs.getString(3));
				pln.setMail(rs.getString(4));
				pln.setcName(rs.getString(5));
				pln.setEventType(rs.getString(6));
				pln.setLocate(rs.getString(7));
				pln.setExperience(rs.getInt(8));
				pln.setDescrip(rs.getString(9));
				
				allplan.add(pln);
			}return allplan;
			
		}catch(Exception e) {
			e.printStackTrace();
			return null;
			
		}
	}
	//update planner
	public void UpdatePlan(Planner plan) {
		try {
			
			String query = "UPDATE planner SET Name = '" + plan.getName() + 
		               "', cont = '" + plan.getContact() + 
		               "', mail = '" + plan.getMail() + 
		               "', cName = '" + plan.getcName() + 
		               "', eType = '" + plan.getEventType() + 
		               "', locate = '" + plan.getLocate() + 
		               "', exp = '" + plan.getExperience() + 
		               "', desccrip = '" + plan.getDescrip() + 
		               "' WHERE planid = " + plan.getPlanid();
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//delete planer
	public void DeletePlann(Planner plan) {
		
		try {
			
			String query = "Delete From planner where planid = '"+plan.getPlanid()+"'";
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	//search planer
	public static List<Planner>Search(String etype){
		ArrayList<Planner>allPlaner = new ArrayList<>();
		try {
			
			String query = "select Name,cont,mail,eType,locate,exp,desccrip from planner where eType='"+etype+"'";
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			while(rs.next()) {
				Planner pln = new Planner();
				pln.setName(rs.getString(1));
				pln.setContact(rs.getString(2));
				pln.setMail(rs.getString(3));
				pln.setEventType(rs.getString(4));
				pln.setLocate(rs.getString(5));
				pln.setExperience(rs.getInt(6));
				pln.setDescrip(rs.getString(7));
				
				allPlaner.add(pln);
				
				
			}return allPlaner;
			
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
