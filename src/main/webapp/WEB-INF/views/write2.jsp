<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device",initial-scale="1">
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<!-- favicon -->
<link href="image/favicon.png" rel="shortcut icon">
<!-- CSS -->
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/custom.css">
<title>Q&A 게시판 - 글 쓰기┃SEMO</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}

	%>
	<nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm" id="mainNav">
                <div class="container px-5">
                    <a class="navbar-brand fw-bold fs-4" href="main" ><img src="image/favicon.png" style="width: 25px;" /> SEMO</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

	 	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">영양제 소개</a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="infoENS">현대인 필수 영양제</a></li>
									<li><a class="dropdown-item" href="infoCNS">증상별 영양제 추천</a></li>
									<li><a class="dropdown-item" href="infoNGNS">같이 섭취하면 좋지 않은 영양제</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a class="nav-link me-lg-3 active" href="bbs2">Q&A 게시판</a></li>
							<li class="nav-item"><a class="nav-link me-lg-3" href="bbs">후기 게시판</a></li>
							<li class="nav-item"><a class="nav-link me-lg-3" href="newsVideo">NEWS & VIDEO</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">마이 페이지</a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                   	<li><a class="dropdown-item" href="myPage">회원 정보 수정</a></li>
								</ul>
							</li>
						</ul>
  <%
  	if(userID == null){

  %>
		<ul class="navbar-nav ms-sm-5">
			<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle btn btn-primary fw-bold" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">접속하기</a>
				<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
					<li class="active"><a class="dropdown-item" href="login">로그인</a></li>
					<!-- active : 선택이 됨을 알려줌 -->
					<li><a class="dropdown-item" href="join">회원가입</a></li>
				</ul></li>
		</ul>
  <%
  	} else {
  %>
		<ul class="navbar-nav ms-sm-5">
			<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle btn btn-primary" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">회원관리</a>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="logoutAction">로그아웃</a></li>
				</ul></li>
		</ul>
 <%

 }
  %>
		</div>
		</div>
	</nav>

				<div class="container">
					<h1 class="card-title text-center my-5 fw-bold fs-3">Q&A 게시판</h1>
					<hr class="mt-2 mb-4">
					<div class="row">
						<form method="post" action="writeAction2" enctype="multipart/form-data">
							<table class="table table-striped">
								<thead>
									<tr>
										<th class="card-title" colspan="2">게시판 글쓰기</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="table-primary" style="vertical-align: middle;">제목</td>
										<td class="table-secondary"><input type="text" class="form-control" placeholder="글 제목을 입력해주세요."
											name="bbsTitle" maxlength="50"></td>
									</tr>
									<tr>
										<td class="table-primary" style="vertical-align: middle;">내용</td>
										<td class="table-secondary"><textarea type="text"class="form-control" placeholder="글 내용을 입력해주세요."
												name="bbsContent" maxlength="2048" style="height: 350px"></textarea></td>
									</tr>
									<tr>
										<td class="table-primary" style="vertical-align: middle;">첨부파일</td>
										<td class="table-secondary" style="text-align: left;">
										<input type="file" name="file_name"></td>
									</tr>
								</tbody>
							</table>
							<input type="submit" class="btn btn-primary float-end" value="글쓰기">
						</form>
					</div>
				</div>

		<!-- Footer-->
        <footer class="bg-white text-center py-5">
            <div class="container px-5">
                <div class="text-black-50 small">
                    <div class="mb-2">&copy; Supplements Web Site 2021.</div>
                    <a>TEAM MBTI: 김성광 │ 김상홍  │ 유정원  │ 이성재  │ 이정은  │ 장재성  │ 최현준  </a>
                </div>
            </div>
        </footer>

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/bootstrap.js"></script>
		<script src="js/dropdown.js"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
      	<!-- Darkmode JS -->
		<script src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.7/lib/darkmode-js.min.js"></script>
		<script src="js/widget.js"></script>
    	<!-- Icon JS-->
   	 	<script src="https://kit.fontawesome.com/050483e6c4.js" crossorigin="anonymous"></script>
</body>
</html>