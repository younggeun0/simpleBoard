<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#wrap {
	margin: 100px auto;
	width: 800px;
	min-height: 800px
}
</style>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<title>글보기</title>
<!-- Custom styles for this template -->
<script src="resources/js/jquery-3.3.1.slim.min.js"></script>
<link rel="stylesheet" href="resources/css/font.css"/>
</head>
<body>
	<form action="create_request.jsp" name="createFrm">
		<div class="container form-group" id="wrap">
    <section class="text-center bg-white mb-0" style="margin-top:30px; margin-bottom:20px;">
       <div class="container">
          <h1 class="jumbotron-heading">글 보기</h1>
       </div>
    </section>
    <div style="height:20px;"></div>
			<div class="row">
				<div class="col-9 " style="margin-top: 10px; margin-left: 100px;">
					<label style="font-size: 25px;">제목제목</label>
				</div>
			</div>
			<div class="row">
				<div class="col-9 " style="margin-top: 10px; margin-left: 100px;">
					<label style="width: 50px;">등록일</label> 
					<label style="width: 200px; margin-left: 30px;">2019</label> 
					<label style="width: 50px; margin-left: 20px;">조회수</label> 
					<label style="width: 100px; margin-left: 30px;">0000</label>
				</div>

			</div>
			<div class="row">
				<div class="col" style="margin-top: 10px; text-align: center;">
					<textarea cols="65" rows="10" readonly="readonly"></textarea>
				</div>
			</div>

			<div class="row justify-content-center" style="margin-top: 30px;">
				<a class="btn btn-secondary btn" href="#void" role="button">목록으로</a>
			</div>
		</div>
	</form>

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>