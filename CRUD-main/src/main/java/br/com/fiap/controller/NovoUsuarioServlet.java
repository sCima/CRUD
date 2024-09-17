package br.com.fiap.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.model.Usuario;
import br.com.fiap.repository.Database;


@WebServlet("/NovoUsuarioServlet")
public class NovoUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		
		Usuario usuario = new Usuario(nome, email, telefone, senha);
		
		Database.adiciona(usuario);
		
		request.setAttribute("usuario", usuario);
		response.sendRedirect("listaUsuarios");
	}

}
