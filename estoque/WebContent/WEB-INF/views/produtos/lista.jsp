<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Produtos</title>
</head>
<body>
	<h2>Usuário: <sec:authentication property="principal.username"/></h2>
	<c:forEach items="${produtoList}" var="produto">
	${produto.descricao} - ${produto.quantidade} - 
	<a href="/estoque/produtos/mostrar/${produto.id}">detalhes</a><br/>
	- <a href="/estoque/produtos/editar?id=${produto.id}">editar</a> <br/>
	- <a href="/estoque/produtos/remover_pergunta?id=${produto.id}">remover</a> <br/>
	</c:forEach>
	
	<h3><a href="/estoque/logout">Sair</a></h3>
</body>
</html>