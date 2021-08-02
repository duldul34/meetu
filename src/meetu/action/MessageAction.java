package meetu.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.HashMap;
import java.util.ArrayList;
import java.util.Iterator;

import meetu.dao.*;
import meetu.dto.*;

public class MessageAction implements CommandAction {
	
	@Override
	public String requestPro(HttpServletRequest req, HttpServletResponse res) throws Throwable {
		HttpSession session = req.getSession();
		UniversityDTO univ_dto = (UniversityDTO) session.getAttribute("univ_dto");
		MemberDTO mem_dto = (MemberDTO) session.getAttribute("mem_dto");
		String univ = univ_dto.getUnivId();
		String id = (String) session.getAttribute("user_id");
		
		ReservationDAO reservation_dao = ReservationDAO.getInstance();
		ArrayList<ReservationDTO> reservations = (ArrayList<ReservationDTO>) reservation_dao.getReservationInfo(univ, id);
		
		if(reservations != null) {
			HashMap<String, ArrayList<String>> mem_map = new HashMap<String, ArrayList<String>>(); 
			Iterator<ReservationDTO> iterator = reservations.iterator();
			MemberDAO mem_dao = MemberDAO.getInstance();
			
			while(iterator.hasNext()) {
				ReservationDTO reservation_dto = iterator.next();
				if(reservation_dto.getState() == 1) { // 예약이 승인된 경우에만
					String user_id;
					if(mem_dto.getRole().equals("0")) {
						user_id = reservation_dto.getPUserId();
					}
					else {
						user_id = reservation_dto.getSUserId();
					}
					
					MemberDTO member = mem_dao.getMemberInfo(univ, user_id);
					DepartmentDTO dept_dto = mem_dao.getDepartmentInfo(member, univ);
					ArrayList<String> mem_list = new ArrayList<>();
					mem_list.add(dept_dto.getDeptName());
					mem_list.add(member.getName());
					
					mem_map.put(user_id, mem_list); // key-상대방의 id, value-상대방의 학과 및 이름 
				}
			}
			
			req.setAttribute("msg_mem", mem_map);
		}
		
		return "/message/message.jsp";
	}
}
