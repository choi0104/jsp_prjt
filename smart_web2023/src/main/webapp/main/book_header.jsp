<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="booklog.bookDTO" %>
        <header id="platformsonthefirstline">
            <div id="platforms">
                <nav id="numbook">
                    <button>1번도서</button>
                    <button>1번도서</button>
                    <button>1번도서</button>
                    <button>1번도서</button>
                    <button>1번도서</button>
                    <button>1번도서</button>
                    <button>1번도서</button>
                </nav>
                <nav id="numbook2">
                    <button>1번도서</button>
                    <button>1번도서</button>
                    <button>1번도서</button>
                    <button>1번도서</button>
                </nav>
            </div>
        </header>
		<header id="zerobox">
            <div id="b1">
                <a href="/human/main/book.jsp">
                    <img src="../resources/css/image/알라딘.png" width="80" ></a>
                <div id="asd">
                    <div id="ssss">
                        <div id="s4">
                            <div id="s44">
                            <select name="submenu">
                                <option value="s02">장르1</option>
                                <option value="s03">장르2</option>
                                <option value="s04">장르3</option>
                                <option value="s05">장르4</option>
                                <option value="s06">장르5</option>
                                <option value="s07">장르6</option>
                                <option value="s08">장르7</option>
                            </select>
                        </div>
                            <input type="text" style="text-align:right">
                        </div>
                        <div id="s5">
                            <button id="total">검색</button>
                        </div>
                    </div>
                </div>
                <div id="logmain">
                    <div id="log">
	      <% session = request.getSession();
	         bookDTO dto = (bookDTO)session.getAttribute("member");
	         if(dto != null){//로그인한 경우 %>
	      	   <a href="/human/main/book_logout.jsp">로그아웃</a>
               <a href="/human/main/book_quit.jsp">회원탈퇴</a><br>
               <a href="/human/main/book_update.jsp">회원정보변경</a>
	      <% }else{//로그인하지 않은 경우 %>
	           <a href="/human/main/book_login.jsp">로그인</a>
               <a href="/human/main/book_join.jsp">회원가입</a>
               <br>
               <a href="/human/main/book_logfind.jsp">아이디/비밀번호 찾기</a>
	      <% }%>
<!--                          <button>로그인</button>
                        <button><a href="http://192.168.0.50:5500/note/book_join.html">회원가입</a></button>-->
                    </div>
                    <div id="log2">
                    </div>
                </div>

            </div>
            <nav id="b2">
                <button>2번도서</button>
                <button>2번도서</button>
                <button>2번도서</button>
                <button>2번도서</button>
                <button>2번도서</button>
                <button>2번도서</button>
                <button>2번도서</button>
            </nav>

        </header>