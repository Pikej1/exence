<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
				</div>
			</div>
		</section>
		<section class="container">
			<form:form modelAttribute="result" class="form-horizontal">
				<fieldset>
					<div class="col-sm-4">
						<label class="control-label col-lg-2">Podaj liczbe naturalna</label>
						<form:input path="value" type="text"></form:input>
					</div>
					<div class="col-sm-4">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Wyślij"/>
					</div>
				</fieldset>
			</form:form>
		</section>
		<section class="container">
			<form:form modelAttribute="result" method="GET" action="https://gturnquist-quoters.cfapps.io/api/${result.value}" class="form-horizontal">
				<fieldset>
					<div class="col-sm-4">
						<label class="control-label col-lg-2">Podaj liczbe naturalna</label>
						<form:input path="value" type="text"></form:input>
					</div>
					<div class="col-sm-4">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Wyślij"/>
					</div>
				</fieldset>
			</form:form>
		</section>
	</body>
</html>
