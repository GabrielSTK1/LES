package br.com.roupex.command;

import br.com.roupex.dominio.EntidadeDominio;
import br.com.roupex.dominio.Resultado;

public class ConsultarCommand extends AbstractCommand{

	@Override
	public Resultado executar(EntidadeDominio entidade, String operacao) {
		return fachada.consultar(entidade);
	}

}
