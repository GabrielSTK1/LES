package br.com.roupex.fachada;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import br.com.roupex.dao.ClienteDAO;
import br.com.roupex.dao.IDAO;
import br.com.roupex.dominio.Cliente;
import br.com.roupex.dominio.EntidadeDominio;
import br.com.roupex.dominio.Resultado;
import br.com.roupex.strategy.IStrategy;
import br.com.roupex.strategy.ValidarCPF;
import br.com.roupex.strategy.ValidarSenha;

public class Fachada implements IFachada{
	
	private Map<String, IDAO> daos;
	private Map<String, List<IStrategy>> strategies;
	private StringBuilder sb = new StringBuilder();
	Resultado resultado;

	IDAO dao = null;
	String nomeClasse = null;
	List<IStrategy> strategy = null;
	
	public Fachada() {
		daos = new HashMap<String, IDAO>();
		strategies = new HashMap<String, List<IStrategy>>();
		
		IStrategy validarCpf = new ValidarCPF();
		IStrategy validarSenha = new ValidarSenha();
		
		//Cliente
		daos.put(Cliente.class.getName(), new ClienteDAO());
		
		List<IStrategy> clienteRns = new ArrayList<IStrategy>();
		clienteRns.add(validarSenha);
		clienteRns.add(validarCpf);
	}

	@Override
	public Resultado salvar(EntidadeDominio entidade, String operacao) {
		resultado = new Resultado();
		nomeClasse = entidade.getClass().getName();
		strategy = strategies.get(nomeClasse);
		sb.setLength(0);
		
		executarMensagem(strategy, entidade, operacao);
		
		if(sb.length() == 0 || sb.toString().trim().equalsIgnoreCase("")) {
			try {
				dao = daos.get(nomeClasse);
				dao.cadastrar(entidade);
				resultado.adicionarEntidades(entidade);
			}catch (Exception e) {
				e.printStackTrace();
				resultado.setMensagem("Não foi possível realizar o cadastro! Tente Novamente");
			}
		}else {
			resultado.adicionarEntidades(entidade);
			resultado.setMensagem(sb.toString());
		}
		
		return resultado;
	}


	@Override
	public Resultado alterar(EntidadeDominio entidade, String operacao) {
		resultado = new Resultado();
		sb.setLength(0);
		
		nomeClasse = entidade.getClass().getName();
		strategy = strategies.get(nomeClasse);
		executarMensagem(strategy, entidade, operacao);
		
		if(sb.toString().trim().equalsIgnoreCase("")) {
			try {
				dao = daos.get(nomeClasse);
				dao.alterar(entidade);
				resultado.adicionarEntidades(entidade);
			}catch (Exception e) {
				e.printStackTrace();
				resultado.setMensagem(sb.toString());
			}
		}
		
		return resultado;
	}

	@Override
	public Resultado excluir(EntidadeDominio entidade, String operacao) {
		resultado = new Resultado();
		nomeClasse = entidade.getClass().getName();
		dao = daos.get(nomeClasse);
		
		try {
			dao.remover(entidade);
			resultado.adicionarEntidades(entidade);
		}catch(Exception e) {
			e.printStackTrace();
			resultado.setMensagem("Não foi possível realizar a ação! Tente Novamente");
		}
		
		return resultado;
	}

	@Override
	public Resultado consultar(EntidadeDominio entidade, String operacao) {
		resultado = new Resultado();
		sb.setLength(0);
		nomeClasse = entidade.getClass().getName();
		dao = daos.get(nomeClasse);
		
		try {
			resultado.setEntidades(dao.listar(entidade));
		}catch(Exception e) {
			e.printStackTrace();
			resultado.setMensagem("Não foi possível realizar a ação! Tente Novamente");
		}
		
		return resultado;
	}

	private void executarMensagem(List<IStrategy> rngEntidade, EntidadeDominio entidade, String operacao) {
		String msg = "";
		
		if(operacao.equalsIgnoreCase("ALTERAR")) {
			
		}else {
			for(IStrategy strategy : rngEntidade) {
				msg = strategy.processar(entidade);
				
				if(msg != null) {
					sb.append(msg);
				}
			}
		}
		
		
		
	}
}
