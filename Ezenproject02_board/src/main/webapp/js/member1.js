/**
 * 
 */
 function loginCheck(){
	if (document.frm.id.value.length==0){
		
		alert("아이디를 입력해주세요.");
		frm.id.focus();
		return false;
	}
	if(document.frm.pwd.value==""){
		alert("암호는 반드시 입력해야 합니다.");
		frm.pwd.focus();
		return false;
	}
}

function idCheck(){
	if(document.frm.id.value==""){
		
		alert('아이디를 입력하여 주십시오.');
		document.frm.id.focus();
		return;
		
	}
	var url="idCheck.do?id=" + document.frm.id.value;
	window.open(url, "_blank_1","toolbar=no,menubar=no,scrollbars=yes,resizable=no,width=450,height=200");
	
}

function findMember(){
	
	
	if(document.frm.name.value==""){
		
		alert('이름을 입력하여 주십시오.');
		document.frm.name.focus();
		return;
	}
	if(document.frm.phone.value==""){
		alert('전화번호를 입력하여 주십시오.');
		document.frm.phone.focus();
		return;
		
	}
}


function idok(){
	opener.frm.id.value=document.frm.id.value;
	opener.frm.reid.value=document.frm.id.value;
	self.close();
}

function joinCheck(){
	if(confirm("정말 진행 하시겠습니까?")==true){
	
	if(document.frm.name.value.length==0){
		alert("이름을 써주세요.");
		frm.name.focus();
		return false;
		
	}
	if(document.frm.id.value.length==0){
		alert("아이디를 써주세요");
		frm.id.focus();
		return false;
	}
	if(document.frm.id.value.length<4){
		alert("아이디는 4글자 이상이어야 합니다.");
		frm.id.focus();
		return false;
	}
	
	if(document.frm.pwd.value==""){
		alert("비밀번호는 반드시 입력해야 합니다.");
		frm.pwd.focus();
		return false;
	}
	if(document.frm.pwd.value !=document.frm.pwd_check.value){
		alert("비밀번호가 일치하지 않습니다.");
		frm.pwd.focus();
		return false;
	}
	if(document.frm.reid.value.length==0){
		alert("중복 체크를 하지 않았습니다.");
		frm.id.focus();
		return false;
	}
	
	}else{
		return false;
	}
}
	
	function memberdeletebutton(){
		
	
		
	if(document.frm.name.value.length==0){
		alert("이름을 써주세요.");
		frm.name.focus();
		return false;
		}
	
	if(document.frm.pwd_check.value==""){
		alert("암호는 반드시 입력해야 합니다.");
		frm.pwd_check.focus();
		return false;
	}
	if(document.frm.pwd_check.value !=document.frm.pwd.value){
		alert("암호가 일치하지 않습니다.");
		frm.pwd_check.focus();
		return false;
	}
	
	if(confirm("정말 탈퇴 하시겠습니까?")==true){
		alert("회원탈퇴 되었습니다.");
	}else{ 
		return false;
	}
	
}