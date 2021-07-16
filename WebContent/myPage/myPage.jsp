<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>
    
    <link rel="stylesheet" href="../components/css/header.css" />
    <link rel="stylesheet" href="/myPage/css/myPage.css" />
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

    <title>쪽지함</title>

    <script type="text/javascript">
        function button_event() {
            if (confirm("정말 삭제하시겠습니까?") == true) {    //확인
                document.form.submit();
            } else {   //취소
                return;
            }
        }
    </script>

    <link href="https://fonts.googleapis.com/css2?family=Yellowtail&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <style>
        #navWrap {
            width: 1194px;
            margin: 0 auto;
            margin-top: 80px;
        }
        #navInnerWrap {
            display: block;
        }
        #navSub {
            display: block;
        }
        #banner {
            display: table;
            margin: 0 auto;
            width: 100%;
            height: 120px;
            background-color: white;
            border-radius: 5px;
        }
        #banner div {
            display: table-cell;
            width: 1920px;
            height: 100%;
            background: white;
            text-align: center;
            font-size: 24px;
            color: #333330;
            font-family: 'Noto Sans KR', sans-serif;
            vertical-align: middle;
        }
        body {
            background: #F4F4F4;
        }
        #cardWrap {
            width: 18rem;
            background: white;
            box-shadow: rgba(0, 0, 0, 0.1) 0px 2px 10px;
            border: none;
            border-radius: 10px;
        }
        .boardListWrap {
            width: 870px;
            margin: 0 auto;
        }
        .boardListWrap th,
        .boardListWrap td {
            padding: 10px;
            font-size: 14px;
        }
        .boardListWrap td, th {
            text-align: center;
        }
        #deleteBtn:hover {
            cursor: pointer;
        }
        a:link {
            color: #3E454D;
            text-decoration: none;
        }
        a:visited {
            color: #3E454D;
            text-decoration: none;
        }
        a:hover {
            color: #3E454D;
            text-decoration: underline;
        }
        #logoutBtn {
            display: block;
            width: 100px;
            height: 40px;
            margin: 0 auto;
            border: 1px solid #3E454D;
            color: #3E454D;
            background: white;
            border-radius: 5px;
        }
        #logoutBtn:hover {
            display: block;
            width: 100px;
            height: 40px;
            margin: 0 auto;
            background: #3E454D;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
        #cardTitle {
            display: flex;
            align-items: center;
            padding-left: 10px;
            height: 50px;
            font-size: 18px;
        }
        #cardBody {
            padding: 20px 0;
            text-align: center;
            height: 180px;
        }
        #userUniv {
            margin: 10px 0 40px 0;
        }
        #thBorder {
            border-bottom: 1px solid #eee;
        }
        
        a:link { color: white; text-decoration: none;}
 		a:visited { color: white; text-decoration: none;}
 		a:hover { color: white; text-decoration: underline;}
 		
 		#completeBtn,
 		#cancelBtn,
 		#okBtn {
 			color: #3E454D;
 		}
 		
 		#reserveIcon,
        #noticeIcon,
        #messageIcon {
            color: #8B8B8B;
        }
    </style>
</head>
<body>
<header>
    <nav id="header_inner">
        <div id="title"><a href="index.do">MEETU</a></div>
        <div id="gnb">
            <a id="noticeIcon" href="notice.do">공지사항</a>
            <a id="reserveIcon" href="reservationPro.do">상담예약</a>
            <a id="messageIcon" href="message.do">쪽지함</a>
        </div>
        <div id="dropdown">
            <button id="dropBtn">${mem_dto.getName()}님 ▽</button>
            <div id="dropdown-content">
                <a href="#">마이페이지</a>
                <a href="#">로그아웃</a>
            </div>
        </div>
        <img src="/components/images/notifications_black_24dp.svg" id="alertIcon"/>
    </nav>
</header>

<div id="banner">
    <div>마이페이지</div>
</div>

<div id="navWrap">
    <table id="navInnerWrap">
        <tr>
            <td>
                <div id="cardWrap">
                    <div id="cardTitle">내 정보</div>
                    <img src="/myPage/images/userImg3.svg" class="card-img-top" alt="..." id="userImg">
                    <div id="cardBody">
                        <div id="userName">(이름)</div>
                        <div id="userUniv">동덕여자대학교</div>
                        <button id="logoutBtn">로그아웃</button>
                    </div>
                </div>
            </td>

            <td>
                <div style="width: 40px"></div>
            </td>

            <td id="navSub">
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#qwe" id="completeBtn">예약완료</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#asd"  id="cancelBtn">예약취소</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#zxc"  id="okBtn">신청확정</a>
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
                                <tr id="boardList">
                                    <td>000교수님</td>
                                    <td>컴퓨터학과</td>
                                    <td>2021-07-10 오전 9:00</td>
                                    <td><img src="/myPage/images/delete_black_24dp.svg" id="deleteBtn" onclick="button_event();"/></td>
                                </tr>
                                <tr id="boardList">
                                    <td>000교수님</td>
                                    <td>컴퓨터학과</td>
                                    <td>2021-07-10 오전 9:00</td>
                                    <td><img src="/myPage/images/delete_black_24dp.svg" id="deleteBtn" onclick="button_event();"/></td>
                                </tr>
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
                                <tr id="boardList">
                                    <td>000교수님</td>
                                    <td>컴퓨터학과</td>
                                    <td>2021-07-10 오전 9:00</td>
                                    <td><img src="/myPage/images/delete_black_24dp.svg" id="deleteBtn" onclick="button_event();"/></td>
                                </tr>
                                <tr id="boardList">
                                    <td>000교수님</td>
                                    <td>컴퓨터학과</td>
                                    <td>2021-07-10 오전 9:00</td>
                                    <td><img src="/myPage/images/delete_black_24dp.svg" id="deleteBtn" onclick="button_event();"/></td>
                                </tr>
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
                                <tr id="boardList">
                                    <td>000교수님</td>
                                    <td>컴퓨터학과</td>
                                    <td>2021-07-10 오전 9:00</td>
                                    <td><img src="/myPage/images/delete_black_24dp.svg" id="deleteBtn" onclick="button_event();"/></td>
                                </tr>
                                <tr id="boardList">
                                    <td>000교수님</td>
                                    <td>컴퓨터학과</td>
                                    <td>2021-07-10 오전 9:00</td>
                                    <td><img src="/myPage/images/delete_black_24dp.svg" id="deleteBtn" onclick="button_event();"/></td>
                                </tr>
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