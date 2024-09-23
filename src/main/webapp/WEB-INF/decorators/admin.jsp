<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>eLEARNING - eLearning HTML Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href='<c:url value="img/favicon.ico" />' rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link
	href='<c:url value="/templates/admin/lib/animate/animate.min.css" />'
	rel="stylesheet">
<link
	href='<c:url value="/templates/admin/lib/owlcarousel/assets/owl.carousel.min.css" />'
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href='<c:url value ="/templates/admin/css/bootstrap.min.css" />'
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href='<c:url value="/templates/admin/css/style.css" />'
	rel="stylesheet">
</head>

<body>
	<div>
		<%@ include file="/common/admin/header.jsp"%>
	</div>
	<div>
		<sitemesh:write property="body" />
	</div>
	<div>
		<%@ include file="/common/admin/footer.jsp"%>
	</div>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- JavaScript Libraries -->
	<script src='<c:url value="/templates/admin/lib/wow/wow.min.js" />'></script>
	<script
		src='<c:url value="/templates/admin/lib/easing/easing.min.js" />'></script>
	<script
		src='<c:url value="/templates/admin/lib/waypoints/waypoints.min.js" />'></script>
	<script
		src='<c:url value="/templates/admin/lib/owlcarousel/owl.carousel.min.js" />'></script>


	<!-- Template Javascript -->
	<script
		src='<c:url value="/templates/admin/js/main.js" />'></script>

</body>
</html>