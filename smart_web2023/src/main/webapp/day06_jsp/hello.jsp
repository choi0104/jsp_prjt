<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Hello, JSP!</h3>
<hr>
<p>서블릿으로 변환된 프로그램의 저장 위치:<br>
.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\human\org\apache\jsp\day06_005fjsp
</p>
<hr>
<h3>자바 코드를 JSP페이지 내에서 사용하기</h3>
<%!
//선언문: _jspService()메소드 밖에 정의되어지는 자바 코드
private String name = "홍길동";

private int sum(int a, int b){
	return a+b;
}
%>

선언문에서 정의한 name값: <%= name %> <br>

선언문에 정의한 메소드 sum을 이용해서 1234와 2345의 합계를 구하면?: <%= sum(1234, 2345) %>

<hr>
<h3>스크립트릿 사용하기</h3>
1부터 100까지의 홀수의 합계를 구하면?:
<%
int sum = 0;
for(int i = 1; i <= 100; i+= 2){
		sum += i;
}
//결과값을 자바코드 내에서 HTML페이지로 출력하려면 out객체를 이용함
out.print(sum);

%>

</body>
</html>