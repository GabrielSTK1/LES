package br.com.roupex.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.roupex.command.AlterarCommand;
import br.com.roupex.command.ConsultarCommand;
import br.com.roupex.command.ExcluirCommand;
import br.com.roupex.command.ICommand;
import br.com.roupex.command.SalvarCommand;
import br.com.roupex.dominio.EntidadeDominio;
import br.com.roupex.dominio.Resultado;
import br.com.roupex.viewHelper.CartaoVH;
import br.com.roupex.viewHelper.ClienteVH;
import br.com.roupex.viewHelper.EnderecoVH;
import br.com.roupex.viewHelper.IViewHelper;

@WebServlet(urlPatterns = {"/ClienteController", "/EnderecoController", "/CartaoController"})
public class Controller extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private Map<String, ICommand> commands;
	private Map<String, IViewHelper> viewHelpers;
	
	public Controller() {
		commands = new HashMap<String, ICommand>();
		commands.put("SALVAR", new SalvarCommand());
		commands.put("EDITAR", new AlterarCommand());
		commands.put("CONSULTAR", new ConsultarCommand());
		commands.put("EXCLUIR", new ExcluirCommand());
		
		viewHelpers = new HashMap<String, IViewHelper>();
		viewHelpers.put("/ROUPEX/ClienteController", new ClienteVH());
		viewHelpers.put("/ROUPEX/CartaoController", new CartaoVH());
		viewHelpers.put("/ROUPEX/EnderecoController", new EnderecoVH());
	}
	
	protected void Processar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String uri = request.getRequestURI();
		String operacao = request.getParameter("operacao");
		
		IViewHelper viewHelper = viewHelpers.get(uri);
		
		EntidadeDominio entidade = viewHelper.getEntidade(request);
		
		ICommand command = commands.get(operacao);
		
		Resultado resultado = command.executar(entidade, operacao);
		
		viewHelper.setView(resultado, request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Processar(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Processar(req, resp);
	}

}
