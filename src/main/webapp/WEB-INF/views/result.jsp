<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
		<title>Kwit rekrutacja</title>
	</head>
	<body>
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Piotr Kwit - zadanie rekrutacyjne</h1>
					<p>Wynik:</p>
					<%-- <p>${result.value}</p> --%>
					<p>${result}</p>
				</div>
			</div>
			<div class="col-sm-4">
				<a href="/zadanie">Podaj nowa liczbe</a>
			</div>
		</section>
	</body>
</html>
