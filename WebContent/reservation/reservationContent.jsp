<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>예약 페이지</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <link rel="stylesheet" href="/reservation/css/reservationContent.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Yellowtail&display=swap" rel="stylesheet">

    <script src="/reservation/js/reservationContent.js"></script>

    <style type="text/css">
        @charset "UTF-8";

        #header {
            width: 100%;
            height: 100px;
            border-bottom: 1px solid #eee;
            background: white;
        }

        #header_inner {
            display: flex;
            align-items: center;
            margin: 0 auto;
            width: 1194px;
            height: 100px;
        }

        #title {
            display: flex;
            align-items: center;
            width: 200px;
            height: 100%;
            color: black;
            font-size: 24px;
            font-family: 'Yellowtail', cursive;
            font-weight: bold;
        }

        #title:hover {
            cursor: pointer;
        }

        #gnb {
            display: flex;
            width: 100%;
            font-size: 16px;
            font-weight: bold;
            color: #535353;
            align-items: center;
        }

        #gnb a {
            padding: 0 40px;
        }

        #alertIcon:hover,
        #noticeIcon:hover,
        #reserveIcon:hover,
        #messageIcon:hover,
        #myPageIcon:hover {
            cursor: pointer;
        }

        #dropdown {
            position: relative;
            display: inline-block;
        }

        #dropBtn {
            display: flex;
            width: 160px;
            color: #535353;
            padding: 16px;
            font-size: 16px;
            border: none;
            background: none;
        }

        #dropdown-content {
            margin-left: 50px;
            display: none;
            position: absolute;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
            border: 1px solid white;
            border-radius: 5px;
            background: rgba(0, 0, 0, .800);
        }

        #dropdown-content a {
            color: white;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        #dropdown-content a:hover {
            background: rgba(0, 0, 0, 0.3);
        }

        #dropdown:hover #dropdown-content {
            display: block;
        }

        #dropBtnTitle {
            font-weight: bold;
            padding: 0 4px 0 50px;
            height: 100%;
        }

        #dropImg {
            width: 20px;
            heihgt: 20px;
        }

        #messageIcon,
        #noticeIcon,
        #reserveIcon {
            color: #535353;
        }

        a:link {
            color: #535353;
            text-decoration: none;
        }

        a:visited {
            color: #535353;
            text-decoration: none;
        }

        a:hover {
            color: #535353;
            text-decoration: underline;
        }

        #title a:link {
            color: #FBAB7E;

        }

        #topHeader {
            width: 100%;
            height: 34px;
            background-color: #FBAB7E;
            background-image: linear-gradient(62deg, #FBAB7E 0%, #F7CE68 100%);
        }

        #topHeaderInner {
            margin: 0 auto;
            width: 1194px;
            height: 100%;
        }

        #topHeaderInner div {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            height: 100%;
            float: right;
            color: white;
        }

        * {
            margin: 0;
            padding: 0;
            text-decoration: none;
            list-style: none;
        }

        .reservationWrap {
            display: flex;
            margin: 0 auto;
            width: 1194px;
            height: 840px;
        }

        .mylist {
            margin-top: 80px;
            width: 18rem;
            height: 840px;
            border: none;
            border-radius: 10px;
        }

        .selectProf {
            display: flex;
            align-items: flex-start;
            width: 100%;
            height: 40px;
            font-size: 18px;
            font-weight: bold;
            border-bottom: 1px dotted #363B40;
        }

        .list {
            line-height: 40px;
            font-size: 14px;
            cursor: pointer;
            border-bottom: 1px dotted #C4C4C4;
        }

        .clicked {
            background: #363B40;
            color: white;
        }

        .profList th,
        .profList td {
            padding: 10px;
            font-size: 14px;
        }

        .profList td {
            text-align: center;
        }

        .profInfo a {
            color: #2575AF;
        }

        .selectProf a {
            color: #CE2E2E;
        }

        .profInfo a:hover {
            cursor: pointer;
        }

        .selectProf a:hover {
            cursor: pointer;
        }

        #reservationContentBodyBg {
            background: #FAFAFA;
        }

        .sender {
            margin-left: 80px;
            margin-top: 80px;
            padding-bottom: 10px;
            padding-top: 14px;
            padding-left: 20px;
            width: 810px;
            font-size: 16px;
            font-weight: bold;
            color: #3E454D;
            background: white;
            border-radius: 10px 10px 0 0;
            border-top: 1px solid #eee;
            border-left: 1px solid #eee;
            border-right: 1px solid #eee;
        }

        #contentBlank {
            width: 700px;
            height: 20px;

        }

        .profList th {
            font-size: 14px;
            border-bottom: 1px solid #C4C4C4;
            text-align: center;
        }

        .profList td {
            font-size: 14px;
            text-align: center;
        }

        .reservationInner {
            margin-top: 80px;
            display: block;
            width: 894px;
            height: 840px;
        }

        .reservationInnerWrap {
            width: 900px;
            height: 550px;
        }

        .reservationResult {
            display: block;
            margin-left: 80px;
            width: 820px;
        }

        .contentTitle {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            padding: 10px 20px;
            width: 830px;
            background: white;
            font-weight: bold;
            border-top: 1px solid #eee;
            border-left: 1px solid #eee;
            border-right: 1px solid #eee;
        }

        .contentBody {
            padding: 20px;
            width: 830px;
            background: white;
            border: 1px solid #eee;
            font-weight: bold;
        }

        .timeBox {
            display: inline-block;
            padding: 6px 0px;
            width: 96px;
            border: 1px solid #C4C4C4;
            border-radius: 5px;
            text-align: center;
            font-weight: regular;
            cursor: pointer;
        }

        .clicked {
            display: inline-block;
            padding: 6px 0px;
            width: 96px;
            border-radius: 5px;
            text-align: center;
            font-weight: regular;
            border-radius: 5px;
            background: #F8CA6B;
            color: white;
            border: none;
            border: 1px solid #F8CA6B;
            cursor: pointer;
        }

        .timeBoxMid:hover {
            display: inline-block;
            padding: 6px 0px;
            width: 96px;
            border: 1px solid #C4C4C4;
            border-radius: 5px;
            text-align: center;
            font-weight: regular;
            border-radius: 5px;
            background: #3E454D;
            color: white;
            border: none;
            border: 1px solid #3E454D;
            cursor: pointer;
        }

        .startTimeBox {
            display: inline-block;
            padding: 6px 0px;
            width: 96px;
            border: 1px solid #C4C4C4;
            border-radius: 5px;
            text-align: center;
            font-weight: regular;
            cursor: pointer;
        }

        .typeBtnWrap {
            display: flex;
            margin-left: 240px;
        }

        .typeBtnOff {
            margin-right: 128px;
            padding: 6px 0px;
            width: 96px;
            border: 1px solid #C4C4C4;
            border-radius: 30px;
            text-align: center;
        }


        #typeBtn {
            padding: 6px 0px;
            width: 96px;
            border: 1px solid #C4C4C4;
            border-radius: 30px;
            text-align: center;
        }

        .reservationBtn {
            margin-top: 40px;
            float: right;
            display: block;
            padding: 10px 20px;
            border-radius: 5px;
            background-color: #FBAB7E;
            color: white;
            border: none;
            border: 1px solid #FBAB7E;
        }

        #topHeader {
            width: 100%;
            height: 34px;
            background-color: #FBAB7E;
            background-image: linear-gradient(62deg, #FBAB7E 0%, #F7CE68 100%);
        }

        .reservationBtn:hover {
            margin-top: 40px;
            float: right;
            display: block;
            padding: 10px 20px;
            border-radius: 5px;
            color: #3E454D;
            border: 1px solid #3E454D;
            background: white;
            cursor: pointer;
        }

        .timeTitle {
            margin-bottom: 10px;
        }

        .timdBoxWrap {
            margin-top: 8px;
        }

        .reason {
            width: 248px;
            height: 24px;
        }

        #topHeaderInner {
            margin: 0 auto;
            width: 1194px;
            height: 100%;
        }

        #topHeaderInner div {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            height: 100%;
            float: right;
            color: white;
        }

        #calendar td {
            text-align: center;
            border-radius: 10px;
        }

        #selectBox {
            margin-top: 20px;
            float: right;
        }

        #selectOk {
            color: #4E65B5;
        }

        #selectNotOk {
            color: #DA3D3D;
        }

        a {
            color: #000000;
            text-decoration: none;
        }

        .scriptCalendar {
            text-align: center;
            margin-left: 234px;
        }

        .scriptCalendar > thead > tr > td {
            width: 48px;
            height: 48px;
            border-radius: 50px;
        }

        .scriptCalendar > thead > tr:first-child > td {
            font-weight: bold;
        }

        .scriptCalendar > thead > tr:last-child > td {
            background-color: #90EE90;
        }

        .scriptCalendar > tbody > tr > td {
            width: 48px;
            height: 48px;
            border-radius: 50px;
        }

        .startTimeBoxClicked {
            display: inline-block;
            padding: 6px 0px;
            width: 96px;
            border-radius: 5px;
            text-align: center;
            font-weight: regular;
            border-radius: 5px;
            background: #F8CA6B;
            color: white;
            border: none;
            border: 1px solid #F8CA6B;
            cursor: pointer;
        }

        #timeBoxesWrap,
        #reasonWrap {
            margin-left: 240px;
        }

    </style>

    <script type="text/javascript">
        document.addEventListener("DOMContentLoaded", function () {
            buildCalendar();
        });

        var today = new Date(); // @param 전역 변수, 오늘 날짜 / 내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
        var date = new Date();  // @param 전역 변수, today의 Date를 세어주는 역할

        /**
         * @brief   이전달 버튼 클릭
         */
        function prevCalendar() {
            this.today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
            buildCalendar();    // @param 전월 캘린더 출력 요청
        }

        /**
         * @brief   다음달 버튼 클릭
         */
        function nextCalendar() {
            this.today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
            buildCalendar();    // @param 명월 캘린더 출력 요청
        }

        /**
         * @brief   캘린더 오픈
         * @details 날짜 값을 받아 캘린더 폼을 생성하고, 날짜값을 채워넣는다.
         */
        function buildCalendar() {

            let doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
            let lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);

            let tbCalendar = document.querySelector(".scriptCalendar > tbody");


            document.getElementById("calYear").innerText = today.getFullYear();                                  // @param YYYY월
            document.getElementById("calMonth").innerText = autoLeftPad((today.getMonth() + 1), 2);   // @param MM월


            // @details 이전 캘린더의 출력결과가 남아있다면, 이전 캘린더를 삭제한다.
            while (tbCalendar.rows.length > 0) {
                tbCalendar.deleteRow(tbCalendar.rows.length - 1);
            }


            // @param 첫번째 개행
            let row = tbCalendar.insertRow();


            // @param 날짜가 표기될 열의 증가값
            let dom = 1;

            // @details 시작일의 요일값( doMonth.getDay() ) + 해당월의 전체일( lastDate.getDate())을  더해준 값에서
            //               7로 나눈값을 올림( Math.ceil() )하고 다시 시작일의 요일값( doMonth.getDay() )을 빼준다.


            let daysLength = (Math.ceil((doMonth.getDay() + lastDate.getDate()) / 7) * 7) - doMonth.getDay();

            // @param 달력 출력

            // @details 시작값은 1일을 직접 지정하고 요일값( doMonth.getDay() )를 빼서 마이너스( - )로 for문을 시작한다.
            for (let day = 1 - doMonth.getDay(); daysLength >= day; day++) {

                let column = row.insertCell();

                // @param 평일( 전월일과 익월일의 데이터 제외 )
                if (Math.sign(day) == 1 && lastDate.getDate() >= day) {


                    // @param 평일 날짜 데이터 삽입

                    column.innerText = autoLeftPad(day, 2);


                    // @param 일요일인 경우
                    if (dom % 7 == 1) {
                        column.style.color = "#FF4D4D";
                    }

                    // @param 토요일인 경우
                    if (dom % 7 == 0) {
                        column.style.color = "#4D4DFF";
                        row = tbCalendar.insertRow();   // @param 토요일이 지나면 다시 가로 행을 한줄 추가한다.
                    }

                }

                // @param 평일 전월일과 익월일의 데이터 날짜변경
                else {
                    let exceptDay = new Date(doMonth.getFullYear(), doMonth.getMonth(), day);
                    column.innerText = autoLeftPad(exceptDay.getDate(), 2);
                    column.style.color = "#E5E5E5";
                }

                // @brief   전월, 명월 음영처리
                // @details 현재년과 선택 년도가 같은경우
                if (today.getFullYear() == date.getFullYear()) {

                    // @details 현재월과 선택월이 같은경우
                    if (today.getMonth() == date.getMonth()) {

                        // @details 현재일보다 이전인 경우이면서 현재월에 포함되는 일인경우
                        if (date.getDate() > day && Math.sign(day) == 1) {
                            column.style.color = "#E5E5E5";
                        }

                        // @details 현재일보다 이후이면서 현재월에 포함되는 일인경우
                        else if (date.getDate() < day && lastDate.getDate() >= day) {
                            column.style.backgroundColor = "#FFFFFF";
                            column.style.cursor = "pointer";
                            column.onclick = function () {
                                calendarChoiceDay(this);
                            }
                        }

                        // @details 현재일인 경우
                        else if (date.getDate() == day) {
                            column.style.backgroundColor = "#FBAB7E";
                            column.style.cursor = "pointer";
                            column.onclick = function () {
                                calendarChoiceDay(this);
                            }
                        }

                        // @details 현재월보다 이전인경우
                    } else if (today.getMonth() < date.getMonth()) {
                        if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
                            column.style.color = "#E5E5E5";
                        }
                    }

                    // @details 현재월보다 이후인경우
                    else {
                        if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
                            column.style.backgroundColor = "#FFFFFF";
                            column.style.cursor = "pointer";
                            column.onclick = function () {
                                calendarChoiceDay(this);
                            }
                        }
                    }
                }

                // @details 선택한년도가 현재년도보다 작은경우
                else if (today.getFullYear() < date.getFullYear()) {
                    if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
                        column.style.backgroundColor = "#E5E5E5";
                    }
                }

                // @details 선택한년도가 현재년도보다 큰경우
                else {
                    if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
                        column.style.backgroundColor = "#FFFFFF";
                        column.style.cursor = "pointer";
                        column.onclick = function () {
                            calendarChoiceDay(this);
                        }
                    }
                }


                dom++;

            }
        }

        /**
         * @brief   날짜 선택
         * @details 사용자가 선택한 날짜에 체크표시를 남긴다.
         */
        function calendarChoiceDay(column) {

            // @param 기존 선택일이 존재하는 경우 기존 선택일의 표시형식을 초기화 한다.
            if (document.getElementsByClassName("choiceDay")[0]) {
                document.getElementsByClassName("choiceDay")[0].style.backgroundColor = "#FFFFFF";
                document.getElementsByClassName("choiceDay")[0].classList.remove("choiceDay");
                // 추가 - 기존 선택일이 존재하는 경우 hidden 값 삭제
                $("#choiceDay").remove();
                $("#choiceMonth").remove();
            }

            // @param 선택일 체크 표시
            column.style.backgroundColor = "#F8CA6B";
            column.style.color = "white";


            // @param 선택일 클래스명 변경

            column.classList.add("choiceDay");

            // 추가 - hidden 값 생성
            // 선택한 일
            var newInputDayElement = document.createElement("input");
            $(newInputDayElement).attr("type", "hidden");
            $(newInputDayElement).attr("id", "choiceDay");
            $(newInputDayElement).attr("name", "choiceDay");

            var contentDay = column.innerHTML;
            $(newInputDayElement).attr("value", contentDay);

            $("#contentBody").append(newInputDayElement);

            // 선택한 월
            var newInputMonthElement = document.createElement("input");
            $(newInputMonthElement).attr("type", "hidden");
            $(newInputMonthElement).attr("id", "choiceMonth");
            $(newInputMonthElement).attr("name", "choiceMonth");

            var contentMonth = document.getElementById("calMonth").innerHTML;
            $(newInputMonthElement).attr("value", contentMonth);

            $("#contentBody").append(newInputMonthElement);
        }

        /**
         * @brief   숫자 두자릿수( 00 ) 변경
         * @details 자릿수가 한지라인 ( 1, 2, 3등 )의 값을 10, 11, 12등과 같은 두자리수 형식으로 맞추기위해 0을 붙인다.
         * @param   num     앞에 0을 붙일 숫자 값
         * @param   digit   글자의 자릿수를 지정 ( 2자릿수인 경우 00, 3자릿수인 경우 000 … )
         */
        function autoLeftPad(num, digit) {
            if (String(num).length < digit) {
                num = new Array(digit - String(num).length + 1).join("0") + num;
            }
            return num;

        }

    </script>
