<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Novo usuário</title>
</head>
<body>
	<form action="NovoUsuarioServlet" method="post">
		<label for="nome">Nome:</label> <input type="text" id="nome" name="nome" size="30" placeholder="Fulano de Tal">
		<label for="senha">Senha:</label>
		<input type="password" id="senha" name="senha" value="" size="20">
		<label for ="email">E-mail:</label>
		<input type="email" id="email" name="email" value="" placeholder="a@.">
		<label for="telefone">Telefone:</label>
		<input type="text" id="telefone" name="telefone" value="" placeholder="11912345678">
		<input type="hidden" name="dataCadastro">
		<input type="submit" name="btnEnviar">
	</form>
</body>
</html>