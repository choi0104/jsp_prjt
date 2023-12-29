<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>book: join</title>
    <script type="text/javascript" src="../resources/js/book_join.js"></script>
    <link rel="stylesheet" href="../resources/css/book_join.css">
</head>
<body>
<c:import var="book_header" url="book_header.jsp"/>
<c:import var="book_footer" url="book_footer.jsp"/>
    <div class="main">

        ${book_header}

        <div id="line"></div>
        <div id="firstbox">
            <div id="jointotalbox">
                <div id="fff">
                    <h1>회원정보를 입력해주세요.</h1>
                </div>
                <form id="frm_join" name="frm_join" method="post" action="book_join_process.jsp">
                    <div id="importbox">
                        <div id="idline">
                            <div id="idsize">
                                아이디
                            </div>
                            <div id="inputsize">
                                <input id="idinput" type="text" name="member_id" class="importinput">
                            </div>
                            <div id="binsize">
                                <input type="button" name="id_btn" id="id_btn" value="유효성검사">
                                아이디는 8글자 이상 10글자 이하로 숫자를 1개 이상 포함해야 합니다
                            </div>
                        </div>
                        <div id="pwline">
                            <div id="idsize">
                                비밀번호
                            </div>
                            <div id="inputsize">
                                <input id="pwinput" type="password" name="member_pw">
                            </div>
                            <div id="binsize">
                                비밀번호는 8글자 이상 16글자 이하로 영문자, 숫자, 특수문자를 1개 이상 포함해야 합니다.
                            </div>
                        </div>
                        <div id="pwline2">
                            <div id="idsize">
                                비밀번호 확인
                            </div>
                            <div id="inputsize">
                                <input id="pwinput2" type="password" name="pw2">
                            </div>
                            <div id="binsize">
                                비밀번호를 다시 한번 입력해주세요.
                            </div>
                        </div>
                        <div id="nameline">
                            <div id="idsize">
                                이름
                            </div>
                            <div id="inputsize">
                                <input id="nameinput" type="text" name="member_name" class="importinput">
                            </div>
                            <div id="binsize">
                            </div>
                        </div>
                        <div id="phoneline">
                            <div id="idsize">
                                휴대폰 번호
                            </div>
                            <div id="inputsize">
                                <input type="text" name="handphone" id="phone">
                            </div>
                            <div id="binsize">
                                전화번호는 010-숫자4자리-숫자4자리 로 입력해야 합니다.
                            </div>
                        </div>
                        <div id="emailline">
                            <div id="idsize">
                                이메일
                            </div>
                            <div id="inputsize">
                                <input id="emailinput" type="email" name="email">@
                                <input id="emailinput2" type="text" name="id">
                            </div>
                            <div id="binsize">
                                <select id="emailselectOption" onchange="updateInput()">
                                    <option value="">직접입력</option>
                                    <option value="naver.com">naver.com</option>
                                    <option value="gamil.com">gamil.com</option>
                                    <option value="hanmail.net">hanmail.net</option>
                                </select>
                            </div>
                        </div>
                        <div id="agreecheckline">
                            <div id="idsize2">
                                악관확인
                                <a href="https://www.aladin.co.kr/account/waccount_provision.aspx?pType=1">자세히</a>
                                <br>
                                <input type="checkbox" id="myCheckbox"> 모두 확인하였으며 동의합니다.
                            </div>
                            <div id="inputsize">
                            </div>
                            <div id="binsize">
                                <br>
                                <button id="submit_btn" type="button" name="submit_btn" >가입하기</button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
        ${book_footer}


</body>
</html>