<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="ShowSite.S_DTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="../css/S_Main.css">
</head>
<body>
<c:import var="S_Header" url="S_Header.jsp"/>
<c:import var="S_Footer" url="S_Footer.jsp"/>
	${S_Header}
    <div id="EventLine">
        <div id="EventPage">
            <a href=""><img id="EventRingk1" src="../siteimg/링크배경1.png"></a>
            <a href=""><img id="EventRingk2" src="../siteimg/링크배경2.png"></a>
            <a href=""><img id="EventRingk3" src="../siteimg/링크배경3.png"></a>
            <a href=""><img id="EventRingk4" src="../siteimg/링크배경4.png"></a>
            <a href=""><img id="EventRingk5" src="../siteimg/링크배경5.png"></a>
            <a href=""><img id="EventRingk6" src="../siteimg/링크배경6.png"></a>
            <a href=""><img id="EventRingk7" src="../siteimg/링크배경7.png"></a>
            <a href=""><img id="EventRingk8" src="../siteimg/링크배경8.png"></a>
            <a href=""><img id="EventRingk9" src="../siteimg/링크배경9.png"></a>
            <a href=""><img id="EventRingk10" src="../siteimg/링크배경10.png"></a>
        </div>
    </div>
    <div id="CenterLine">
        <img id="EventRingk1" src="../siteimg/링크배경15.png">
    </div>
    <div id="InformLine">
        <div id="NoticeLine">
            <div id="NoticePage">
                <h1>공지사항</h1>
                <hr>웹사이트가 개편되었습니다. 새로운 기능과 디자인을 확인해보세요.
                <hr>웹사이트가 개편되었습니다. 새로운 기능과 디자인을 확인해보세요.
                <hr>웹사이트가 개편되었습니다. 새로운 기능과 디자인을 확인해보세요.
                <hr>웹사이트가 개편되었습니다. 새로운 기능과 디자인을 확인해보세요.
                <hr>웹사이트가 개편되었습니다. 새로운 기능과 디자인을 확인해보세요.
                <hr>웹사이트가 개편되었습니다. 새로운 기능과 디자인을 확인해보세요.
                <hr>웹사이트가 개편되었습니다. 새로운 기능과 디자인을 확인해보세요.
                <hr>웹사이트가 개편되었습니다. 새로운 기능과 디자인을 확인해보세요.
                <hr>웹사이트가 개편되었습니다. 새로운 기능과 디자인을 확인해보세요.
                <hr>웹사이트가 개편되었습니다. 새로운 기능과 디자인을 확인해보세요.
                <hr>웹사이트가 개편되었습니다. 새로운 기능과 디자인을 확인해보세요.
            </div>
            <div id="UserLine">
                <div id="LogLine">
                    <div id="StartPage">
                        <a href="http://127.0.0.1:5500/HTML%EC%82%AC%EC%9D%B4%ED%8A%B8/a_mainwindow.html">
                            <img id="StartImg" src="../siteimg/SHOW이미지.png" alt="기본 이미지" 
                            onmouseover="changeImage(this, '../siteimg/SHOW이미지.gif')" onmouseout="changeImage(this, '../siteimg/SHOW이미지.png')">
                        </a><hr>
                    </div>
                    	      <% session = request.getSession();
	         					S_DTO dto = (S_DTO)session.getAttribute("member");
	         					if(dto != null){//로그인한 경우 %>
                    <div id="Logpage" style="display: flex; margin-top: 25px;">
                    	<% if(dto.getS_idx() == 7){ %>                    	
		    	  	    <a href="/human/Showsite/main/S_Manager.jsp">관리자페이지</a>
                    	<% } %>
		    	  	    <a href="/human/ShowLogout">로그아웃</a>
    	          	 	<a href="/human/Showsite/main/S_quit.jsp">회원탈퇴</a><br>
        	     	    <a href="/human/Showsite/main/S_Update.jsp">회원정보변경</a>
                    </div>
	      			<% }else{//로그인하지 않은 경우 %>
	      		    <form name="frmlog" method="post" action="/human/Showlogin">
                    <div id="Logpage" style="display: flex; margin-top: 25px;">
                        <div style="display: flex; flex-direction: column;">
                                <input type="text" id="idlog" name="member_id">
                                <input type="password" id="pwlog" name="member_pw">
                        </div>
                        <button id="logbutton">로그인</button>
                    </div>
                    </form>
                    <div id="Userinfopage">
                        <a href="/human/Showsite/main/S_Join.jsp">회원가입</a>
                        <a href="/human/Showsite/main/S_Infofind.jsp">아이디/비밀번호찾기</a>
                    </div>
           	      <% }%>
                </div>
                <div id="BlogPage" style="display: flex;flex-direction: row;">
                    <div style="width: 100%;height: 100%;margin-right: 30px;">
                        <h4>최근 댓글</h4><hr>
                        사용자 댓글1<br>
                        사용자 댓글2<br>
                        사용자 댓글3<br>
                        사용자 댓글4<br>
                        사용자 댓글5<br>
                        사용자 댓글6<br>
                        사용자 댓글7<br>
                        사용자 댓글8<br>
                    </div>
                    <div style="width: 100%;height: 100%;">
                        <h4>최근 방문자</h4><hr>
                        사용자1<br>
                        시용자2<br>
                        사용자3<br>
                        사용자4<br>
                        사용자5<br>
                        사용자6<br>
                        사용자7<br>
                        사용자8<br>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="NewsLine">
        <div id="NewsPage">
            <h1>뉴스</h1>
            <div style="height: 440px">
                <div style="display: flex;height: 33%;">
                    <div style="width: 33%; display: flex;">
                        <div id="NewsImg">
                            <img src="../siteimg/링크배경2.png"><br><h4> 세계에서 일어난 소식</h4>
                        </div>
                        <div id="NewsText">
                            최신 과학 기술 혁신에 관한 소식과 이에 대한 상세 내용이 들어갑니다. 
                        </div>
                    </div>
                    <div style="width: 33%; display: flex;">
                        <div id="NewsImg">
                            <img src="../siteimg/링크배경2.png"><br><h4> 세계에서 일어난 소식</h4>
                        </div>
                        <div id="NewsText">
                            최신 과학 기술 혁신에 관한 소식과 이에 대한 상세 내용이 들어갑니다. 
                        </div>
                    </div>
                    <div style="width: 33%; display: flex;">
                        <div id="NewsImg">
                            <img src="../siteimg/링크배경2.png"><br><h4> 세계에서 일어난 소식</h4>
                        </div>
                        <div id="NewsText">
                            최신 과학 기술 혁신에 관한 소식과 이에 대한 상세 내용이 들어갑니다. 
                        </div>
                    </div>
                </div>
                <div style="display: flex;height: 33%;">
                    <div style="width: 33%; display: flex;">
                        <div id="NewsImg">
                            <img src="../siteimg/링크배경2.png"><br><h4> 세계에서 일어난 소식</h4>
                        </div>
                        <div id="NewsText">
                            최신 과학 기술 혁신에 관한 소식과 이에 대한 상세 내용이 들어갑니다. 
                        </div>
                    </div>
                    <div style="width: 33%; display: flex;">
                        <div id="NewsImg">
                            <img src="../siteimg/링크배경2.png"><br><h4> 세계에서 일어난 소식</h4>
                        </div>
                        <div id="NewsText">
                            최신 과학 기술 혁신에 관한 소식과 이에 대한 상세 내용이 들어갑니다. 
                        </div>
                    </div>
                    <div style="width: 33%; display: flex;">
                        <div id="NewsImg">
                            <img src="../siteimg/링크배경2.png"><br><h4> 세계에서 일어난 소식</h4>
                        </div>
                        <div id="NewsText">
                            최신 과학 기술 혁신에 관한 소식과 이에 대한 상세 내용이 들어갑니다. 
                        </div>
                    </div>
                </div>
                <div style="display: flex;height: 33%;">
                    <div style="width: 33%; display: flex;">
                        <div id="NewsImg">
                            <img src="../siteimg/링크배경2.png"><br><h4> 세계에서 일어난 소식</h4>
                        </div>
                        <div id="NewsText">
                            최신 과학 기술 혁신에 관한 소식과 이에 대한 상세 내용이 들어갑니다. 
                        </div>
                    </div>
                    <div style="width: 33%; display: flex;">
                        <div id="NewsImg">
                            <img src="../siteimg/링크배경2.png"><br><h4> 세계에서 일어난 소식</h4>
                        </div>
                        <div id="NewsText">
                            최신 과학 기술 혁신에 관한 소식과 이에 대한 상세 내용이 들어갑니다. 
                        </div>
                    </div>
                    <div style="width: 33%; display: flex;">
                        <div id="NewsImg">
                            <img src="../siteimg/링크배경2.png"><br><h4> 세계에서 일어난 소식</h4>
                        </div>
                        <div id="NewsText">
                            최신 과학 기술 혁신에 관한 소식과 이에 대한 상세 내용이 들어갑니다. 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="CommunityLine">
        <div id="CommunityPage">
            <h1>자유게시판</h1><hr>
            <div style="display: flex;">
                <div id="CommunityletterPage">
                    커뮤니티 페이이지입니다.<br>
                    커뮤니티 페이이지입니다.<br>
                    커뮤니티 페이이지입니다.<br>
                    커뮤니티 페이이지입니다.<br>
                    커뮤니티 페이이지입니다.<br>
                    커뮤니티 페이이지입니다.<br>
                    커뮤니티 페이이지입니다.<br>
                    커뮤니티 페이이지입니다.<br>
                </div>
                <div id="CommunityImgPage">
                    <div style="display: flex;height: 33%; text-align: center;">
                        <div style="width: 33%;height: 100%;"><img src="../siteimg/링크배경1.png"><br><h4>커뮤니티 1 이야기</h4></div>
                        <div style="width: 33%;"><img src="../siteimg/링크배경1.png"><br><h4>커뮤니티 1 이야기</h4></div>
                        <div style="width: 33%;"><img src="../siteimg/링크배경1.png"><br><h4>커뮤니티 1 이야기</h4></div>
                    </div>
                    <div style="display: flex;height: 33%; text-align: center;">
                        <div style="width: 33%;"><img src="../siteimg/링크배경1.png"><br><h4>커뮤니티 1 이야기</h4></div>
                        <div style="width: 33%;"><img src="../siteimg/링크배경1.png"><br><h4>커뮤니티 1 이야기</h4></div>
                        <div style="width: 33%;"><img src="../siteimg/링크배경1.png"><br><h4>커뮤니티 1 이야기</h4></div>
                    </div>
                    <div style="display: flex;height: 33%; text-align: center;">
                        <div style="width: 33%;"><img src="../siteimg/링크배경1.png"><br><h4>커뮤니티 1 이야기</h4></div>
                        <div style="width: 33%;"><img src="../siteimg/링크배경1.png"><br><h4>커뮤니티 1 이야기</h4></div>
                        <div style="width: 33%;"><img src="../siteimg/링크배경1.png"><br><h4>커뮤니티 1 이야기</h4></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="GamereportLine">
        <div id="GamereportPage">
            <img src="../siteimg/게임 정보 이미지.jpg" style="position: absolute;width: 100%;height: 100%;">
            <div id="a1" style="position: absolute;width: 100%;height: 100%;display: flex;justify-content: center; align-items: center;background-color: gainsboro;opacity: 0;">
                <img src="../siteimg/게임소개배경.jpg" style="position: absolute;width: 100%;height: 700px;margin-top: 50px;">
                <div style="position: absolute; width: 600px; height: 300px; background-color: white;border: 2px solid gainsboro;border-radius: 10px;display: flex; align-items: center; justify-content: center;">
                    <h1 style="font-size: 50px;margin-top: 10px;"></h1>
                </div>
            </div>
            <div id="a2" style="position: absolute;width: 100%;height: 100%;display: flex;justify-content: center; align-items: center;background-color: gainsboro;opacity: 0;">
                <img src="../siteimg/조작키배경.jpg" style="position: absolute;width: 100%;height: 700px;margin-top: 50px;">
                <img id="asdf" style="position: absolute;">
            </div>
            <div id="a3" style="width: 100%;height: 100%;position: absolute; display: flex;justify-content: center;align-items: center;opacity: 0;">
                <img src="../siteimg/게임진행배경.jpg"  style="position: absolute;width: 100%;height: 700px;margin-top: 50px;">
                <div style="position: absolute; width: 600px; height: 300px; background-color: white;border: 2px solid gainsboro;border-radius: 10px;display: flex;pointer-events: none;">
                    <div style="width: 100%;padding: 15px;">
                        먼저 회원가입후 로그인.<br>
                        그리고 SHOW버튼만으로 진행 가능합니다.<br>
                    </div>
                    <div style="width: 300px; padding-top: 15px;padding-left: 30px;padding-right: 30px;margin: -2px;
                    border-radius: 10px;border: 2px solid gainsboro;display: flex;align-items: center; flex-direction: column;">
                        <div>
                            <img src="../siteimg/SHOW이미지.gif" width="300" height="70"><hr>
                        </div>
                        <div style="display: flex; margin-top: 25px;">
                            <div style="display: flex; flex-direction: column;">
                                    <input type="text" id="idlog">
                                    <input type="password" id="pwlog">
                            </div>
                            <button id="logbutton">로그인</button>
                        </div>
                        <div>
                            <a href="">회원가입</a>
                            <a href="">아이디/비밀번호찾기</a>
                        </div>    
                    </div>
                </div>
            </div>
            <div onclick="removeFocus4()" style="width: 100%;height: 100%;position: absolute;"></div>
            <div id="TrafficlightsPick">
                <img src="../siteimg/신호등.png" width="100%" height="100%" style="position: absolute;z-index: -1;">
                <button id="RedPick" onclick="removeFocus1()">소개</button>
                <button id="YellowPick" onclick="removeFocus2()">조작</button>
                <button id="GreenPick" onclick="removeFocus3()">진행</button>
            </div>
            <div id="GamereportPick">
            </div>
        </div>
    </div>
    <div id="CustomercenterLine">
        <div id="CustomercenterPage">
            <img src="../siteimg/고객센터이미지.jpg" width="100%" height="100%" style="position: absolute;z-index: 1;">
            <div style="position: absolute; display: flex; width: 100%;height: 100%; justify-content: center;">
                <img src="../siteimg/고객센터게시판.png" style="width: 45%; height: 450px; margin-right: 20px; margin-top: 23px; z-index: 1;opacity: 0.8;">
                <img src="../siteimg/고객센터게시판.png" style="width: 45%; height: 450px; margin-left: 20px; margin-top: 23px; z-index: 1;opacity: 0.8;">
            </div>
        </div>
    </div>
${S_Footer}
</body>
    <script type="text/javascript" src="../js/S_Main.js"></script>
</html>