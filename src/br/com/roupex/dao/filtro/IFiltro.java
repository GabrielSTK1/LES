package br.com.roupex.dao.filtro;

import br.com.roupex.dominio.EntidadeDominio;

public interface IFiltro {

	public String gerarQuerry(EntidadeDominio entidade);
}
