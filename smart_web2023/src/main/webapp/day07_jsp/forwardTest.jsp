<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//화면에 보여주는 부분이 없을 때 HTML 태그들을 모두 생략하고 자바 소스코드만 입력할 수 있도록 함
int age = Integer.parseInt(request.getParameter("age"));//인터넷을 통해서 전달되는 모든 값은 문자열로 반환됨

if(age <= 19){
%>
	<script>
		alert("19세 이하는 입장 불가")
		history.go(-1);
		//history.back();
	</script>

<%
}else{
	request.setAttribute("name", "홍길동");
	request.getRequestDispatcher("forwardResult.jsp").forward(request, response);
	//pageContext.forward("forwardResult.jsp")

}
%>
