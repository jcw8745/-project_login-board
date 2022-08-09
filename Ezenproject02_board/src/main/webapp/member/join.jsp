<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<form method="post" action="join.do" name="frm">
					<h3 style="text-align: center;">회원가입</h3>
						<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="name" maxlength="20">
					</div>
					<div class="form-group">
					
						<input type="text" class="form-control" placeholder="아이디" name="id"  maxlength="20">
					</div>
					
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="pwd" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호 확인" name="pwd_check" maxlength="20">
					</div>
				
					<div class="form-group">
						<input type="text" class="form-control" placeholder="휴대폰번호" name="phone" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이메일" name="email" maxlength="20">
					</div>
				
						<input type="radio"   name="gender" value="0" checked="checked">남자
						<input type="radio"   name="gender" value="1">여자
				
					<div class="form-group">
						<input type="text" class="form-control" placeholder="나이" name="age" maxlength="3">
					</div>
					
					<input type="radio"   name="admin" value="0" checked="checked">일반회원
					<input type="radio"   name="admin" value="1">관리자
					
					<input type="submit" class="btn btn-primary form-control" value="가입하기" onclick="return joinCheck()">
					<input type="reset" class="btn btn-primary form-control" value="다시입력">
					<input type="button" class="btn btn-primary form-control" value="돌아가기" onclick="main.jsp">
				
				
					
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