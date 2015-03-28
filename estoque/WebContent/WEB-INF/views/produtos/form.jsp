<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Produtos</title>
</head>
<body>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form action="/estoque/produtos/salvar" method="post">
	Descricao: <input type="text" name="descricao" value="${produto.descricao}"/> <form:errors path="produto.descricao"/><br/>
	Quantidade: <input type="text" name="quantidade" value="${produto.quantidade}"/> <form:errors path="produto.quantidade"/><br/>
	<input type="submit" value="Cadastrar">
</form>

</body>
</html>