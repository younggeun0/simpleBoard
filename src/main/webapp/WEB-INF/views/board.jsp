<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Simple Board</title>
<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/font.css"/>

<!-- Custom styles for this template -->
<script src="resources/js/jquery-3.3.1.slim.min.js"></script>
<script src="resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	$(function() {
		if(${ writeFlag }) {
			alert("새로운 글이 추가되었습니다.");
		}
	});
</script>
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
						<c:if test="${ empty postList }">
							<tr class="text-center">
								<td colspan="4">조회된 결과가 없습니다.</td>
							</tr>
						</c:if>
						<c:forEach var="post" items="${ postList }">
							<tr class="text-center" onclick="location.href='detail_post.do?sb_num=${ post.sb_num }&currPage=${ currPage }'">
								<c:set var="i" value="${ i+1 }"/>
								<td><c:out value="${ (totalCnt-(currPage-1)*pageScale-i)+1  }" /></td>
								<td class="text-left"><c:out value="${ post.subject }"/></td>
								<td><c:out value="${ post.input_date }"/></td>
								<td><c:out value="${ post.view_cnt }"/></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="row">
					<div class="col-10"></div>
					<div class="col-1" >
						<button type="button" class="btn btn-sm btn-secondary"
							onclick="location.href='write.do?currPage=${ currPage }'" 
							style="width: 70px;">글쓰기</button>
					</div>
				</div>
				<div class="d-flex justify-content-center">
					<ul class="pagination">
						<li class="paginate_button page-item previous ${ forwardFlag ? '' : 'disabled' }" id="dataTable_previous">
							<a href="index.do?currPage=${ startPage-1 }" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">이전으로</a>
						</li>
						<c:forEach var="i" step="1" begin="${ startPage }" end="${ endPage }">
							<li class="paginate_button page-item ${ currPage == i ? 'active' : '' }">
								<a href="index.do?currPage=${ i }" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">
									<c:out value="${ i }"/>
								</a>
							</li>
						</c:forEach>
						<li class="paginate_button page-item next ${ backwardFlag ? '' : 'disabled' }" id="dataTable_next">
							<a href="index.do?currPage=${ endPage+1 }" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">다음으로</a>
						</li>
					</ul>
				</div>
			</div>
			</main>
		</div>
	</div>
</body>
</html>
