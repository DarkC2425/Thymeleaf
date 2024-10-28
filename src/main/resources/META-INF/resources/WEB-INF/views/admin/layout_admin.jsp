<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org"
	xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header class="row">
		<div class="col">
			<div th:replace="~{admin/fragments/header: :header}"></div>
		</div>
	</header>
	<main class="container">
		<section class="row mt-4">
			<div class="col mt-5 mb-5">
				<div layout:fragment="content"></div>
			</div>
		</section>
	</main>
	<footer class="row">
		<div class="col">
			<div th:replace="~{admin/fragments/footer :: footer}"></div>
		</div>
		</footer> 
</body>
</html>