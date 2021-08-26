<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>내 정보</title>
    <link href="https://fonts.googleapis.com/css2?family=Yellowtail&display=swap" rel="stylesheet">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/myPage/js/profInfo.js"></script>
    
    <style>
        * {
            padding: 0px;
            margin: 0px;
        }

        body {
            background: #FAFAFA;
        }

        #noticeIcon:hover,
        #reserveIcon:hover,
        #messageIcon:hover {
            cursor: pointer;
        }

        #noticeIcon,
        #reserveIcon,
        #messageIcon {
            color: black;
        }

        a:link {
            color: black;
            text-decoration: none;
        }

        a:visited {
            color: black;
            text-decoration: none;
        }

        a:hover {
            color: black;
            text-decoration: none;
        }

        #title,
        #title a:link,
        #title a:visited,
        #title a:hover {
            color: #1abc9c;

        }

        #header {
            width: 100%;
            height: 80px;
            background: white;
            border-bottom: 1px solid #EAEAEA;
        }

        #headerInner {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 0 auto;
            width: 1194px;
            height: 100%;
        }

        #headerInnerL {
            display: flex;
            align-items: center;
        }

        #title {
            font-family: 'Yellowtail', cursive;
            font-size: 18px;
            font-weight: bold;
        }

        #gnb {
            margin-left: 140px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 300px;
            font-size: 14px;
        }

        #headerInnerR {
            display: flex;
            align-items: center;
        }

        #dropdown {
            position: relative;
            display: inline-block;
            font-size: 14px;
            padding: 14px;
        }

        #dropdown-button div {
            justify-content: flex-end;
        }

        #dropdown-content {
            display: none;
            position: absolute;
            background-color: white;
            margin-top: 14px;
            min-width: 130px;
            padding: 4px;
            border-radius: 5px;
            box-shadow: 0px 4px 8px 0px rgba(0, 0, 0, 0.2);
        }

        #dropdown-content a {
            color: black;
            padding: 8px;
            text-decoration: none;
            display: block;
        }

        #dropdown-content a:hover {
            background-color: #FAFAFA;
            border-radius: 5px;
        }

        #dropdown:hover #dropdown-content {
            display: block;
        }

        #headerInnerR img {
            margin-left: 60px;
        }

        #navWrap {
            padding-top: 80px;
            display: flex;
            justify-content: space-between;
            margin: 0 auto;
            width: 1194px;
        }

        #navL {
            width: 318px;
            height: 500px;
            border-radius: 5px;
        }

        #navLTit {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 40px;
            border: 1px solid #EAEAEA;
            font-size: 16px;
            background: white;
            border-radius: 5px 5px 0px 0px;
        }

        #navListWrap {
            width: 100%;
            border-bottom: 1px solid #EAEAEA;
            border-left: 1px solid #EAEAEA;
            border-right: 1px solid #EAEAEA;
            background: white;
            border-radius: 0px 0px 5px 5px;
        }

        #navListName {
            display: flex;
            align-items: center;
            width: 298px;
            height: 40px;
            padding-left: 20px;
            font-size: 14px;
            color: #1abc9c;
        }

        #profDataMfBtnWrap {
            margin-top: 60px;
            margin-bottom: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 40px;
            font-size: 14px;
        }

        #navList {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 40px;
            font-size: 14px;
        }

        #profMfName {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 318px;
            height: 40px;
            font-size: 14px;
            background: #1abc9c;
            color: white;
        }

        #navR {
            width: 816px;
            height: 500px;
        }

        #navRTit {
            display: flex;
            align-items: center;
            padding-left: 20px;
            width: 796px;
            height: 40px;
            font-size: 16px;
            background: white;
            border-radius: 5px 5px 0px 0px;
            border: 1px solid #EAEAEA;
        }

        #navRContentWrap {
            width: 776px;
            padding: 35px 20px;
            background: white;
            border-radius: 0px 0px 5px 5px;
            border-bottom: 1px solid #EAEAEA;
            border-left: 1px solid #EAEAEA;
            border-right: 1px solid #EAEAEA;
            font-size: 14px;
        }

        #noticeImg {
            width: 14px;
            height: 14px;
        }

        #noticeImg:hover {
            cursor: pointer;
        }

        #profDataMfBtn {
            width: 100px;
            height: 40px;
            font-size: 14px;
            color: #1abc9c;
            background: white;
            border-radius: 5px;
            border: 1px solid #1abc9c;
        }

        #profDataMfBtn:hover {
            width: 100px;
            height: 40px;
            font-size: 14px;
            color: white;
            background: #1abc9c;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }

        #userImgWrap {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 316px;
            height: 180px;
            font-size: 14px;
            background-image: url("../images/user.svg");
            background-position: center;
            background-size: cover;
        }

        #profNameMfWrap,
        #profDeptMfWrap {
            display: flex;
            align-items: center;
        }

        #profMajorMfWrap,
        #profSubjectMfWrap,
        #profEmailMfWrap,
        #profLocationMfWrap,
        #profAbleTimeMfWrap {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        #profNameMfWrap,
        #profDeptMfWrap,
        #profMajorMfWrap,
        #profSubjectMfWrap,
        #profEmailMfWrap,
        #profLocationMfWrap {
            margin-bottom: 50px;
        }


        #profMajorMfWrap > div,
        #profSubjectMfWrap > div,
        #profEmailMfWrap > div,
        #profLocationMfWrap > div,
        #profAbleTimeMfWrap > div {
            display: flex;
        }

        #profNameMfTit,
        #profDeptMfTit,
        #profMajorMfTit,
        #profSubjectMfTit,
        #profEmailMfTit,
        #profLocationMfTit,
        #profAbleTimeMfTit {
            width: 140px;
            border-right: 3px solid #1abc9c;
        }

        #profNameMfText,
        #profDeptMfText,
        #profMajorMfText,
        #profSubjectMfText,
        #profEmailMfText,
        #profLocationMfText,
        #profAbleTimeMfText {
            margin-left: 40px;
        }

        #modifyBtn {
            padding: 2px 8px;
            color: #C4C4C4;
            background: #EAEAEA;
            border: 1px solid #C4C4C4;
            border-radius: 50px;
        }

        #modifyBtn:hover {
            cursor: pointer;
        }

        .swal-button {
            padding: 7px 19px;
            border-radius: 2px;
            background-color: #1abc9c;
            font-size: 12px;
            border: 1px solid #1abc9c;
            text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.3);
        }

    </style>
