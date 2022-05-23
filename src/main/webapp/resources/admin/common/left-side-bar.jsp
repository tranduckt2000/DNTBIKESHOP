<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="loadcss.jsp"%>
 <base href="${pageContext.servletContext.contextPath}/" />  
<div class="left-side-bar">
	<div class="brand-logo">
			<a class="" href="admin/flower.htm">
				<img class="" src="resources/images/logo.png" alt="lgogo"> 
			</a>
		</div>
	<div class="menu-block customscroll">
		<div class="sidebar-menu">
			<ul id="accordion-menu">
				<li>
					<div class="dropdown-divider"></div>
				</li>
				<li class="dropdown" id="qlh" style="display: block"><a
					href="admin/flower.htm" class="dropdown-toggle no-arrow"
					data-toggle="tooltip" data-placement="right" title=""> <span
						class="micon dw dw-file"></span> <span class="text-yellow">Quản lý xe đạp</span>
				</a></li>
				<li class="dropdown" id="qluser" style="display: block"><a
					href="admin/user.htm" class="dropdown-toggle no-arrow"
					data-toggle="tooltip" data-placement="right" title=""
					data-original-title="QUẢN LÝ TÀI KHOẢN"> <span
						class="micon dw dw-ruler"></span> <span class="text-yellow">Quản lý người dùng</span>
				</a></li>
				<li>
					<div class="dropdown-divider"></div>
				</li>
				<li class="dropdown" id="dangxuat" style=""><a
					href="${pageContext.request.contextPath}/admin/logout.htm" class="dropdown-toggle no-arrow"
					data-toggle="tooltip" data-placement="right" title=""
					data-original-title="Log out"> 
					<span
						class="micon dw dw-logout1"></span> 
						<span class="text-yellow">Đăng xuất</span>
				</a></li>
			</ul>
		</div>
	</div>
</div>