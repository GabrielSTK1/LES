package br.com.roupex.command;

import br.com.roupex.fachada.Fachada;
import br.com.roupex.fachada.IFachada;

public abstract class AbstractCommand implements ICommand {

	protected IFachada fachada = new Fachada();
	
}
