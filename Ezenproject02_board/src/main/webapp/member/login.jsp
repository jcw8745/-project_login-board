<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>서울특별시 공공서비스</title>
<script type="text/javascript" src="js/member1.js"></script>
</head>
<body>
	<nav class="navbar  navbar-expand-sm  bg-blue navbar-light">
		<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed"
			  data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			  aria-expanded="false">
                        
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

			<a class= "navbar-brand" href="main.jsp">
			<img src = "images/공공서비스예약.jpg"  style="width:200px;">
			</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">체육시설</a></li>
				<li><a href="main.jsp">공간시설</a></li>
				<li><a href="main.jsp">문화체험</a></li>
				<li><a href="main.jsp">교육강좌</a></li>
				<li><a href="main.jsp">진료복지</a></li>
				<li><a href="main.jsp">이용안내</a></li>
				<li><a href="ezenproject.jsp">게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toffle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanede="false">접속하기<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li class="active"><a href="login.do">로그인</a></li>
				<li><a href="join.do">회원가입</a></li>
			</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="login.do" name="frm">
					<h3 style="text-align: center;">로그인</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="id"  maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="pwd" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="로그인" onclick="return loginCheck()">
					<input type="reset" class="btn btn-primary form-control" value="취소">
					<input type="button" class="btn btn-primary form-control" value="아이디 찾기" onclick="location.href='memberfind.do'">
					<input type="button" class="btn btn-primary form-control" value="비밀번호 찾기" onclick="location.href='memberfindpwd.do'">
				
					
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