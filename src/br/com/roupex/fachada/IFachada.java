package br.com.roupex.fachada;

import br.com.roupex.dominio.EntidadeDominio;
import br.com.roupex.dominio.Resultado;

public interface IFachada {

	public Resultado salvar(EntidadeDominio entidade, String operacao);
	public Resultado alterar(EntidadeDominio entidade, String operacao);
	public Resultado excluir(EntidadeDominio entidade, String operacao);
	public Resultado consultar(EntidadeDominio entidade, String operacao);
	
}
