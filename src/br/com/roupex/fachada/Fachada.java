package br.com.roupex.fachada;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import br.com.roupex.dao.IDAO;
import br.com.roupex.dominio.EntidadeDominio;
import br.com.roupex.dominio.Resultado;
import br.com.roupex.strategy.IStrategy;

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
	}

	@Override
	public Resultado salvar(EntidadeDominio entidade) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Resultado alterar(EntidadeDominio entidade) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Resultado excluir(EntidadeDominio entidade) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Resultado consultar(EntidadeDominio entidade) {
		// TODO Auto-generated method stub
		return null;
	}

}
