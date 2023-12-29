        window.onload = function(){

            frm_join.addEventListener("submit", function(e){
                //입력값의 유효성검사 통과여부:valid
                let valid = false;

                //아이디: 아이디는 4글자로 합니다.
                const regExp_id = /^[A-Za-z0-9~!@#$%^()+|=]{4}$/;
                //비밀번호: 비밀번호는 8글자 이상 16글자 이하로 영문자, 숫자, 특수문자를 1개 이상 포함해야 합니다.
                const regExp_pw = /^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[~!@#$%^()+|=])[A-Za-z0-9~!@#$%^()+|=]{8,16}$/;
                //전화번호: 전화번호는 010-숫자4자리-숫자4자리 로 입력해야 합니다
                const regExp_phone =/^010-\d{4}-\d{4}$/;

                if(frm_join.member_id.value.length == 0){
                    alert("아이디가 입력되지 않았습니다");
                    frm_join.member_id.focus();

                }else if(!regExp_id.test(frm_join.member_id.value)){
                    alert("아이디는 4글자로 합니다");
                    frm_join.member_id.focus();

                }else if(frm_join.member_pw.value.length == 0){
                    alert("비밀번호가 입력되지 않았습니다");
                    frm_join.member_pw.focus();

                }else if(!regExp_pw.test(frm_join.member_pw.value)){
                    alert("비밀번호는 8글자 이상 16글자 이하로 영문자, 숫자, 특수문자를 1개 이상 포함해야 합니다.");
                    frm_join.member_pw.focus();

                }else if(frm_join.member_name.value.length == 0){
                    alert("이름이 입력되지 않았습니다");
                    frm_join.member_name.focus();

                }else if(frm_join.handphone.value.length == 0){
                    alert("전화번호가 입력되지 않았습니다");
                    frm_join.handphone.focus();

                }else if(!regExp_phone.test(frm_join.handphone.value)){
                    alert("전화번호는 010-숫자4자리-숫자4자리 로 입력해야 합니다");
                    frm_join.handphone.focus();

                }else if(frm_join.email.value.length == 0){
                    alert("이메일이 입력되지 않았습니다");
                    frm_join.email.focus();

                }else{//입력값이 모두 정상적으로 입력되어진 경우
                    valid = true;
                }
                
                if(!valid){
                    e.preventDefault();
                    e.stopPropagation();
                }
            });

        };


