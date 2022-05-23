<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/resources/admin/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>Dashboard</title>
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value='/resources/assets/images/icon.ico' />">
<%@include file="/resources/admin/common/loadcss.jsp"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<style type="text/css">
*[id$=errors] {
	color: red;
	font-style: italic;
}

.tdcon {
	width: 300px
}

.contentss {
	width: 100%;
	display: block;
	text-overflow: ellipsis;
	word-wrap: break-word;
	overflow: hidden;
	max-height: 8em;
	line-height: 2em;
}
</style>
</head>
<body>
	<%@include file="/resources/admin/common/header.jsp"%>
	<%@include file="/resources/admin/common/left-side-bar.jsp"%>
	<div class="mobile-menu-overlay"></div>
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4>DANH SÁCH ĐƠN HÀNG</h4>
							</div>
						</div>
					</div>
				</div>
				<jsp:useBean id="pagedListHolder" scope="request"
					type="org.springframework.beans.support.PagedListHolder" />
				<c:url value="admin/chitiet.htm" var="pagedLink">
					<c:param name="p" value="~" />
				</c:url>
				<!-- Simple Datatable start -->
				<div class="card-box mb-30">
					<hr>
					<div class="pb-20 overflow-auto ">
						<table class="data-table table stripe hover" style="width: 100%"
							id="myTable">


							<thead class="table-dark">
								<tr>
									<th>MÃ HÓA ĐƠN</th>
									<th>NGƯỜI ĐẶT</th>
									<th>NGÀY</th>
									<th>TRẠNG THÁI</th>
									<th>TỔNG TIỀN</th>
									<th>XEM CHI TIẾT</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="trans" items="${pagedListHolder.pageList}">
									<tr>
										<td>${trans.id}</td>
										<td>${trans.user.name}</td>
										<td><fmt:formatDate type="both" value="${trans.created}" /></td>
										<c:if test="${trans.status==true}">
											<td>Approved</td>
										</c:if>
										<c:if test="${trans.status==false}">
											<td>Pending</td>
										</c:if>
										<td><span class="amount"><fmt:formatNumber
													pattern="###,### VND" value="${trans.amount}"
													type="currency" /></span></td>
										<td class="">
											<div class="row clearfix btn-list">
												<a
													href="${pageContext.request.contextPath}/admin/chitiet/userOrders/${trans.id}.htm"
													class="btn flosun-button secondary-btn theme-color  rounded-0" style="color: red ; font-weight: 500">View</a>
											</div>
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
						<div class="mr-4">
							<tg:paging pagedListHolder="${pagedListHolder}"
								pagedLink="${pagedLink}" />
						</div>
					</div>
				</div>
				<!-- Simple Datatable End -->
			</div>
		</div>
	</div>

	<%@include file="/resources/admin/common/footer.jsp"%>
	
</body>
</html>