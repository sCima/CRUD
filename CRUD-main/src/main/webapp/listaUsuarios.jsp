<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista usuários</title>
</head>
<body>
	<ol>
		<c:forEach items="${usuarios}" var="usuario">
			<li>${usuario.nome} / <fmt:formatDate value="${usuario.dataCadastro}"/>
				<a href="/CRUD-main/removeUsuario?id=${usuario.id}">Remover</a>
				<a href="/CRUD-main/mostraUsuario?id=${usuario.id}">Editar</a>
			</li>
		</c:forEach>
	</ol>
</body>
</html>