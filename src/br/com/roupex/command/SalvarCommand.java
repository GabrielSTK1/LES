package br.com.roupex.command;

import br.com.roupex.dominio.EntidadeDominio;
import br.com.roupex.dominio.Resultado;

public class SalvarCommand extends AbstractCommand {

	@Override
	public Resultado executar(EntidadeDominio entidade, String operacao) {
		
		System.out.println("ID COMMAND " + entidade.getId());
		
		return fachada.salvar(entidade);
		
	}
	
}
