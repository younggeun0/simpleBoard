<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#wrap {
		margin: 100px auto;
		width: 810px;
		min-height: 800px
	}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/font.css"/>

<title>글쓰기</title>
<!-- Custom styles for this template -->
<link href="resources/css/admin_dashboard.css" rel="stylesheet">
<script src="resources/js/jquery-3.3.1.slim.min.js"></script>
<script src="resources/js/bootstrap.bundle.min.js"></script>

<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-lite.js"></script>

<script type="text/javascript">
	$(function() {
		$('#summernote').summernote({
			placeholder : '내용을 입력해주세요 :)',
			tabsize : 2,
			height : 300,

			lang : 'ko-KR'
		});
	});
</script>

</head>
<body>
	<form>
		<div class="container form-group" id="wrap">
			<div class="row">
				<div class="col-12 text-center">
					<label style="font-size: 40px;">글쓰기</label> <img alt="" src="resources/images/notice.png" style="width: 100px; height: 100px; margin-left: 15px; margin-bottom: 30px;">
				</div>
			</div>

			<div class="row">
				<div class="col-9" style="margin-top: 10px; margin-left: 100px;">
					<input type="text" class="form-control" placeholder="제목을 입력해주세요(최대 100자)">
				</div>
			</div>
			<div class="row">
				<div class="col-9 " style="margin-top: 10px; margin-left: 100px;">
					<input type="text" class="form-control" id="summernote">
				</div>
			</div>

			<div class="row" style="margin-top: 30px;">
				<a class="btn btn-secondary btn" href="#void" role="button" style="margin-left: 320px;">목록으로</a> <a class="btn btn-secondary btn" href="#void" role="button" style="margin-left: 10px;">작성</a>
			</div>
		</div>
	</form>

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>