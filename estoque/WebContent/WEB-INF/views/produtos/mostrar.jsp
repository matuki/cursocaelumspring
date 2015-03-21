<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Detalhes do Produto</title>
</head>
<body>
Id: <input value="${produto.id}" disabled="disabled"/><br/>
Descricao: <input value="${produto.descricao}" disabled="disabled"/><br/>
Quantidade : <input value="${produto.quantidade}" disabled="disabled"/>
</body>
</html>