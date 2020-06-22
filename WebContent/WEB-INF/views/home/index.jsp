<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resource/homepage/assets/css/main.css" />
</head>
<body>
	<!-- Header -->
	<header id="header">
		<div class="inner">
			<a href="index.html" class="logo">Theory</a>
			<nav id="nav">
				<a href="#" data-lang="vi">Tiếng Việt</a> <a href="#" data-lang="en">Tiếng
					Anh</a> <a href="login/submit.htm">Login</a>
			</nav>
			<a href="#navPanel" class="navPanelToggle"><span
				class="fa fa-bars"></span></a>
		</div>
	</header>

	<!-- Banner -->
	<section id="banner">
		<h1>Welcome to Chou Chou</h1>
	</section>
	<!-- Two -->
	<section id="two" class="wrapper style1 special">
		<div class="inner">
			<header>
				<h2 style="font-family: monospace;">Top Nhân Viên Tiêu Biểu</h2>
				<p>(Dữ Liệu Gia Lập)</p>
			</header>
			<div class="flex flex-5">
				<c:forEach var="staff" items="${topStaff}">
					<div class="box person">
						<div class="image round">
							<img width="100px" src="resource/avatar/${staff.photo}"
								alt="Person" />
						</div>
						<h3>${staff.name}</h3>
						<p>${staff.depart.name}</p>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<!-- Footer -->
	<footer id="footer">
		<div class="inner">
			<div class="flex">
				<div class="copyright">
					&copy; Untitled. Design: <a href="#">TEMPLATED</a>. Images: <a
						href="https://unsplash.com">Unsplash</a>.
				</div>
				<ul class="icons">
					<li><a href="#" class="icon fa-facebook"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-linkedin"><span
							class="label">linkedIn</span></a></li>
					<li><a href="#" class="icon fa-pinterest-p"><span
							class="label">Pinterest</span></a></li>
					<li><a href="#" class="icon fa-vimeo"><span class="label">Vimeo</span></a></li>
				</ul>
			</div>
		</div>
	</footer>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
		$(function() {
			$("a[data-lang]").click(function() {
				var lang = $(this).attr("data-lang");
				$.get("home/index.htm?language=" + lang, function() {
					location.reload();
				});
				return false;
			});
		});
	</script>
</body>
</html>