</head>

<body id="reservationContentBodyBg">
<div id="topHeader">
    <div id="topHeaderInner">
        <div></div>
    </div>
</div>
<div id="header">
    <div id="header_inner">
        <div id="title"><a href="index.do">MEETU</a></div>
        <div id="gnb">
            <a id="noticeIcon" href="notice.do">공지사항</a>
            <a id="reserveIcon" href="reservationPro.do">상담예약</a>
            <a id="messageIcon" href="message.do">쪽지함</a>
        </div>
        <div id="dropdown">
            <div id="dropBtn">
                <div id="dropBtnTitle">${mem_dto.getName()}님</div>
                <div>
                    <img src="/components/images/keyboard_arrow_down_black_24dp.svg" id="dropImg"/>
                </div>
            </div>
            <div id="dropdown-content">
                <a href="myPage.do">마이페이지</a>
                <a href="logout.do">로그아웃</a>
            </div>
        </div>

        <img src="/components/images/notification.svg" id="alertIcon"/>
    </div>
</div>

<form method="post" action="/reservation/makeReservation.jsp">
    <div class="reservationWrap">
        <div>
            <ul class="mylist">
                <li class="selectProf"><img src="/reservation/images/beenhere_black_24dp.svg"/>&nbsp;&nbsp;상담예약</li>
                <li class="list" id="name">▶ 교수명: ${param.name}</li>
                <li class="list" id="dept">▶ 학과: ${param.major}</li>
                <li class="list" id="course">▶ 담당과목: ${param.course}</li>
                <li class="list" id="email">▶ 이메일: ${param.email}</li>
                <li class="list" id="office">▶ 연구실 위치: ${param.office}</li>
            </ul>
        </div>

        <div class="reservationInner">
            <div class="reservationInnerWrap">
                <table class="reservationResult">
                    <tr>
                        <td class="contentTitle">날짜 및 시간 선택</td>
                    </tr>
                    <tr>
                        <td class="contentBody" id="contentBody">
                            <table class="scriptCalendar">
                                <thead>
                                <tr>
                                    <td onClick="prevCalendar();" style="cursor:pointer;">&#60;&#60;</td>
                                    <td colspan="5">
                                        <span id="calYear">YYYY</span>년
                                        <span id="calMonth">MM</span>월
                                    </td>
                                    <td onClick="nextCalendar();" style="cursor:pointer;">&#62;&#62;</td>
                                </tr>
                                <tr>
                                    <td style="background: white;">일</td>
                                    <td style="background: white;">월</td>
                                    <td style="background: white;">화</td>
                                    <td style="background: white;">수</td>
                                    <td style="background: white;">목</td>
                                    <td style="background: white;">금</td>
                                    <td style="background: white;">토</td>
                                </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <div id="selectBox"><span id="selectOk">■</span> 선택 가능 <span id="selectNotOk">■</span> 선택 불가
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td id="contentBlank"></td>
                    </tr>

                    <tr id="contentWrap">
                        <td class="contentTitle">상담 시간</td>
                    </tr>
                    <tr>
                        <td class="contentBody">
                            <div id="timeBoxesWrap">
                                <div class="timeTitle" id="startTimeTitle">◈ 상담 시작 시간</div>
                                <div>
                                    <div>
                                        <div class="startTimeBox" id="9am">9:00</div> &nbsp;&nbsp;
                                        <div class="startTimeBox" id="10am">10:00</div> &nbsp;&nbsp;
                                        <div class="startTimeBox" id=11am">11:00</div>
                                    </div>
                                    <div class="timdBoxWrap">
                                        <div class="startTimeBox" id="12pm">12:00</div> &nbsp;&nbsp;
                                        <div class="startTimeBox" id="13pm">13:00</div> &nbsp;&nbsp;
                                        <div class="startTimeBox" id="14pm">14:00</div>
                                    </div>
                                    <div class="timdBoxWrap">
                                        <div class="startTimeBox" id="15pm">15:00</div> &nbsp;&nbsp;
                                        <div class="startTimeBox" id="16pm">16:00</div> &nbsp;&nbsp;
                                        <div class="startTimeBox" id="17pm">17:00</div>
                                    </div>
                                </div>
                                <br/>
                                <div class="timeTitle" id="timeTitle">◈ 상담 시간</div>
                                <div>
                                    <div class="timeBox" id="30m">30분</div> &nbsp;&nbsp;
                                    <div class="timeBox" id="1h">1시간</div> &nbsp;&nbsp;
                                    <div class="timeBox" id="2h">2시간</div>
                                </div>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td id="contentBlank"></td>
                    </tr>

                    <tr id="contentWrap">
                        <td class="contentTitle">상담 신청 사유</td>
                    </tr>

                    <tr>
                        <td class="contentBody">
                            <div id="reasonWrap">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="reason" value="전담 교수 면담"
                                       id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault" id="type1">
                                    전담 교수 면담
                                </label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="reason" value="진로 상담"
                                       id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault" id="type2">
                                    진로 상담
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="reason" value="휴학 상담"
                                       id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault" id="type3">
                                    휴학 상담
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="reason" value="대학원 상담"
                                       id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault" id="type4">
                                    대학원 상담
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" name="reason" value=""
                                       id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault" id="type5">
                                    기타: &nbsp; <input type="text" class="reason" id="reasonEtc"/>
                                </label>
                            </div>
                                </div>
                        </td>
                    </tr>

                    <tr>
                        <td id="contentBlank"></td>
                    </tr>

                    <tr id="contentWrap">
                        <td class="contentTitle">상담 유형</td>
                    </tr>

                    <tr>
                        <td class="contentBody">
                            <div class="typeBtnWrap">
                                <div class="typeBtnOff" id="typeBtn">오프라인</div>
                                <div class="typeBtnOn" id="typeBtn">온라인</div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input class="reservationBtn" type="submit" value="예약하기"/>
                        </td>
                    </tr>

                </table>
            </div>
        </div>
    </div>
