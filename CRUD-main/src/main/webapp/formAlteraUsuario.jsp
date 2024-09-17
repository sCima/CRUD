<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Altera usuário</title>
</head>
<body>

	<c:forEach items="${usuarios}" var="usuario">
		<form action="AlteraUsuarioServlet" method="post">
			<label for="nome">Nome:</label> <input type="text" id="nome"
				name="nome" size="30" placeholder="Fulano de Tal"
				value="${usuario.nome}"> <label for="senha">Senha:</label> <input
				type="password" id="senha" name="senha" value="" size="20">
			<label for="email">E-mail:</label> <input type="email" id="email"
				name="email" value="" placeholder="teste@example.com"> <label
				for="telefone">Telefone:</label> <input type="text" id="telefone"
				name="telefone" value="" placeholder="11912345678"> <input
				type="hidden" name="dataCadastro"> <input type="submit"
				name="btnEnviar">
		</form>

		<li>${usuario.nome}/ <fmt:formatDate
				value="${usuario.dataCadastro}" /> <a
			href="/CRUD/removeUsuario?id=${usuario.id}">Remover</a> <a
			href="/CRUD/mostraUsuario?id=${usuario.id}">Editar</a>
		</li>
	</c:forEach>

</body>
</html>