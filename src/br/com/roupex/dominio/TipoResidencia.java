package br.com.roupex.dominio;

public enum TipoResidencia {

	APARTAMENTO(1),
	CASA(2),
	COMERCIAL(3),
	OUTRO(4);
	
	private int valor;
	
	TipoResidencia(int valor){
		this.valor = valor;
	}
	
	public int getValor() {
		return this.valor;
	}
	
	public static TipoResidencia getByName(int valor) {
		switch(valor) {
		case 1:
			return APARTAMENTO;
		case 2:
			return CASA;
		case 3:
			return COMERCIAL;
		case 4:
			return OUTRO;
		default:
			return null;
		}
			
	}
}
