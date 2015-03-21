<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Detalhes do Produto</title>
</head>
<body>
	Id:
	<input value="${produto.id}" disabled="disabled" />
	<br /> Descricao:
	<input value="${produto.descricao}" disabled="disabled" />
	<br /> Quantidade :
	<input value="${produto.quantidade}" disabled="disabled" /> produto

	<h2>Lista de Movimentações</h2>
	<ul>

		<c:forEach items="${produto.movimentacoes}" var="m">
			<li>${m.tipo} - ${m.quantidade} - <fmt:formatDate
					value="${m.data.time}" pattern="dd/MM/yyy - hh:mm" />
			</li>
		</c:forEach>
	</ul>


</body>
</html>