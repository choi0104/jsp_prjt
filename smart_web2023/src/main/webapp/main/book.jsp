<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="../resources/css/book.css">
</head>
<body>
<c:import var="book_header" url="book_header.jsp"/>
<c:import var="book_footer" url="book_footer.jsp"/>
    <div class="main">

        ${book_header}

        <div id="line"></div>
        <div id="firstbox">
            <aside id="f1">
                <button><a href="https://image.aladin.co.kr/img/bn/book/2023/04/231101_november2_layer_1.jpg" target="up1">3번도서</a></button>
                <button><a href="https://image.aladin.co.kr/img/bn/book/2023/04/2023_vote_layer.jpg" target="up1">3번도서</a></button>
                <button><a href="https://image.aladin.co.kr/img/bn/book/2023/04/231108_magicc_layer.jpg" target="up1">3번도서</a></button>
                <button><a href="https://image.aladin.co.kr/img/bn/book/2023/04/231016_noscan_layer.jpg" target="up1">3번도서</a></button>
            </aside>
            <div id="firstbox2">
                <iframe src="https://image.aladin.co.kr/img/bn/book/2023/04/231101_november2_layer_1.jpg" name="up1" width="1300" height="420"></iframe>
            </div>
            <aside id="f2">
                <button>4번도서</button>
                <button>4번도서</button>
                <button>4번도서</button>
                <button>4번도서</button>
                <button>4번도서</button>
                <button>4번도서</button>
                <button>4번도서</button>
                <button>4번도서</button>
                <button>4번도서</button>
                <button>4번도서</button>
                <button>4번도서</button>
                <button>4번도서</button>
            </aside>
        </div>
        <div id="secondbox">
            <h1>베스트셀러 TOP 40</h1>
            <aside id="s1">
                <button id="aa" onmouseover="hoverButton1()" onmouseout="unhoverButton()">5번도서</button>
                <button id="aa2" onmouseover="hoverButton2()" onmouseout="unhoverButton()">5번도서</button>
                <button id="aa3" onmouseover="hoverButton3()" onmouseout="unhoverButton()">5번도서</button>
                <button id="aa4" onmouseover="hoverButton4()" onmouseout="unhoverButton()">5번도서</button>

            </aside>
            <div id="s2">
                <button><img src="../resources/css/image/왼쪽.png"width="20"></button>
                <button><img src="../resources/css/image/오른쪽.png"width="20"></button>
            </div>
            <div id="secondbox2">

                <div id="imgsize">
                    <div id="imgDiv1">
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=310586376&start=we">
                            <img id="funnya1" src="../resources/css/image/1419766945_1.jpg"></a>
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=310586376&start=we">
                            <img id="funnya2" src="../resources/css/image/1419766945_1.jpg"></a>
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=310586376&start=we">
                            <img id="funnya3" src="../resources/css/image/1419766945_1.jpg"></a>
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=310586376&start=we">
                            <img id="funnya4" src="../resources/css/image/1419766945_1.jpg"></a>
                    </div>
                    <div id="imgDiv2">
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=309988794&start=we">
                            <img id="funnyb1" src="../resources/css/image/164375307x_2.jpg"></a>
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=309988794&start=we">
                            <img id="funnyb2" src="../resources/css/image/164375307x_2.jpg"></a>
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=309988794&start=we">
                            <img id="funnyb3" src="../resources/css/image/164375307x_2.jpg"></a>
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=309988794&start=we">
                            <img id="funnyb4" src="../resources/css/image/164375307x_2.jpg"></a>
                    </div>
                    <div id="imgDiv3">
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=300308068&start=we">
                            <img id="funnyc1" src="../resources/css/image/180427030x_2.jpg"></a>
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=300308068&start=we">
                            <img id="funnyc2" src="../resources/css/image/180427030x_2.jpg"></a>
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=300308068&start=we">
                            <img id="funnyc3" src="../resources/css/image/180427030x_2.jpg"></a>
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=300308068&start=we">
                            <img id="funnyc4" src="../resources/css/image/180427030x_2.jpg"></a>
                    </div>
                    <div id="imgDiv4">
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=315570980">
                            <img id="funnyd1" src="../resources/css/image/8949122014_1.jpg"></a>
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=315570980">
                            <img id="funnyd2" src="../resources/css/image/8949122014_1.jpg"></a>
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=315570980">
                            <img id="funnyd3" src="../resources/css/image/8949122014_1.jpg"></a>
                        <a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=315570980">
                            <img id="funnyd4" src="../resources/css/image/8949122014_1.jpg"></a>
                    </div>
                </div>

            </div>
        </div>
        <div id="Thirdbox">
            <div id="bestselertop40">
		    	<c:forEach begin="1" end="40" varStatus="loop">
        			<img src="../resources/css/image/k352935549_2.jpg" width="100" height="150">
			    </c:forEach>

            </div>
            <div id="books">
                <div id="book1">
                    <p>기본도서</p>
                    <button><img id="rl"src="../resources/css/image/왼쪽.png" width="30"></button>
                    <img src="../resources/css/image/k352935549_2.jpg" width="150">
                    <button><img id="rl"src="../resources/css/image/오른쪽.png" width="30"></button>
                    <p>기본도서</p>
                    <button><img id="rl"src="../resources/css/image/왼쪽.png" width="30"></button>
                    <img src="../resources/css/image/k352935549_2.jpg" width="150">
                    <button><img id="rl"src="../resources/css/image/오른쪽.png" width="30"></button>
                </div>
                <div id="book2">
                    <p>기본도서</p>
                    <button><img id="rl"src="../resources/css/image/왼쪽.png" width="30"></button>
                    <img src="../resources/css/image/k352935549_2.jpg" width="150">
                    <button><img id="rl"src="../resources/css/image/오른쪽.png" width="30"></button>
                    <p>기본도서</p>
                    <button><img id="rl"src="../resources/css/image/왼쪽.png" width="30"></button>
                    <img src="../resources/css/image/k352935549_2.jpg" width="150">
                    <button><img id="rl"src="../resources/css/image/오른쪽.png" width="30"></button>

                </div>
                <div id="book3">
                    <p>기본도서</p>
                    <button><img id="rl"src="../resources/css/image/왼쪽.png" width="30"></button>
                    <img src="../resources/css/image/k352935549_2.jpg" width="150">
                    <button><img id="rl"src="../resources/css/image/오른쪽.png" width="30"></button>
                    <p>기본도서</p>
                    <button><img id="rl"src="../resources/css/image/왼쪽.png" width="30"></button>
                    <img src="../resources/css/image/k352935549_2.jpg" width="150">
                    <button><img id="rl"src="../resources/css/image/오른쪽.png" width="30"></button>

                </div>
            </div>
        </div>
        <section id="Fourthbox">
            <div id="TV">
                <h1>TV</h1><br><br><br><br>
    <c:forEach begin="1" end="3">
        <img src="../resources/css/image/tv.jpg" width="200">
    </c:forEach>
            </div>
            <div id="import">
                <div id="z1">
                    <p>작가</p><br><br><br>
                </div>
                <div id="z2">
                    <img src="../resources/css/image/작가.jpg">
                    <p>출간기념 북토크<br>
                        <두 번은 경험하고 싶지 않은 나라><br>
                            뉴스 하이킥 신장식 북토크<br>
                            11월 11일 (토) 오후 3시<br>
                    </p>
                </div>
                <div id="z3">
                    <img src="../resources/css/image/작가.jpg">
                    <p>
                        <두 번은 경험하고 싶지 않은 나라><br>
                            뉴스 하이킥 신장식 북토크<br>
                            11월 11일 (토) 오후 3시
                    </p>
                </div>
                <div id="z4">
                    <img src="../resources/css/image/작가.jpg">
                    <p>출간기념 북토크<br>
                        <두 번은 경험하고 싶지 않은 나라><br>
                            뉴스 하이킥 신장식 북토크<br>
                            11월 11일 (토) 오후 3시<br>
                    </p>
                </div>
                <div id="z5">
                    <img src="../resources/css/image/작가.jpg">
                    <p>
                        <두 번은 경험하고 싶지 않은 나라><br>
                            뉴스 하이킥 신장식 북토크<br>
                            11월 11일 (토) 오후 3시
                    </p>
                </div>
            </div>
            <div id="lingk1">
                <p>사은품</p>
                <img src="../resources/css/image/사은품.jpg" width="300">
            </div>
            <div id="lingk2">
                <p>사은품</p>
                <img src="../resources/css/image/사은품.jpg" width="300">
            </div>
        </section>
        ${book_footer}
    </div>

</body>
    <script type="text/javascript" src="../resources/js/book.js"></script>
</html>