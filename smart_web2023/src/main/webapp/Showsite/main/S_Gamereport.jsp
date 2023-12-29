<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="../css/S_Gamereport.css">
</head>
<body>
<c:import var="S_Header" url="S_Header.jsp"/>
<c:import var="S_Footer" url="S_Footer.jsp"/>
	${S_Header}

    <div id="GamereportLine">
        <div id="GamereportPage">
        <img src="../siteimg/고객센터이미지.jpg" width="100%" height="350px">
        <div style="padding-top: 50px; padding-bottom: 70px; width: 85%; margin: 0 auto;">
            <br><h1 style="text-align: center;">SHOW EARTH - 도트 게임의 신세계</h1><br><br>
            <h2>게임 소개</h2>

            <p>
                "SHOW EARTH"는 독특한 도트 그래픽과 중독적인 게임 플레이로 새로운 세계를 열어갑니다.
                도트 아트의 아름다움과 게임의 몰입감을 동시에 느껴보세요.
            </p>
            <div style="width: 100%; height: 350px; display: flex;align-items: center;justify-content: center;margin: 100px auto; position: relative;">
                <img style="width: 80%; position: absolute;" src="../siteimg/게임소개.PNG" alt="SHOW EARTH 배너">
            </div>
            <h2>게임 특징</h2>
            <ul>
                <li>방향키로 자유롭게 이동 가능</li>
                <li>클릭과 스페이스바로 쉽게 플레이</li>
                <li>도트 아트로 표현된 신비로운 맵과 다양한 캐릭터</li>
                <li>게임 내에서 클릭하면 실제로 구매 가능한 다양한 물건들</li>
                <li>매력적인 사운드 효과와 함께 즐거운 플레이 경험</li>
            </ul>

            <h2>조작 방법</h2>
            <p>
                게임은 간단한 조작 방법으로 누구나 손쉽게 플레이할 수 있습니다.
                방향키로 이동하고, 클릭 또는 스페이스바로 물건을 선택하세요.
                선택한 물건은 현실에서 직접 구매할 수 있습니다.
            </p>

            <div style="width: 100%; height: 350px;display: flex;align-items: center;justify-content: center;margin: 100px auto;position: relative;">
                <img style="position: absolute; width: 80%; height: 100%;" src="../siteimg/조작키배경.jpg" >
                <img style="position: absolute; width: 60%;" src="../siteimg/조작키.gif" >
            </div>
            <h2>게임 내용</h2>
            <p>
                "SHOW EARTH"에서는 게임 속에서 나타나는 다양한 물건들을 클릭하면 해당 제품의 사이트로
                이동하여 실제로 구매할 수 있습니다. 게임을 플레이하면서 원하는 아이템을 직접 손에 넣어보세요.
                미지의 세계에서 현실과 가상이 만나는 색다른 경험을 느껴보세요.
            </p>


            <h2>지금 시작하세요!</h2>
            <p>
                "SHOW EARTH"로 여러분을 초대합니다. 도트 아트의 아름다움과 게임의 재미가 어우러진
                이 특별한 여행에 지금 참여하세요. 지구를 보여주는 이 게임에서 새로운 모험을 시작하세요!
            </p>
        </div>
    </div>
</div>
${S_Footer}
</body>
</html>