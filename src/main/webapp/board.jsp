<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>알림 보기</title>
<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/font.css"/>

<!-- Custom styles for this template -->
<script src="resources/js/jquery-3.3.1.slim.min.js"></script>
<script src="resources/js/bootstrap.bundle.min.js"></script>
</body>
</head>
<body>
	<div class="container-fluid">
		<div class="row justify-content-center">

			<div class="table col-6" style="margin-top: 20px;">
				<section class="text-center bg-white mb-0" style="margin-top: 30px; margin-bottom: 20px;">
					<div class="container">
						<h1 class="jumbotron-heading">Simple Board</h1>
					</div>
				</section>
				<div style="height: 20px;"></div>

				<table class="table table-striped table-sm border-bottom">
					<thead>
						<tr class="text-center">
							<th style="width: 100px">번호</th>
							<th style="width: 400px">제목</th>
							<th style="width: 100px">날짜</th>
							<th style="width: 100px">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach begin="1" end="10" step="1">
							<tr class="text-center">
								<td>123</td>
								<td class="text-left">제목입니다 문의입니다 숑숑</td>
								<td>2019-03-00</td>
								<td>000</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="row">
					<div class="col-10"></div>
					<div class="col-1" ><button type="button" class="btn btn-sm btn-secondary" style="width: 70px;">글쓰기</button></div>
				</div>
				<div class="d-flex justify-content-center">
					<ul class="pagination">
						<li class="paginate_button page-item previous disabled" id="dataTable_previous"><a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">이전으로</a></li>
						<li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
						<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
						<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
						<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
						<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
						<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
						<li class="paginate_button page-item next" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">다음으로</a></li>
					</ul>
				</div>
			</div>
			</main>
		</div>
	</div>
</body>
</html>
