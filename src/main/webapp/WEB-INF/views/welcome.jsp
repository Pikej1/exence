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
	<script type="text/javascript">
	function noNumbers(e)
	{
		var keynum;
		var keychar;
		var numcheck;
		
		if(window.event) // IE
		        {
		        keynum = e.keyCode;
		        }
		else if(e.which) // Netscape/Firefox/Opera
		        {
		        keynum = e.which;
		        }
		keychar = String.fromCharCode(keynum);
		
		//Enable Left / Up / Right / Down Arrow, Backspace, Delete keys
		if(keynum == 37 || keynum == 38 || keynum == 39 || keynum == 40 || keynum == 8 || keynum == 46) {
		     return;
		 }
		// \d is sign for numbers 0-9
		numcheck = /\d/;
		return numcheck.test(keychar);
	}
	</script>
	<script type="text/javascript">
	function enableBtn()
	{
		var input = document.getElementById("form")
	    var btn = document.getElementById("btnAdd");
	    if(input.value.length == 0){
	    	btn.disabled = true;
	    }else{
	    	btn.disabled = false;	
	    }
	}
	</script>
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Piotr Kwit - zadanie rekrutacyjne</h1>
				</div>
			</div>
		</section>
		<section class="container">
			<form:form modelAttribute="result" class="form-horizontal">
				<form:errors path="*" cssClass="alert alert-danger" element="div"/>
				<fieldset>
					<div class="col-sm-4">
						<label class="control-label">Podaj liczbe naturalna</label>
						<form:input id="form" path="value" type="text" onkeydown="return noNumbers(event)" onkeyup="enableBtn();"></form:input>
					</div>
					<div class="col-sm-4">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Wyślij" disabled/>
					</div>
				</fieldset>
			</form:form>
		</section>
		<section class="container">
			<form:form modelAttribute="result" method="GET" action="https://gturnquist-quoters.cfapps.io/api/${result.value}" class="form-horizontal">
				<fieldset>
					<div class="col-sm-4">
						<label class="control-label">Podaj liczbe naturalna</label>
						<form:input path="value" type="text"></form:input>
					</div>
					<div class="col-sm-4">
						<input type="submit" id="btnAdd1" class="btn btn-primary" value ="Wyślij"/>
					</div>
				</fieldset>
			</form:form>
		</section>
	</body>
</html>
