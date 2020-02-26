package br.com.roupex.dao;

import java.util.List;

import br.com.roupex.dominio.EntidadeDominio;

public interface IDAO {

	public void cadastrar(EntidadeDominio entidade);
	public void remover(EntidadeDominio entidade);
	public void alterar(EntidadeDominio entidade);
	public List<EntidadeDominio> listar(EntidadeDominio entidade);
}
