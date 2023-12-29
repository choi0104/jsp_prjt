window.onload = function(){
    /*  자바스크립트에서 form객체에 접근하기
        form의 이름으로 바로 접근 가능
        form에 포함되는 태그 객체들은 점(.)연산자로 접근 가능
    */
    frm_join.submit_btn.addEventListener("click", getValue);

    frm_join.addEventListener("submit", function(){
        e.preventDefault();
        e.stopPropagation();  
    });

    frm_join.addEventListener("keydown", function(e){
        //alert("keyCode:"+e.keyCode);
        if(Object.is(e.keyCode,13)){
            //alert("Enter키 실행");
            getValue();
        }
    });
    frm_join.id_btn.addEventListener("click", function(){
        //아이디 입력값 조건: 아이디는 8글자 이상 10글자 이하로 숫자를 1개 이상 포함해야 합니다.
        //정규표현식: const regExp = /(?=.*[0-9]){8,10}/;
        const regExp_id = /^(?=.*\d)[0-9a-zA-Z]{8,10}$/;

        if(frm_join.idinput.value.length == 0){
            alert("아이디가 입력되지 않았습니다");
            frm_join.idinput.focus();

        }else if(!regExp_id.test(frm_join.idinput.value)){
            alert("아이디는 8글자 이상 10글자 이하로 숫자를 1개 이상 포함해야 합니다");
            frm_join.idinput.focus();

        }else{
            frm_join.pwinput.focus();
        }

    });

};

function getValue() {
//회원정보 입력값
let valid = false;
var checkbox = document.getElementById("myCheckbox");
const regExp_id = /^(?=.*[0-9])[A-Za-z0-9~!@#$%^()+|=]{8,10}$/;

//비밀번호에 대한 정규표현식: 비밀번호는 8글자 이상 16글자 이하로 영문자, 숫자, 특수문자를 1개 이상 포함해야 합니다.
const regExp_pw = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,16}$/;
//전화번호에 대한 정규표현식: 전화번호는 010-숫자4자리-숫자4자리 로 입력해야 합니다
const regExp_phone =/^010-\d{4}-\d{4}$/;

//아이디
if (idinput.value.length == 0) {alert("아이디가 입력되지 않았습니다");idinput.focus();return false;//아이디 입력
}else if(!regExp_id.test(idinput.value)){alert("아이디는 8글자 이상 10글자 이하로 숫자를 1개 이상 포함해야 합니다");idinput.focus();
//비밀번호
}else if (pwinput.value.length == 0) {alert("비밀번호가 입력되지 않았습니다");pwinput.focus();return false;//비밀번호 입력
}else if (!regExp_pw.test(pwinput.value)) {alert("비밀번호는 8자~20자리의 영문, 숫자, 특수문자 중 2가지 조합하여야 합니다.");pwinput.focus();return false;
//비밀번호 확인
}else if (pwinput2.value.length == 0) {alert("비밀번호 확인이 입력되지 않았습니다");pwinput2.focus();return false;//비밀번호 확인
}else if (pwinput.value != pwinput2.value) {alert("비밀번호가 일치하지 않습니다.");pwinput2.focus();return false;}//비밀번호 비교값
//이름, 휴대폰 번호, 이메일
else if (nameinput.value.length == 0) {alert("이름이 입력되지 않았습니다");nameinput.focus();//이름 입력
}else if (phone.value.length == 0) {alert("전화번호가 입력되지 않았습니다");phone.focus();//휴대폰 번호 입력
}else if (!regExp_phone.test(phone.value)) {alert("전화번호는 010-숫자4자리-숫자4자리 로 입력해야 합니다");phone.focus();//휴대폰 번호 입력
}else if (emailinput.value.length == 0) {alert("이메일이 입력되지 않았습니다");emailinput.focus();//이메일 입력
}else if (emailinput2.value.length == 0) {alert("이메일이 입력되지 않았습니다");emailinput2.focus();//이메일 입력
}else if (!myCheckbox.checked) {alert("이용약관에 동의하지 않았습니다.");myCheckbox.focus();//이용약관
}else {valid = true;}
if (!valid) {return false;}
alert("회원가입 완료")
frm_join.submit();
}
//휴대폰 번호 자릿수 제한
function phonelimitInput(input, maxLength) {
var currentLength = input.value.length;
if (currentLength > maxLength) {input.value = input.value.slice(0, maxLength);}
}
//이메일 자동 입력값
function updateInput() {
var selectedOption = document.getElementById("emailselectOption").value;
var inputField = document.getElementById("emailinput2");
if (selectedOption === "") {inputField.readOnly = false;inputField.value = "";
}else {inputField.readOnly = true;inputField.value = selectedOption;}
}