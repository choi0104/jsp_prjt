window.onload = function(){
    imgDiv1.style.zIndex = 1;
    document.getElementById('funnya1').style.opacity = 1;
    document.getElementById('funnya2').style.opacity = 1;
    document.getElementById('funnya3').style.opacity = 1;
    document.getElementById('funnya4').style.opacity = 1;
}
    function hoverButton1() {
        imgDiv1.style.zIndex = 1;
        imgDiv2.style.zIndex = 0;
        imgDiv3.style.zIndex = 0;
        imgDiv4.style.zIndex = 0;
        document.getElementById('funnya1').style.opacity = 1;
        document.getElementById('funnya2').style.opacity = 1;
        document.getElementById('funnya3').style.opacity = 1;
        document.getElementById('funnya4').style.opacity = 1;
        document.getElementById('funnyb1').style.opacity = 0;
        document.getElementById('funnyb2').style.opacity = 0;
        document.getElementById('funnyb3').style.opacity = 0;
        document.getElementById('funnyb4').style.opacity = 0;
        document.getElementById('funnyc1').style.opacity = 0;
        document.getElementById('funnyc2').style.opacity = 0;
        document.getElementById('funnyc3').style.opacity = 0;
        document.getElementById('funnyc4').style.opacity = 0;
        document.getElementById('funnyd1').style.opacity = 0;
        document.getElementById('funnyd2').style.opacity = 0;
        document.getElementById('funnyd3').style.opacity = 0;
        document.getElementById('funnyd4').style.opacity = 0;
    }

    function hoverButton2() {
        imgDiv1.style.zIndex = 0;
        imgDiv2.style.zIndex = 1;
        imgDiv3.style.zIndex = 0;
        imgDiv4.style.zIndex = 0;
        document.getElementById('funnya1').style.opacity = 0;
        document.getElementById('funnya2').style.opacity = 0;
        document.getElementById('funnya3').style.opacity = 0;
        document.getElementById('funnya4').style.opacity = 0;
        document.getElementById('funnyb1').style.opacity = 1;
        document.getElementById('funnyb2').style.opacity = 1;
        document.getElementById('funnyb3').style.opacity = 1;
        document.getElementById('funnyb4').style.opacity = 1;
        document.getElementById('funnyc1').style.opacity = 0;
        document.getElementById('funnyc2').style.opacity = 0;
        document.getElementById('funnyc3').style.opacity = 0;
        document.getElementById('funnyc4').style.opacity = 0;
        document.getElementById('funnyd1').style.opacity = 0;
        document.getElementById('funnyd2').style.opacity = 0;
        document.getElementById('funnyd3').style.opacity = 0;
        document.getElementById('funnyd4').style.opacity = 0;
    }

    function hoverButton3() {
        imgDiv1.style.zIndex = 0;
        imgDiv2.style.zIndex = 0;
        imgDiv3.style.zIndex = 1;
        imgDiv4.style.zIndex = 0;
        document.getElementById('funnya1').style.opacity = 0;
        document.getElementById('funnya2').style.opacity = 0;
        document.getElementById('funnya3').style.opacity = 0;
        document.getElementById('funnya4').style.opacity = 0;
        document.getElementById('funnyb1').style.opacity = 0;
        document.getElementById('funnyb2').style.opacity = 0;
        document.getElementById('funnyb3').style.opacity = 0;
        document.getElementById('funnyb4').style.opacity = 0;
        document.getElementById('funnyc1').style.opacity = 1;
        document.getElementById('funnyc2').style.opacity = 1;
        document.getElementById('funnyc3').style.opacity = 1;
        document.getElementById('funnyc4').style.opacity = 1;
        document.getElementById('funnyd1').style.opacity = 0;
        document.getElementById('funnyd2').style.opacity = 0;
        document.getElementById('funnyd3').style.opacity = 0;
        document.getElementById('funnyd4').style.opacity = 0;
    }

    function hoverButton4() {
        imgDiv1.style.zIndex = 0;
        imgDiv2.style.zIndex = 0;
        imgDiv3.style.zIndex = 0;
        imgDiv4.style.zIndex = 1;
        document.getElementById('funnya1').style.opacity = 0;
        document.getElementById('funnya2').style.opacity = 0;
        document.getElementById('funnya3').style.opacity = 0;
        document.getElementById('funnya4').style.opacity = 0;
        document.getElementById('funnyb1').style.opacity = 0;
        document.getElementById('funnyb2').style.opacity = 0;
        document.getElementById('funnyb3').style.opacity = 0;
        document.getElementById('funnyb4').style.opacity = 0;
        document.getElementById('funnyc1').style.opacity = 0;
        document.getElementById('funnyc2').style.opacity = 0;
        document.getElementById('funnyc3').style.opacity = 0;
        document.getElementById('funnyc4').style.opacity = 0;
        document.getElementById('funnyd1').style.opacity = 1;
        document.getElementById('funnyd2').style.opacity = 1;
        document.getElementById('funnyd3').style.opacity = 1;
        document.getElementById('funnyd4').style.opacity = 1;
    }



    /*         <div class="image-container">
        <img class="image" id="image1" src="image/1419766945_1.jpg" alt="Image 1">
        <img class="image" id="image2" src="image/164375307x_2.jpg" alt="Image 2">
    </div>

    <button onclick="changeImageOrder()">이미지 변경</button>
     */

    function changeImageOrder() {
        var image1 = document.getElementById('image1');
        var image2 = document.getElementById('image2');

        // 현재 표시된 이미지의 z-index를 낮추어 숨김
        var currentImage = document.querySelector('.image[style*="z-index: 2"]');
        if (currentImage) {
            currentImage.style.zIndex = 1;
        }

        // z-index를 높여서 다음 이미지를 표시
        if (currentImage === image1) {
            image2.style.zIndex = 2;
        } else {
            image1.style.zIndex = 2;
        }
    }
