<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
   //EL연산자에서 사용할 변수를 request객체의 속성으로 추가하기
   request.setAttribute("num1", 4);
   request.setAttribute("num2", "8");
   request.setAttribute("num3", "3");
   //EL에서는 스크립트릿에 정의된 변수를 그대로 사용할 수 없음
   //표현식에서는 스크립트릿에 정의된 변수를 그대로 사용할 수 있음
   int num = 100;
   
   //empty연산자의 연산을 위한 피연산자를 request객체의 속성으로 추가하기
   request.setAttribute("nullStr", null);
   request.setAttribute("emptyStr", "");
   request.setAttribute("lenthZeroArray", new Integer[0]);
   request.setAttribute("sizeZeroList", new java.util.ArrayList<String>());

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL의 연산자</title>
</head>
<body>
    <h3>EL의 변수</h3>
    스크립트릿에서 선언한 변수 : ${ num } <br>
    표현식을 이용해서 가져온 변수 : <%= num %> <br>
    request영역에 속성으로 저장된 num1 : ${ num1 } <br>
    
    <h3>산술 연산자</h3>
    num1 + num2 : ${ num1 + num2 } <br>
    영역객체에 문자열로 입력된 숫자를 숫자타입으로 변환시켜서 계산함 <br>
    num2 / num1 : ${ num2 / num1 } <br>
    num2 div num1 : ${ num2 div num1 } <br>
    num2 % num3 : ${ num2 % num3 } <br>
    num2 mod num3 : ${ num2 mod num3 } <br>
    
    <h3>+ 연산자는 덧셈만 가능</h3>
    num1 + "이십" : \${ num1 + "이십"" } <br>
    EL에서 + 연산자를 연결연산자로 사용하면 에러를 발생시킴 <br>
    
    <h3>비교 연산자</h3>
    num3 > num2 : ${ num3 > num2 } <br>
    num3 gt num2 : ${ num3 gt num2 } <br>
    num3 < num2 : ${ num3 < num2 } <br>
    num3 lt num2 : ${ num3 lt num2 } <br>
    num3 >= num2 : ${ num3 >= num2 } <br>
    num3 ge num2 : ${ num3 ge num2 } <br>
    num3 <= num2 : ${ num3 <= num2 } <br>
    num3 le num2 : ${ num3 le num2 } <br>
    num3 == num2 : ${ num3 == num2 } <br>
    num3 eq num2 : ${ num3 eq num2 } <br>
    num3 != num2 : ${ num3 != num2 } <br>
    num3 ne num2 : ${ num3 ne num2 } <br>
    
    <h3>논리 연산자</h3>
    (num2 < num3) && (num3 > num1) : ${ (num2 < num3) && (num3 > num1) } <br>
    (num2 lt num3) and (num3 gt num1) : ${ (num2 lt num3) and (num3 gt num1) } <br>
    (num2 < num3) || (num3 > num1) : ${ (num2 < num3) || (num3 > num1) } <br>
    (num2 lt num3) or (num3 gt num1) : ${ (num2 lt num3) or (num3 gt num1) } <br>
    
    <h3>empty 연산자</h3>
    데이터의 존재여부를 확인하는 단항 연산자로 피연산자 앞에 위치함<br>
    null, 빈 문자열, 길이가 0인 배열, size가 0인 컬렉션에 대해서 true값 반환함<br><br>
    empty nullStr : ${ empty nullStr } <br>
    empty emptyStr : ${ empty emptyStr } <br>
    empty lengthZeroArray : ${ empty lengthZeroArray } <br>
    empty sizeZeroList : ${ empty sizeZeroList } <br>
    
    <h3>삼항 연산자</h3>
    (num1 > num2) ? "참" : "거짓" => ${ (num1 gt num2) ? "참" : "거짓" } <br>
    
    <h3>null 연산</h3>
    EL에서는 null을 산술연산을 하면 0으로 인식함<br>
    null + 100 : ${ null + 100 } <br>
    nullStr + 100 : ${ nullStr + 100 } <br>
     
    <h3>변수 선언 및 초기화, 출력</h3>
    즉시 출력: ${ num4 = 100 } <br>
    별도 출력: ${ num5 = 100;'' } <br>
    num5 : ${ num5 } <br>

</body>
</html>