</form>
<script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-8216c69d01441f36c0ea791ae2d4469f0f8ff5326f00ae2d00e4bb7d20e24edb.js"></script>

<script id="rendered-js">
    var div2 = document.getElementsByClassName("timeBox");

    function handleClick(event) {
        console.log(event.target);
        console.log(event.target.classList);
        if (event.target.classList[1] === "clicked") {
            event.target.classList.remove("clicked");
        } else {
            for (var i = 0; i < div2.length; i++) {
                if (window.CP.shouldStopExecution(0)) break;
                div2[i].classList.remove("clicked");
            }
            window.CP.exitedLoop(0);
            event.target.classList.add("clicked");
        }
    }

    function init() {
        for (var i = 0; i < div2.length; i++) {
            if (window.CP.shouldStopExecution(1)) break;
            div2[i].addEventListener("click", handleClick);
        }
        window.CP.exitedLoop(1);
    }

    init();
</script>

<script id="rendered-js">
    var div2 = document.getElementsByClassName("startTimeBox");

    function handleClick(event) {
        console.log(event.target);
        console.log(event.target.classList);
        if (event.target.classList[1] === "startTimeBoxClicked") {
            event.target.classList.remove("startTimeBoxClicked");
        } else {
            for (var i = 0; i < div2.length; i++) {
                if (window.CP.shouldStopExecution(0)) break;
                div2[i].classList.remove("startTimeBoxClicked");
            }
            window.CP.exitedLoop(0);
            event.target.classList.add("startTimeBoxClicked");
        }
    }

    function init() {
        for (var i = 0; i < div2.length; i++) {
            if (window.CP.shouldStopExecution(1)) break;
            div2[i].addEventListener("click", handleClick);
        }
        window.CP.exitedLoop(1);
    }

    init();
</script>

<script id="rendered-js">
    var div2 = document.getElementsByClassName("typeBtn");

    function handleClick(event) {
        console.log(event.target);
        console.log(event.target.classList);
        if (event.target.classList[1] === "typeBtnClicked") {
            event.target.classList.remove("typeBtnClicked");
        } else {
            for (var i = 0; i < div2.length; i++) {
                if (window.CP.shouldStopExecution(0)) break;
                div2[i].classList.remove("typeBtnClicked");
            }
            window.CP.exitedLoop(0);
            event.target.classList.add("typeBtnClicked");
        }
    }

    function init() {
        for (var i = 0; i < div2.length; i++) {
            if (window.CP.shouldStopExecution(1)) break;
            div2[i].addEventListener("click", handleClick);
        }
        window.CP.exitedLoop(1);
    }

    init();
</script>

<script src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-4793b73c6332f7f14a9b6bba5d5e62748e9d1bd0b5c52d7af6376f3d1c625d7e.js"></script>

</body>
</html>