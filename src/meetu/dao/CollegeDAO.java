package meetu.dao;

import java.util.ArrayList;

import meetu.common.dbutil.DBConnection;
import meetu.common.dbutil.Disconnection;

import java.sql.*;

public class CollegeDAO {
	Connection con;
	private static CollegeDAO collegeDAO;
	
	private CollegeDAO() {
		
	}
	
	public void setConnection(Connection con) {
		this.con = con;
	}
	
	public static CollegeDAO getInstance() {
		if(collegeDAO == null) {
			collegeDAO = new CollegeDAO();
		}
		
		return collegeDAO;
	}
}