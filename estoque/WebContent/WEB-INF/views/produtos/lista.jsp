<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Produtos</title>
</head>
<body>
	<c:forEach items="${produtoList}" var="produto">
	${produto.descricao} - ${produto.quantidade} - 
	<a href="/estoque/produtos/mostrar/${produto.id}">detalhes</a><br/>
	</c:forEach>
</body>
</html>