</head>
<body>
<div id="header">
    <div id="headerInner">
        <div id="headerInnerL">
            <div id="title"><a href="index.do">MEETU</a></div>
            <div id="gnb">
                <div><a id="noticeIcon" href="notice.do">공지사항</a></div>
                <c:if test="${mem_dto.getRole()=='0'}">
                    <div><a id="reserveIcon" href="reservation.do">상담예약</a></div>
                    <div><a id="messageIcon" href="message.do">쪽지함</a></div>
                </c:if>
                <c:if test="${mem_dto.getRole()=='1'}">
                    <div><a id="messageIcon" href="message.do">쪽지함</a></div>
                    <div><a id="reserveIcon" href="#"/></div>
                </c:if>
            </div>
        </div>
        <div id="headerInnerR">
            <div id="dropdown">
                <div id="dropdown-button">${mem_dto.getName()}님 😊</div>
                <div id="dropdown-content">
                    <a href="myPage.do">마이페이지</a>
                    <a href="logout.do">로그아웃</a>
                </div>
            </div>
            <img src="/images/bell.svg" id="noticeImg"/>
        </div>
    </div>
</div>

<div id="navWrap">
    <div id="navL">
        <div id="navLTit">교수 정보</div>
        <div id="navListWrap">
            <div id="userImgWrap"></div>
            <div id="profMfName">${mem_dto.getName()}</div>
            <div id="navList">${univ_dto.getUnivName()}</div>
            <div id="profDataMfBtnWrap">
                <button id="profDataMfBtn">저장</button>
            </div>
        </div>
    </div>

    <div id="navR">
        <div id="navRTit">교수 정보 수정</div>
        <div id="navRContentWrap">
            <div id="profNameMfWrap">
                <div id="profNameMfTit">교수명</div>
                <div id="profNameMfText">${param.name}</div>
			</div>
            <div id="profDeptMfWrap">
                <div id="profDeptMfTit">학과</div>
                <div id="profDeptMfText">${param.dept}</div>
            </div>
            <div id="profMajorMfWrap">
                <div>
                    <div id="profMajorMfTit">전공</div>
                    <div id="profMajorMfText">${param.major}</div>
                </div>
                <button id="modifyBtn" onClick="majorMfBtn()">수정</button>
            </div>
            <div id="profSubjectMfWrap">
                <div>
                    <div id="profSubjectMfTit">담당과목</div>
                    <div id="profSubjectMfText">
                    	<c:forEach items="${courses}" var="list">
							 ${list.title} &nbsp;<a style="color:red; cursor:pointer;" onClick="alert('클릭');">x</a><br/>
						</c:forEach>
					</div>
                </div>
                <button id="modifyBtn" onClick="subjectMfBtn()">추가</button>
            </div>
            <div id="profEmailMfWrap">
                <div>
                    <div id="profEmailMfTit">이메일</div>
                    <div id="profEmailMfText">${param.email}</div>
                </div>
                <button id="modifyBtn" onClick="emailMfBtn()">수정</button>
            </div>
            <div id="profLocationMfWrap">
                <div>
                    <div id="profLocationMfTit">연구실 위치</div>
                    <div id="profLocationMfText">${param.office}</div>
                </div>
                <button id="modifyBtn" onClick="profLocationMfBtn()">수정</button>
            </div>
            <div id="profAbleTimeMfWrap">
                <div>
                    <div id="profAbleTimeMfTit">상담 가능 시간</div>
                    <div id="profAbleTimeMfText">
						<c:forEach items="${consultable_times}" var="list">
							<c:choose>
								<c:when test="${list.able_date == 0}">일</c:when>
								<c:when test="${list.able_date == 1}">월</c:when>
								<c:when test="${list.able_date == 2}">화</c:when>
								<c:when test="${list.able_date == 3}">수</c:when>
								<c:when test="${list.able_date == 4}">목</c:when>
								<c:when test="${list.able_date == 5}">금</c:when>
								<c:otherwise>토</c:otherwise>
							</c:choose>
							 ${list.able_time} &nbsp;<a style="color:red; cursor:pointer;" onClick="alert('클릭');">x</a><br/>
						</c:forEach>
					</div>
                </div>
                <button id="modifyBtn" onClick="profAbleTimeMfBtn()">추가</button>
            </div>
        </div>
    </div>
</body>
</html>
