package br.com.roupex.viewHelper;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.roupex.dominio.Bandeira;
import br.com.roupex.dominio.Cartao;
import br.com.roupex.dominio.EntidadeDominio;
import br.com.roupex.dominio.Resultado;

public class CartaoVH implements IViewHelper{

	@Override
	public EntidadeDominio getEntidade(HttpServletRequest request) {
		Cartao cartao = criarCartao(request);
		
		return cartao;
	}

	@Override
	public void setView(Resultado resultado, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		RequestDispatcher d = null;
		String operacao = request.getParameter("operacao");
		
		if(resultado.getMensagem() != null && !resultado.getMensagem().trim().equals("")) {
			request.setAttribute("ResultadoCartao", resultado);
			d = request.getRequestDispatcher("cartao.jsp");
			d.forward(request, response);
		}else if(operacao.equalsIgnoreCase("salvar")) {
			resultado.setMensagem("Salvo com Sucesso");
			request.setAttribute("ResultadoCartaoSalvo", resultado);
			response.sendRedirect("cartoesCliente.jsp");
		}else if(operacao.equalsIgnoreCase("consultar")) {
			resultado.setMensagem("Consultado com Sucesso");
			request.setAttribute("ResultadoCartaoConsultar", resultado);
			d = request.getRequestDispatcher("cartao.jsp");
			d.forward(request, response);
		}else if(operacao.equalsIgnoreCase("alterar")) {
			resultado.setMensagem("Alterado com Sucesso");
			request.setAttribute("ResultadoCartaoAlterar", resultado);
			d = request.getRequestDispatcher("cartoesCliente.jsp");
			d.forward(request, response);
		}else if(operacao.equalsIgnoreCase("excluir")) {
			resultado.setMensagem("Excluido com Sucesso");
			request.setAttribute("ResultadoCartaoExcluir", resultado);
			d = request.getRequestDispatcher("cartoesCliente.jsp");
			d.forward(request, response);
		}
		
	}

	private Cartao criarCartao(HttpServletRequest request) {
		Cartao cartao = new Cartao();
		Bandeira band = new Bandeira();
		
		String id = request.getParameter("txtID");
		String dataCriacao = request.getParameter("txtDataCriacao");
		String habilitado = request.getParameter("txtHabilitado");
		String numeroImpresso = request.getParameter("txtNumero");
		String nomeImpresso = request.getParameter("txtNome");
		String codigoSeguranca = request.getParameter("txtCodigo");
		String bandeira = request.getParameter("txtBandeira");
		String dataValidade = request.getParameter("txtData");
		
		if(id != null) {
			cartao.setId(Long.parseLong(id));
		}
		
		if(dataCriacao != null) {
			cartao.setDataCriacao(LocalDate.parse(dataCriacao));
		}
		
		if(habilitado != null) {
			cartao.setHabilitado(Boolean.parseBoolean(habilitado));
		}
		
		if(numeroImpresso != null) {
			cartao.setNumeroCartao(numeroImpresso);
		}
		
		if(nomeImpresso != null) {
			cartao.setNomeImpresso(nomeImpresso);
		}
		
		if(codigoSeguranca != null) {
			cartao.setCodigoSeguranca(codigoSeguranca);
		}
		
		if(bandeira != null) {
			band.setDescricao(bandeira);
			cartao.setBandeira(band);
		}
		
		if(dataValidade != null) {
			cartao.setDataValidade(dataValidade);
		}
		
		
		return cartao;
		
		
	}
}
