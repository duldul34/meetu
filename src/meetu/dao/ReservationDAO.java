package meetu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import meetu.common.dbutil.DBConnection;
import meetu.dto.*;


public class ReservationDAO {
	private static ReservationDAO instance = new ReservationDAO();

	public static ReservationDAO getInstance() {
		return instance;
	}
	
	// login한 회원의 모든 예약정보 dto 반환
	public ArrayList<ReservationDTO> getReservationInfo(String univ, String id) throws NamingException/* , SQLException */ {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ReservationDTO> reservations = new ArrayList<ReservationDTO>();

		try {
			Connection conn = DBConnection.getConnection(univ);
			String sql = "select * from reservation where ";
			
			MemberDAO mem_dao = MemberDAO.getInstance();
			MemberDTO mem_dto = mem_dao.getMemberInfo(univ, id);
			String role = (String) mem_dto.getRole();
			if(role.equals("0")) {
				sql += "s_user_id=?";
			}
			else {
				sql += "p_user_id=?";
			}

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				ReservationDTO reservation_dto = new ReservationDTO();
				reservation_dto.setResId(rs.getString("res_id"));
				reservation_dto.setStartTime(rs.getString("start_time"));
				reservation_dto.setEndTime(rs.getString("end_time"));
				reservation_dto.setReason(rs.getString("reason"));
				reservation_dto.setType(rs.getInt("type"));
				reservation_dto.setState(rs.getInt("state"));
				reservation_dto.setRejectMsg(rs.getString("reject_msg"));
				reservation_dto.setPUserId(rs.getString("p_user_id"));
				reservation_dto.setSUserId(rs.getString("s_user_id"));
				reservations.add(reservation_dto);
					
				while(rs.next()) {
					reservation_dto = new ReservationDTO();
					reservation_dto.setResId(rs.getString("res_id"));
					reservation_dto.setStartTime(rs.getString("start_time"));
					reservation_dto.setEndTime(rs.getString("end_time"));
					reservation_dto.setReason(rs.getString("reason"));
					reservation_dto.setType(rs.getInt("type"));
					reservation_dto.setState(rs.getInt("state"));
					reservation_dto.setRejectMsg(rs.getString("reject_msg"));
					reservation_dto.setPUserId(rs.getString("p_user_id"));
					reservation_dto.setSUserId(rs.getString("s_user_id"));
					reservations.add(reservation_dto);
				}
			}
			else {
				return null;
			}
			// if close
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return reservations;
	}
	
	// 특정 예약정보 dto 반환
	public ReservationDTO getReservation(ReservationDTO reservation_dto, String univ) throws NamingException/* , SQLException */ {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Connection conn = DBConnection.getConnection(univ);
			String sql = "select * from reservation where res_id=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reservation_dto.getResId());

			rs = pstmt.executeQuery();

			if (rs.next()) {
				reservation_dto.setResId(rs.getString("res_id"));
				reservation_dto.setStartTime(rs.getString("start_time"));
				reservation_dto.setEndTime(rs.getString("end_time"));
				reservation_dto.setReason(rs.getString("reason"));
				reservation_dto.setType(rs.getInt("type"));
				reservation_dto.setState(rs.getInt("state"));
				reservation_dto.setRejectMsg(rs.getString("reject_msg"));
				reservation_dto.setPUserId(rs.getString("p_user_id"));
				reservation_dto.setSUserId(rs.getString("s_user_id"));
			}
			else {
				return null;
			}
			// if close
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return reservation_dto;
	}
	
