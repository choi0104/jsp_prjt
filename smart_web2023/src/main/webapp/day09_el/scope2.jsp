<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL의 영역별 내장객체</title>
</head>
<body>
join_process2.jsp에서 useBean액션태그의 scope속성값을 session으로 설정하여<br>
세션영역에 속성으로 추가되어 있는 dto객체의 필드값 가져오기<br>

아이디: ${ dto.member_id }<br>
비밀번호: ${ dto.member_pw }<br>
이름: ${ dto.member_name }<br>
핸드폰: ${ dto.handphone }<br>
이메일: ${ dto.email }<br>


</body>
</html>