package meetu.dao;

import java.sql.*;
import common.dbutil.ConnectionUniversityManage;
import common.dbutil.Disconnection;

public class UniversityDAO {
	Connection con;
	private static UniversityDAO universityDAO;
	
	private UniversityDAO() {
		
	}
	
	/*
	 * 책�? action > service > dao ?��?���? ?���? ?��?��, service ?��?��?��?��?�� ?���? ?��?�� (getConnection)
	 * 멘토?�� ?��?��, ?���? 블로�? 링크?��?��?�� service ?��?��?�� ?��?�� �? dao 메소?��?��?�� ?���? ?��?��
	 * service ?��?��?�� ?��?�� 진행?��?���? setConnection ?��?��?��?�� ?��?��?�� ?�� ?��...? (?��?�� x)
	 * public void setConnection(Connection con) {
	 *     this.con = con;
	 * }
	*/
	
	public static UniversityDAO getInstance() {
		if(universityDAO == null) {
			universityDAO = new UniversityDAO();
		}
		
		return universityDAO;
	}
}
