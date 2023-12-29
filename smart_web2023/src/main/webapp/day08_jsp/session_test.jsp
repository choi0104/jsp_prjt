<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 테스트</title>
</head>
<body>
	<h3>사용자의 세션ID 확인하기</h3>
	<hr>
	<%
	String sessionID = session.getId();//_jspService()메소드 내에서
	//자동 생성된 세션의 아이디 확인하기
	out.print("세션ID : " + sessionID);
	%>

	<h3>사용자의 세션 유지시간을 60분으로 설정하고 확인하기</h3>
	<hr>
	<%
	session.setMaxInactiveInterval(60*60);//세션의 유효시간을 설정함(초 단위)
	out.print("세션ID : " + session.getMaxInactiveInterval()/60+"분");
	%>
	
	<h3>사용자의 세션을 이용해서 사용자가 사이트에 머문 시간 확인하기</h3>
	<hr>
	<%
	//최근에 이 페이지에 대한 요청 시간 얻기: getLastAccessedTime()
	//세션이 생성된 시간 얻기: getCreationTime()
	long lastTime = session.getLastAccessedTime();//밀리초로 반환
	long createdTime = session.getCreationTime();//밀리초로 반환
	//머문 시간
	long usedTime = (lastTime - createdTime) / 60000;//분으로 환산
	out.print("웹사이트에 머문 시간 : " + usedTime+" : "+ lastTime+ " : "+createdTime + "분");
	%>

</body>
</html>