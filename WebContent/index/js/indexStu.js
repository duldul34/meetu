$(document).ready(function(){ // html이 로드되면 실행됨  
	getSchedule(); // 사이드바 학과들 출력
});

function getSchedule() {
	$.ajax({
	 	type: "GET",
		url: "/index/getSchedule.jsp",
		dataType: "text",
		success: updatePage,
		error: function(jqXHR, textStatus, errorThrown) {
			var message = jqXHR.getResponseHeader("Status");
			if ((message == null) || (message.length <= 0)) {
				alert("Error! Request status is " + jqXHR.status);
			} else {
				alert(message);	
			}
		}
	});
}

function updatePage (responseText) {
	// alert("schedules: " + responseText);
	var reservations = JSON.parse(responseText);
	
	if (reservations != null) {
		$("#cal_msg").children().remove();
	}
	
	count = 0;
	Array.from(reservations).forEach(function(reservation, idx) {
		var res_date = reservation.res_date;
		var p_name = reservation.p_name;
		var approval = reservation.approval;
		var reason = reservation.reason;
		
		if(approval == 1 && count < 5) {
			count++;
			var res_time = res_date.substring(5,16);
			
			var newPElement = document.createElement("p");
			var content = res_time + ", " + p_name + " 교수님과 " + reason;
			newPElement.innerHTML = content;
			
			$("#cal_msg").append(newPElement);
		}
	});
}