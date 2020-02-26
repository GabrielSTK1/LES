package br.com.roupex.strategy;

import br.com.roupex.dominio.EntidadeDominio;

public interface IStrategy {

	public String processar(EntidadeDominio entidade);
}
