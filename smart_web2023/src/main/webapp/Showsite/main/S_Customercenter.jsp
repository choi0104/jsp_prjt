<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="../css/S_Customercenter.css">
</head>
<body>
<c:import var="S_Header" url="S_Header.jsp"/>
<c:import var="S_Footer" url="S_Footer.jsp"/>
	${S_Header}

<div id="CustomercenterLine">
    <div id="CustomercenterPage">
        <img src="../siteimg/고객센터페이지.jpg" width="100%"height="350px">
        <div style="width: 85%; margin: 0px auto; margin-top: 50px; display: flex; justify-content: space-between; align-items:flex-end;">
            <h2 style="text-align: left;">고객센터</h2>
            <div style="text-align: right;padding-bottom: 20px;">
                <select id="searchType">
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                    <option value="both">제목+내용</option>
                </select>
                <input type="text" id="announcementSearch" placeholder="검색...">
            </div>
        </div>
        <section>
            <h2>자주 묻는 질문</h2>
    
            <div class="faq">
                <div class="faq-item">
                    <div class="faq-question" onclick="toggleFaqAnswer('faq1')">이 FAQ는 무엇인가요?</div>
                    <div class="faq-answer" id="faq1">이 FAQ는 고객들이 자주 묻는 질문에 대한 답변을 포함하고 있습니다.</div>
                </div>
    
                <div class="faq-item">
                    <div class="faq-question" onclick="toggleFaqAnswer('faq2')">문의한 내용을 어떻게 확인할 수 있나요?</div>
                    <div class="faq-answer" id="faq2">문의한 내용은 마이페이지에서 확인할 수 있습니다. 마이페이지에 로그인하여 문의 내역을 확인하세요.</div>
                </div>
    
                <!-- 추가적인 FAQ는 필요에 따라 계속해서 추가할 수 있습니다. -->
            </div>
        </section>
    
        <section>
            <h2>문의하기</h2>
    
            <div class="contact-form">
                <label for="name">이름:</label>
                <input type="text" id="name" name="name" required>
    
                <label for="email">이메일:</label>
                <input type="email" id="email" name="email" required>
    
                <label for="message">문의 내용:</label>
                <textarea id="message" name="message" rows="4" required></textarea>
    
                <button onclick="submitForm()">문의 제출하기</button>
            </div>
        </section>
    
    </div>
</div>
${S_Footer}
</body>
</html>