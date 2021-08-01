<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>

    <link rel="stylesheet" href="../components/css/header.css"/>
    <link rel="stylesheet" href="/myPage/css/myPage.css"/>
    <!-- Required meta tags -->
    <meta charset="utf-8">
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

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Yellowtail&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   	<style>
		#dropdown-button {
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    margin-right: 60px;
		    padding: 8px;
		    width: 140px;
		    font-size: 15px;
		    border: none;
		}
		
		#dropdown {
		    position: relative;
		    display: inline-block;
		}
		
		#dropdown-content {
		    display: none;
		    position: absolute;
		    background-color: white;
		    min-width: 140px;
		    padding: 8px;
		    box-shadow: 0px 4px 8px 0px rgba(0, 0, 0, 0.2);
		}
		
		#dropdown-content a {
		    color: black;
		    padding: 8px;
		    text-decoration: none;
		    display: block;
		}
		
		#dropdown-content a:hover {
		    background-color: #f3f3f3;
		}
		
		#dropdown:hover #dropdown-content {
		    display: block;
		}
   	</style>
    <script src="/myPage/js/myPage.js"></script>
</head>

<body id="myPageBodyBg">
	<div id="topHeader">
	    <div id="topHeaderInner">
	        <div>
	        </div>
	    </div>
	</div>
	
	<div id="header">
	    <div id="header_inner">
	        <div id="title"><a href="index.do">MEETU</a></div>
	        <ul id="gnb">
	            <li><a id="noticeIcon" href="notice.do">공지사항</a></li>
	            <li><a id="reserveIcon" href="reservationPro.do">상담예약</a></li>
	            <li><a id="messageIcon" href="message.do">쪽지함</a></li>
	        </ul>
	
	        <div id="dropdown">
	            <div id="dropdown-button">${mem_dto.getName()}<img src="/components/images/more.svg"/></div>
	            <div id="dropdown-content">
	                <a href="myPage.do">마이페이지</a>
	                <a href="logout.do">로그아웃</a>
	            </div>
	        </div>
	
	        <img src="/components/images/bell.svg" id="alertIcon"/>
	    </div>
	</div>
    
    <div id="navWrap">
        <table id="navInnerWrap">
            <tr>
                <td>
                    <div id="cardWrap">
                        <div id="cardTitle"><img src="/myPage/images/person.svg"/> &nbsp; 마이페이지</div>
                        <img src="/myPage/images/userImg3.svg" class="card-img-top" alt="..." id="userImg">
                        <div id="cardBody">
                            <div id="userName">${mem_dto.getName()}</div>
                            <div id="userUniv">${univ_dto.getUnivName()}</div>
                            <button id="logoutBtn" onclick="location.href='logout.do'">로그아웃</button>
                        </div>
                    </div>
                </td>
    
                <td>
                    <div style="width: 40px"></div>
                </td>
    
                <td id="navSub">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#qwe" id="completeBtn">예약현황</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#asd" id="cancelBtn">예약취소</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#zxc" id="okBtn">예약확정</a>
                        </li>
                    </ul>
                    <div class="tab-content" style="background: white">
                        <div class="tab-pane fade show active" id="qwe">
                            <div id="board">
                                <table class="boardListWrap">
                                    <thead>
                                    <tr id="thBorder">
                                        <th>교수명</th>
                                        <th>학과</th>
                                        <th>날짜</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="asd">
                            <div id="board">
                                <table class="boardListWrap">
                                    <thead>
                                    <tr id="thBorder">
                                        <th>교수명</th>
                                        <th>학과</th>
                                        <th>날짜</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
 
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="zxc">
                            <div id="board">
                                <table class="boardListWrap">
                                    <thead>
                                    <tr id="thBorder">
                                        <th>교수명</th>
                                        <th>학과</th>
                                        <th>날짜</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>