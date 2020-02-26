package br.com.roupex.command;

import br.com.roupex.dominio.EntidadeDominio;
import br.com.roupex.dominio.Resultado;

public class ExcluirCommand extends AbstractCommand {

	@Override
	public Resultado executar(EntidadeDominio entidade) {
		return fachada.excluir(entidade);
	}

	
	
}
