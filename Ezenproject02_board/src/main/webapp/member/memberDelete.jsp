<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>Insert title here</title>
<script type="text/javascript" src="js/member1.js"></script>

</head>
<body>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-5">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="memberDelete.do" name="frm">
					<h3 style="text-align: center;">회원 정보 수정</h3>
					
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="name" value="${loginUser.name }" maxlength="20" readonly>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="id" value="${loginUser.id }" maxlength="20" readonly>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="pwd" value="${loginUser.pwd }" maxlength="20" readonly>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호 확인" name="pwd_check" maxlength="20">
					</div>
					
					
					
					<input type="submit" class="btn btn-primary form-control" value="탈퇴하기" onclick="return memberdeletebutton()">
					<input type="reset" class="btn btn-primary form-control" value="다시입력">
					<input type="button" class="btn btn-primary form-control" value="돌아가기" onclick="location.href='main.jsp'">
				
				
					
					<h4>${message }</h4>
				</form>
		</div>
	</div> 
	<div class="col-lg-4"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>