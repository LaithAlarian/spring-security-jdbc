<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>

<head>

<title>Spring Home</title>
</head>

<body>
	<h2>luv2code Company Home page - Yoohoo !!!!!!!</h2>
	<hr>
	<b>Welcome to the home page </b>
	<br>
	<p>
		User:
		<security:authentication property="principal.username" />
		<br> <br> Role (s):
		<security:authentication property="principal.authorities" />
	</p>
	<hr>


	<security:authorize access="hasRole('MANAGER')">
		<!-- Add a link to point to /leaders ... this is for the managers -->
		<a href="${pageContext.request.contextPath}/leaders">LeaderShep
			Meeting</a>
		( Only for Manager peeps)
		
		
		<br>
	</security:authorize>

	<security:authorize access="hasRole('ADMIN')">
		<!-- Add a link to point to /leaders ... this is for the managers -->
		<a href="${pageContext.request.contextPath}/systems">AdminShep</a> (
	Only for Admin peeps).
	<hr>
	</security:authorize>

	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">

		<input type="submit" value="Logout" />

	</form:form>
</body>
</html>