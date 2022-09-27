 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>BBS</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID")!= null){
			userID = (String)session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1 aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">BBS</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">홈</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
					if(userID == null){
			%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						접속하기<span class="caret"></span></a>	
						<ul class="dropdown-menu">
							<li><a href="login.jsp">로그인</a></li>
						    <li><a href="join.jsp">회원가입</a></li>
						</ul>
					</li>
				</ul>
			<%		
					}else{
			%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						회원관리<span class="caret"></span></a>	
						<ul class="dropdown-menu">
							<li><a href="logoutAction.jsp">로그아웃</a></li>					 
						</ul>
					</li>
				</ul>
			<%
					}			
			%>			
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>웹사이트 소개</h1>
				<p>이 웹 사이트는 부트스트랩을 사용하여 만든 JSP 웹 사이트 게시판입니다. <br>여기서는 회원가입과 로그인, 글작성,수정,삭제를 할 수 있습니다. <br>방문해주셔서 감사합니다.</p>
				<a class="btn btn-primary btn-pull" href="bbs.jsp" role="button">들어가보기</a>
			</div>
		</div>
	</div>
	<div class="container">
		 <div id = "myCarousel" class="carousel" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0"></li>
			</ol>
			<ol class="carousel-inner"> 
				<div class="item active">
					<img src="images/1.jpg">
				</div>
		 	</ol>
		</div> 
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>