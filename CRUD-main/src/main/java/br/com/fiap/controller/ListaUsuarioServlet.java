package br.com.fiap.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.repository.Database;


@WebServlet("/listaUsuarios")
public class ListaUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("usuarios", Database.getUsuarios());
		RequestDispatcher rd = request.getRequestDispatcher("/listaUsuarios.jsp");
		rd.forward(request, response);
	}
}
