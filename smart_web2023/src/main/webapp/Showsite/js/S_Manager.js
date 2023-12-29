    var isEnlarged = false;
    document.getElementById('NoticePage').style.transform = 'scaleX(0.5) scaleY(0.5)';
    document.getElementById('EventPage').style.transform = 'scaleX(0.5) scaleY(0.5)';
    document.getElementById('NewsPage').style.transform = 'scaleX(0.5) scaleY(0.5)';
    document.getElementById('CommunityPage').style.transform = 'scaleX(0.5) scaleY(0.5)';

    function toggleSize(ss) {
        var MovePage = document.getElementById(ss);
        isEnlarged = !isEnlarged;
        document.getElementById('NoticePage').style.opacity = 0;
        document.getElementById('EventPage').style.opacity = 0;
        document.getElementById('NewsPage').style.opacity = 0;
        document.getElementById('CommunityPage').style.opacity = 0;

        if (isEnlarged) {
            MovePage.style.transform = 'scaleX(1) scaleY(1)';
            MovePage.style.opacity = 1;
            MovePage.style.zIndex = 1;
            // 세션 스토리지에 상태 정보 저장
            sessionStorage.setItem('isEnlarged', 'true');
            sessionStorage.setItem('activePage', ss);
        } else {
            MovePage.style.transform = 'scale(0.5)';
            document.getElementById('NoticePage').style.opacity = 1;
            document.getElementById('EventPage').style.opacity = 1;
            document.getElementById('NewsPage').style.opacity = 1;
            document.getElementById('CommunityPage').style.opacity = 1;
            document.getElementById('NoticePage').style.zIndex = 0;
            document.getElementById('EventPage').style.zIndex = 0;
            document.getElementById('NewsPage').style.zIndex = 0;
            document.getElementById('CommunityPage').style.zIndex = 0;
            // 세션 스토리지에서 상태 정보 제거
            sessionStorage.removeItem('isEnlarged');
            sessionStorage.removeItem('activePage');
        }
    }

    // 페이지 로딩 시 상태 복원
    window.onload = function () {
        // 세션 스토리지에서 상태 정보 가져오기
        var isEnlargedStored = sessionStorage.getItem('isEnlarged');
        var activePageStored = sessionStorage.getItem('activePage');
        if (isEnlargedStored === 'true' && activePageStored) {
            // 상태 정보가 있으면 해당 페이지 확대 및 투명도 조절
            toggleSize(activePageStored);
        }
    };