	// state를 dto에 들어있는 상태에 따라 변경
	public boolean changeState(ReservationDTO reservation_dto, String univ) throws NamingException/* , SQLException */ {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean is_changed = false;

		try {
			Connection conn = DBConnection.getConnection(univ);
			String sql = "update reservation set state=? where res_id=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, reservation_dto.getState());
			pstmt.setString(2, reservation_dto.getResId());

			rs = pstmt.executeQuery();
						
			is_changed = true;
						
			// if close
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return is_changed;
	}
		
	// 특정 예약정보 dto db에서 삭제
	public boolean deleteReservation(ReservationDTO reservation_dto, String univ) throws NamingException/* , SQLException */ {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean is_deleted = false;

		try {
			Connection conn = DBConnection.getConnection(univ);
			String sql = "delete from reservation where res_id=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reservation_dto.getResId());

			rs = pstmt.executeQuery();
								
			is_deleted = true;
								
			// if close
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return is_deleted;
	}
	
	// 예약 dto에 거절 메시지 추가
	public boolean addRejectMessage(ReservationDTO reservation_dto, String univ) throws NamingException/* , SQLException */ {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean is_added = false;

		try {
			Connection conn = DBConnection.getConnection(univ);
			String sql = "update reservation set reject_msg=? where res_id=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reservation_dto.getRejectMsg());
			pstmt.setString(2, reservation_dto.getResId());

			rs = pstmt.executeQuery();
						
			is_added = true;
						
			// if close
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return is_added;
	}
	
	// 예약 레코드 추가
	public boolean makeReservation(String univ, String start_time, String reason, int type, String p_user_id, String s_user_id)throws NamingException/* , SQLException */ {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean is_added = false;

		try {
			Connection conn = DBConnection.getConnection(univ);
			String sql = "insert into reservation (res_id, start_time, reason, type, state, p_user_id, s_user_id) ";
			sql += "values (reservation_seq.NEXTVAL, TO_DATE(?,'YY/MM/DD HH24:MI:SS'), ?, ?, 0, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, start_time);
			pstmt.setString(2, reason);
			pstmt.setInt(3, type);
			pstmt.setString(4, p_user_id);
			pstmt.setString(5, s_user_id);

			rs = pstmt.executeQuery();
								
			is_added = true;
								
			// if close
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return is_added;
	}
	
	// 교수 상담 가능 시간 반환
	public ArrayList<ConsultableTimeDTO> getConsultableTimes(String univ, String p_user_id) throws NamingException {
		ArrayList<ConsultableTimeDTO> consultableTimes = new ArrayList<ConsultableTimeDTO>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			Connection conn = DBConnection.getConnection(univ);
			String sql = "select * from consultable_time where p_user_id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_user_id);

			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				ConsultableTimeDTO consultableTime_dto = new ConsultableTimeDTO();
				
				consultableTime_dto.setDisableDate(rs.getString("disable_date"));
				consultableTime_dto.setDisableTime(rs.getString("disable_time"));
				consultableTime_dto.setP_user_id(p_user_id);
				
				consultableTimes.add(consultableTime_dto);
			}
								
			// if close
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return consultableTimes;
	}

	// 같은 교수 예약 신청 대기/승인 레코드 존재 여부 반환
	public boolean isReservatedProfessor(String univ, String s_user_id, String p_user_id) throws NamingException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Connection conn = DBConnection.getConnection(univ);
			String sql = "select * from reservation where s_user_id=? and p_user_id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, s_user_id);
			pstmt.setString(2, p_user_id);

			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				if(rs.getString("approval").equals("0") || rs.getString("approval").equals("1")) {
					return true;
				}
			}
								
			// if close
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	// res_id에 해당하는 상담기록이 존재하는지 확인하여 상담기록 dto 반환
	public ConsultDTO getConsult(ReservationDTO reservation_dto, String univ) throws NamingException/* , SQLException */ {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ConsultDTO consult_dto = null;

		try {
			Connection conn = DBConnection.getConnection(univ);
			String sql = "select * from consult where res_id=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reservation_dto.getResId());

			rs = pstmt.executeQuery();

			if (rs.next()) {
				consult_dto = new ConsultDTO();
				consult_dto.setResId(rs.getString("res_id"));
				consult_dto.setContent(rs.getString("content"));
			}
			else {
				return null;
			}
			// if close
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return consult_dto;
	}
		
	// 상담기록  dto db에 추가
	public boolean addConsult(ConsultDTO consult_dto, String univ) throws NamingException/* , SQLException */ {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean is_added = false;

		try {
			Connection conn = DBConnection.getConnection(univ);
			String sql = "insert into consult (res_id, content) ";
			sql += "values (?, ?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, consult_dto.getResId());
			pstmt.setString(2, consult_dto.getContent());

			rs = pstmt.executeQuery();
						
			is_added = true;
						
			// if close
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return is_added;
	}
		
	// 상담기록 dto content 수정
	public boolean updateConsultContent(ConsultDTO consult_dto, String univ) throws NamingException/* , SQLException */ {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean is_changed = false;

		try {
			Connection conn = DBConnection.getConnection(univ);
			String sql = "update consult set content=? where res_id=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, consult_dto.getContent());
			pstmt.setString(2, consult_dto.getResId());

			rs = pstmt.executeQuery();
							
			is_changed = true;
							
			// if close
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return is_changed;
	}
}
