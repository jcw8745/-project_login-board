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
				<form method="post" action="memberUpdate.do" name="frm">
					<h3 style="text-align: center;">회원 정보 수정</h3>
					
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="name" value="${loginUser.name }" maxlength="20" readonly>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="id" value="${loginUser.id }" maxlength="20" readonly>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="pwd" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호 확인" name="pwd_check" maxlength="20">
					</div>
					
					<div class="form-group">
						<input type="text" class="form-control" placeholder="휴대폰번호" name="phone" value="${loginUser.phone }" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이메일" name="email" value="${loginUser.email }" maxlength="20">
					</div>
				
					<c:choose>
					<c:when test="${loginUser.gender==0 }">
				
						<input type="radio"   name="gender" value="0" checked="checked">남자
						<input type="radio"   name="gender" value="1">여자
					</c:when>
					<c:otherwise>
					<input type="radio"   name="gender" value="0" >남자
						<input type="radio"   name="gender" value="1" checked="checked">여자
						</c:otherwise>
					</c:choose>
					
					
					<div class="form-group">
						<input type="text" class="form-control" placeholder="나이" name="age" value="${loginUser.age }" maxlength="3">
					</div>
					
					<c:choose>
					<c:when test="${loginUser.admin==0 }">
					<input type="radio"   name="admin" value="0" checked="checked">일반회원
					<input type="radio"   name="admin" value="1">관리자
					</c:when>
					
					<c:otherwise>
					<input type="radio"   name="admin" value="0" >일반회원
					<input type="radio"   name="admin" value="1" checked="checked">관리자
					</c:otherwise>
					</c:choose>
					
					
					<input type="submit" class="btn btn-primary form-control" value="정보 수정" onclick="return joinCheck()">
					<input type="reset" class="btn btn-primary form-control" value="다시입력">
					<input type="button" class="btn btn-primary form-control" value="회원 탈퇴" onclick="location.href='memberDelete.do'">
				
				
					
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