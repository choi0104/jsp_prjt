window.onload = function(){
    const submit = document.getElementById("submit_btn");
    if(submit != null){
        submit.onclick = function(){
            inputCheck();
        }
    }
    
    const submit2 = document.getElementById("submit_btn2");
    if(submit2 != null){
        submit2.onclick = function(){
            inputCheck2();
        }
    }
    
}

function inputCheck() {
	if (frm.age.value.trim().length == 0) {
		alert("나이를 입력해주세요.");
		frm.age.focus();
		return false;
	} else if (isNaN(frm.age.value)) {
		alert("숫자로 입력해주세요.");
		frm.age.value="";
		frm.age.focus(); 
		return false;
	} else if (true) {
        const flag = false;
        for(let i=0; i<frm.item.length; i++){
            if(frm.item[i].checked){//체크박스에 선택항목이 있으면
                flag = true;
            }
        }
        if(!flag){//flag값이 false이면
            alert("관심항목을 선택해주세요.");
            return false;
        }else{
            return true;
        }  
    } 
}

function inputCheck2() {
    if (frm2.id.value.trim().length == 0) {
        alert("아이디를 입력해주세요.");
        frm2.id.focus();
        return false;
    } else if (frm2.address.value.trim().length == 0) {
        alert("주소를 입력해주세요.");
        frm2.address.focus(); 
        return false;
    } else if (frm2.greet.value.trim().length == 0) {
        alert("가입인사를 입력해주세요.");
        frm2.greet.focus(); 
        return false;
    } else {
        frm2.submit();
    }
}