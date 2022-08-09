<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<%--     <c:if test="${empty loginUser }">

    
    <jsp:forward page='login.do'/>
        </c:if>
 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>서울특별시 공공서비스</title>
</head>
<body>
<c:if test="${loginUser!=null }">
<h3 align="right"><span style="background-color:#dddddd;">

안녕하세요. ${loginUser.name }(${loginUser.id })님 &nbsp;&nbsp;

<c:choose>
<c:when test="${loginUser.admin==1 }">[관리자]</c:when>
<c:otherwise> [일반회원] </c:otherwise>
</c:choose>

</span></h3>
</c:if>
<%-- 	<%
		String loginUser = null;
		if (session.getAttribute("loginUser") != null) {
			loginUser = (String) session.getAttribute("loginUser");
		}
	%> --%>

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
				<li><a href="BoardServlet?command=board_list">게시판</a></li>
			
			</ul>
			<c:if test="${loginUser==null }">
		<%-- 	<%
				if(loginUser == null) {
			%> --%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toffle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanede="false">접속하기<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="login.do" style="color:#0067a3">로그인</a></li>
				<li><a href="join.do" style="color:#0067a3">회원가입</a></li>
			</ul>
				</li>
			</ul>
			</c:if>
			<c:if test="${loginUser!=null }">
			
	<%-- 		<%
				} else {
			%> --%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toffle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanede="false">회원관리<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="logout.do">로그아웃</a></li>
				<li><a href="memberUpdate.do">회원정보수정</a></li>
			</ul>
				</li>
			</ul>
			</c:if>
<%-- 			
			<%	
				}
			%> --%>
		</div>
		
	</nav>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1> 메인페이지 </h1>
				<p>서울특별시 공공서비스 부트스트랩</p>
				<a class="btn btn-primary btn-pull" href="#" role="button"> 자세히 알아보기</a>
			</div>
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/교육강좌.jpg">
				</div>
				<div class="item">
					<img src="images/농장체험.jpg">
				</div>
				<div class="item">
					<img src="images/야구장.jpg">
				</div>
				<div class="item">
					<img src="images/진료복지.jpg">
				</div>
				<div class="item">
					<img src="images/캠핑장.jpg">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>