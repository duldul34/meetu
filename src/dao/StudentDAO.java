package meetu.dao;

import java.util.ArrayList;
import java.sql.*;
import common.dbutil.ConnectionUniversity;
import common.dbutil.Disconnection;

public class StudentDAO {
	Connection con;
	private static StudentDAO studentDAO;
	
	private StudentDAO() {
		
	}
	
	public void setConnection(Connection con) {
		this.con = con;
	}
	
	public static StudentDAO getInstance() {
		if(studentDAO == null) {
			studentDAO = new StudentDAO();
		}
		
		return studentDAO;
	}
}
