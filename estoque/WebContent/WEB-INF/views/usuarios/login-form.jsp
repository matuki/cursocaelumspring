<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<html>
<head>
<title>Login</title>
</head>

<body>

	<sec:authorize access="hasRole('ROLE_USER')">
		<h1>Você já está logado</h1>
	</sec:authorize>

	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<h1>Olá Admin</h1>
	</sec:authorize>


	<sec:authorize access="isAnonymous()">
		<form action="/estoque/login" method="post">
			Login : <input type="text" name="j_username" /><br /> Senha : <input
				type="password" name="j_password"><br /> <input
				type="submit" value="Login">
		</form>
	</sec:authorize>
</body>

</html>