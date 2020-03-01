package br.com.roupex.viewHelper;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.roupex.dominio.Cidade;
import br.com.roupex.dominio.Endereco;
import br.com.roupex.dominio.EntidadeDominio;
import br.com.roupex.dominio.Estado;
import br.com.roupex.dominio.Pais;
import br.com.roupex.dominio.Resultado;
import br.com.roupex.dominio.TipoLogradouro;
import br.com.roupex.dominio.TipoResidencia;

public class EnderecoVH implements IViewHelper{

	@Override
	public EntidadeDominio getEntidade(HttpServletRequest request) {
		Endereco endereco = criarEndereco(request);
		
		return endereco;
	}


	@Override
	public void setView(Resultado resultado, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		RequestDispatcher d = null;
		String operacao = request.getParameter("operacao");
		
		if(resultado.getMensagem() != null && !resultado.getMensagem().trim().equals("")) {
			request.setAttribute("ResultadoEndereco", resultado);
			d = request.getRequestDispatcher("endereco.jsp");
			d.forward(request, response);
		}else if(operacao.equalsIgnoreCase("salvar")) {
			resultado.setMensagem("Salvo com Sucesso!");
			request.setAttribute("ResultadoEnderecoSalvar", resultado);
			response.sendRedirect("enderecosCliente.jsp");
		}else if(operacao.equalsIgnoreCase("consultar")) {
			resultado.setMensagem("Consulta realizada com Sucesso!");
			request.setAttribute("ResultadoEnderecoConsultar", resultado);
			d = request.getRequestDispatcher("endereco.jsp");
			d.forward(request, response);
		}else if(operacao.equalsIgnoreCase("alterar")) {
			resultado.setMensagem("Alterado com Sucesso!");
			request.setAttribute("ResultadoEnderecoAlterar", resultado);
			d = request.getRequestDispatcher("enderecosCliente.jsp");
			response.sendRedirect("enderecosCliente.jsp");
		}else if(operacao.equalsIgnoreCase("excluir")) {
			resultado.setMensagem("Excluido com Sucesso!");
			request.setAttribute("ResultadoEnderecoExcluir", resultado);
			d = request.getRequestDispatcher("enderecosCliente.jsp");
			d.forward(request, response);
		}
		
	}

	private Endereco criarEndereco(HttpServletRequest request) {
		Endereco endereco = new Endereco();
		Cidade cid = new Cidade();
		Estado est = new Estado();
		Pais ps = new Pais();
		
		
		String id = request.getParameter("txtID");
		String habilitado = request.getParameter("txtHabilitado");
		String tpResidencia = request.getParameter("cbTipoResidencia");
		String tpLogradouro = request.getParameter("cbTipoLogradouro");
		String logradouro = request.getParameter("txtLogradouro");
		String cep = request.getParameter("txtCep");
		String numero = request.getParameter("txtNumero");
		String bairro = request.getParameter("txtBairro");
		String cidade = request.getParameter("txtCidade");
		String estado = request.getParameter("txtEstado");
		String pais = request.getParameter("txtPais");
		String complemento = request.getParameter("txtObservacao");
		String principal = request.getParameter("txtPrincipal");
		
		if(id != null) {
			endereco.setId(Long.parseLong(id));
		}
		
		if(habilitado != null) {
			endereco.setHabilitado(Boolean.parseBoolean(habilitado));
		}else {
			if(principal.equalsIgnoreCase("sim")) {
				endereco.setHabilitado(true);
			}else {
				endereco.setHabilitado(false);
			}
		}
		
		if(tpResidencia != null) {
			endereco.setTipoResidencia(TipoResidencia.valueOf(tpResidencia));
		}
		
		if(tpLogradouro != null) {
			endereco.setTipoLogradouro(TipoLogradouro.valueOf(tpLogradouro));
		}
		
		if(logradouro != null) {
			endereco.setLogradouro(logradouro);
		}
		
		if(cep != null) {
			endereco.setCep(cep);
		}
		
		if(numero != null) {
			endereco.setNumero(numero);
		}
		
		if(bairro != null) {
			endereco.setBairro(bairro);
		}
		
		if(pais != null) {
			ps.setDescricao(pais);
		}
		
		if(estado != null) {
			est.setDescricao(estado);
			est.setPais(ps);
		}
		
		if(cidade != null) {
			cid.setDescricao(cidade);
			cid.setEstado(est);
		}
		
		if(complemento != null) {
			endereco.setObservacao(complemento);
		}
		
		return endereco;
		
	}
}
