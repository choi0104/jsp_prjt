<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL: formatNumber, parseNumber</title>
</head>
<body>
	<h4>숫자에 대한 포맷 설정하기</h4>
	<hr>
	<c:set var="number1" value="123456789" />
	세 자리마다 콤마 출력 O : <fmt:formatNumber value="${number1}" /> <br>
	세 자리마다 콤마 출력 X : <fmt:formatNumber value="${number1}" groupingUsed="false"/> <br>
	
	<fmt:formatNumber var="printNum1" value="${number1}" type="currency" />
	<%-- <fmt:formatNumber var="printNum1" value="${number1}" type="currency" currencySymbol="₩"/> --%>
	통화기호를 붙여서 출력 : ${printNum1} <br>
	
	<fmt:formatNumber var="printNum2" value="${number1}" type="percent"/>
	퍼센트로 출력 : ${printNum2} <br>
	
	<hr>
	
	<h4>문자열을 숫자로 변경하기(파싱하기)</h4>
	<hr>
	<c:set var="number2" value="56,789.01" />
	
	<fmt:parseNumber var="printNum3" value="${number2}" pattern="000,000.00" />
	소수점까지 출력 : ${printNum3} <br>
	콤마를 표시하여 출력 : <fmt:formatNumber value="${printNum3}" /> <br>
	
	<fmt:parseNumber var="printNum4" value="${number2}" integerOnly="true" />
	정수 부분만 출력 : ${printNum4} <br>
	
	
	

</body>
</html>