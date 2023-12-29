<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="../css/S_Community.css">
</head>
<body>
<c:import var="S_Header" url="S_Header.jsp"/>
<c:import var="S_Footer" url="S_Footer.jsp"/>
	${S_Header}

    <div id="CommunityLine">
        <div id="CommunityPage">
            <img src="../siteimg/커뮤니티페이지.jpg" width="100%"height="350px">
            <div style="width: 85%; margin: 0px auto; margin-top: 50px; display: flex; justify-content: space-between; align-items:flex-end;">
                <h2 style="text-align: left;">커뮤니티</h2>
                <div style="text-align: right;padding-bottom: 20px;">
                    <select id="searchType">
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                        <option value="both">제목+내용</option>
                    </select>
                    <input type="text" id="announcementSearch" placeholder="검색...">
                </div>
            </div>
            <div class="community-buttons" style="display: flex; justify-content: center; width: 85%; margin: 0 auto;">
                <button onclick="showCommunity(1)" style="width: 50%;">커뮤니티 1</button>
                <button onclick="showCommunity(2)" style="width: 50%;">커뮤니티 2</button>
            </div>
        
            <div id="community1" style="display: block;">
        
                <table>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 이야기</td>
                            <td>커뮤니티에서는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자</td>
                            <td>2023-03-05</td>
                        </tr>
                        
                </table>
        
                <!-- 페이지 네비게이션 -->
                <div class="pagination">
                    <a href="#" class="active">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <!-- 추가적으로 필요한 페이지에 대한 링크를 추가할 수 있습니다. -->
                </div>
            </div>
        
            <div id="community2" style="display: none;">
                <table>
                        <tr>
                            <td><img src="" alt=""></td>
                            <td><img src="" alt=""></td>
                            <td><img src="" alt=""></td>
                            <td><img src="" alt=""></td>
                        </tr>
                        <tr>
                            <td>커뮤니티 2 이야기</td>
                            <td>커뮤니티 2에서 나누는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자2</td>
                            <td>2023-03-06</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 2 이야기</td>
                            <td>커뮤니티 2에서 나누는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자2</td>
                            <td>2023-03-06</td>
                        </tr>
                        <tr>
                            <td>커뮤니티 2 이야기</td>
                            <td>커뮤니티 2에서 나누는 다양한 이야기들을 나누는 공간입니다.</td>
                            <td>사용자2</td>
                            <td>2023-03-06</td>
                        </tr>
                </table>
        
                <!-- 페이지 네비게이션 -->
                <div class="pagination">
                    <a href="#" class="active">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <!-- 추가적으로 필요한 페이지에 대한 링크를 추가할 수 있습니다. -->
                </div>
        
            </div>
        </div>
    </div>
${S_Footer}
</body>
</html>