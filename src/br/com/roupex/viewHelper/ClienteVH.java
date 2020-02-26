package br.com.roupex.viewHelper;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.roupex.dominio.Cliente;
import br.com.roupex.dominio.EntidadeDominio;
import br.com.roupex.dominio.Resultado;

public class ClienteVH implements IViewHelper{

	@Override
	public EntidadeDominio getEntidade(HttpServletRequest request) {
		Cliente cliente = criaEntidade(request);
		
		
		return cliente;
	}

	@Override
	public void setView(Resultado resultado, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		RequestDispatcher d;
		String operacao = request.getParameter("operacao");
		
		if(resultado.getMensagem() != null && !resultado.getMensagem().trim().equalsIgnoreCase("")) {
			request.getSession().setAttribute("ResultadoCliente", resultado);
			d = request.getRequestDispatcher("index.jsp");
			d.forward(request, response);
		}
		
	}

	private Cliente criaEntidade(HttpServletRequest request) {
		Cliente cliente = new Cliente();
		
		//Parametros vindos do Front-End
		String id = request.getParameter("txtID");
		String habilitado = request.getParameter("txtHabilitado");
		String nome = request.getParameter("txtNome");
		String email = request.getParameter("txtEmail");
		String senha = request.getParameter("txtSenha");
		String genero = request.getParameter("txtSexo");
		String dataNascimento = request.getParameter("txtData");
		String cpf = request.getParameter("txtCpf");
		String telefone = request.getParameter("txtTelefone");
		
		//Setando atributos no objeto
		if(id != "") {
			cliente.setId(Long.parseLong(id));
		}
		
		if(habilitado != null) {
			cliente.setHabilitado(Boolean.parseBoolean(habilitado));
		}
		
		if(nome != null && !nome.trim().equalsIgnoreCase("") && !nome.isEmpty()) {
			cliente.setNome(nome);
		}
		
		if(email != null && !nome.trim().equalsIgnoreCase("") && !email.isEmpty()) {
			cliente.setEmail(email);
		}
		
		if(senha != null && !senha.trim().equalsIgnoreCase("") && !senha.isEmpty()) {
			cliente.setSenha(senha);
		}
		
		if(genero != null && !genero.trim().equalsIgnoreCase("") && !genero.isEmpty()) {
			cliente.setGenero(genero);
		}
		
		if(dataNascimento != null && !dataNascimento.trim().equalsIgnoreCase("") && !dataNascimento.isEmpty()) {
			cliente.setDtNascimento(LocalDate.parse(dataNascimento));
		}
		
		if(cpf != null && !cpf.trim().equalsIgnoreCase("") && !cpf.isEmpty()) {
			cliente.setCpf(cpf);
		}
		
		if(telefone != null && !telefone.trim().equalsIgnoreCase("") && !telefone.isEmpty()) {
			cliente.setTelefone(telefone);
		}
		
		return cliente;
	}
}
