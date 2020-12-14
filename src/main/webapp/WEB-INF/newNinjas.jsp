<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<div class="p-3 mb-2 bg-light text-dark">
<div class = "container">
<h1>Create a Ninja</h1>
<form:form action = "/createNinja" method = "POST" modelAttribute = "ninja">

<div>
<p> First Name </p>
<form:label path ="firstName" > </form:label>
<form:errors path ="firstName" > </form:errors>
<form:input path ="firstName" /> 
</div>

<div>
<p> Last Name: </p>
<form:label path ="lastName" > </form:label>
<form:errors path ="lastName" > </form:errors>
<form:input path ="lastName" /> 
</div>

<div>
<p> Age </p>
<form:label path ="age" > </form:label>
<form:errors path ="age" > </form:errors>
<form:input path ="age" /> 
</div>

<div>
<p> Dojo </p>
<form:label path ="dojo" > </form:label>
<form:errors path ="dojo" > </form:errors>
<form:select path ="dojo" > 
<option value = ""  disabled selected>  </option>
<c:forEach items="${dojos}" var = "dojo"> 
	<form:option value = "${dojo }"> 
	<c:out value = "${dojo.name }"> </c:out>
	 </form:option>
</c:forEach>
</form:select> 
</div>

<br>
<br>

<input type = "submit" value = "Create a Dojo" class="btn btn-success" >



</form:form>
</div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>