<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Produtos</title>
</head>
<body>
<form method="post" action="/casadocodigo/produtos">
	<div>
		<label for="title">Título</label>
		<input type="text" name="title" id="title"/>
	</div>
	<div>
		<label for="description">Descrição</label>
		<textarea rows="10" cols="20" name="description" id="description">
		</textarea>
	</div>
	<div>
		<label for="pages">Número de Páginas</label>
		<input type="number" name="pages" id="pages"/>
	</div>
	<div>
		<c:forEach items="${types}" var="bookType" varStatus="status">
			<div>
				<label for="preco_${bookType}">${bookType}</label>
				<input type="text" name="prices[${status.index}].value" id="preco_${bookType}"/>
				<input type="hidden" name="prices[${status.index}].bookType" value="${bookType}"/>
			</div>
		</c:forEach>
	</div>
	<div>
		<input type="submit" value="Cadastrar"/>
	</div>
</form>
</body>
</html>