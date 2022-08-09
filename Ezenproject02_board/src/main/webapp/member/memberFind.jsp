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
		<div class="jumbotron" style="padding-top: 100px;">
				<form method="get" action="memberfind.do" name="frm">
					<h3 style="text-align: center;">아이디 찾기</h3>
					<div class="form-group">
<input type="text" name="name" class="form-control" id="name" placeholder="이름" required autofocus>

</div>



<div class="form-group">
<input type="text" name="phone" class="form-control" id="phone" placeholder="전화번호" required>

</div>


<button type="submit" class="btn btn-outline-secondary findbtn" id="btnbtn">찾기</button>
<button type="button" class="btn btn-outline-secondary findbtn" id="btnbtn" onclick="location.href='login.do'">돌아가기</button>

<h4>${message }</h4>
<!-- <table>
<tr>
<td>이 름 </td>
<td><input type="text" name="name" size="20"></td>
</tr>
<tr>
<td>전화번호</td>
<td><input type="text" name="phone" size="20"></td>
</tr>


<tr>
<td colspan="2" align="center">
<input type="submit" value="찾 기" onclick="findMember()">
<input type="reset" value="취 소">
</tr>
</table> -->

				</form>
		</div>
	</div> 
	<div class="col-lg-4"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>