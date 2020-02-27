package br.com.roupex.strategy;

import br.com.roupex.dominio.Cliente;
import br.com.roupex.dominio.EntidadeDominio;

public class ValidarSenha implements IStrategy{
	
	StringBuilder sb = null;
	
	@Override
	public String processar(EntidadeDominio entidade) {
		sb = new StringBuilder();

		Cliente cliente = (Cliente) entidade;
		
		int numeroMaiuscula = 0;
		int numeroMinuscula = 0;
		int numeroDigitos = 0;
		int numeroSimbolos = 0;
		
		for(int i = 0; i < cliente.getSenha().length();i++) {
			if(Character.isUpperCase(cliente.getSenha().charAt(i))) {
				numeroMaiuscula++;
			}else if(Character.isLowerCase(cliente.getSenha().charAt(i))) {
				numeroMinuscula++;
			}else if(Character.isDigit(cliente.getSenha().charAt(i))) {
				numeroDigitos++;
			}else {
				numeroSimbolos++;
			}
		}
		
		if (cliente.getSenha().length() < 8) {
			sb.append("*TAMANHO DE SENHA INVALIDO!");
		}

		if (numeroMaiuscula == 0 || numeroMinuscula == 0 || numeroDigitos == 0 || numeroSimbolos == 0 ) {
			sb.append("*SENHA NO FORMATO INCORRETO!");
		}

		return sb.toString();

	}

}
