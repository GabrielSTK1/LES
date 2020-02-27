package br.com.roupex.command;

import br.com.roupex.dominio.EntidadeDominio;
import br.com.roupex.dominio.Resultado;

public interface ICommand {

	public Resultado executar(EntidadeDominio entidade, String operacao);
	
}
