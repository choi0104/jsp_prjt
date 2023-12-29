    function removeFocus1() {
        document.getElementById("a1").style.opacity = 1;
        document.getElementById("a2").style.opacity = 0;
        document.getElementById("a3").style.opacity = 0;
    }
    function removeFocus2() {
        document.getElementById("a1").style.opacity = 0;
        document.getElementById("a2").style.opacity = 1;
        document.getElementById("a3").style.opacity = 0;
        document.getElementById("asdf").src = '../siteimg/조작키.gif';
    }
    function removeFocus3() {
        document.getElementById("a1").style.opacity = 0;
        document.getElementById("a2").style.opacity = 0;
        document.getElementById("a3").style.opacity = 1;
    }
    function removeFocus4() {
        document.getElementById("a1").style.opacity = 0;
        document.getElementById("a2").style.opacity = 0;
        document.getElementById("a3").style.opacity = 0;
    }
    function changeImage(element, newSource) {
        element.src = newSource;
    }
    document.addEventListener("DOMContentLoaded", function () {
        var EventPage = document.getElementById("EventPage");
        var images = EventPage.getElementsByTagName("img");

        for (var i = 0; i < images.length; i++) {
            images[i].style.marginLeft = (i * 1100 - (images.length * 550) - 900) + "px";
        }
        
        function moveImages() {
            for (var i = 0; i < images.length; i++) {
                var currentMarginLeft = parseInt(images[i].style.marginLeft);
                var newMarginLeft = currentMarginLeft + 1100;

                if (currentMarginLeft > 4000) {
                    images[i].style.opacity = 0;
                }

                if (currentMarginLeft > images.length * 550 - 1300) {
                    images[i].style.marginLeft = -(images.length * 550 - 200) + "px";
                } else {
                    images[i].style.marginLeft = newMarginLeft + "px";
                }

                if (currentMarginLeft === -(images.length * 550 - 200) + 1100) {
                    images[i].style.opacity = 1;
                }
            }
        }
        setInterval(moveImages, 6000);
    });