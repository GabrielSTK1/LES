package br.com.roupex.dominio;

public enum TipoLogradouro {
	
	AVENIDA(1),
	RUA(2),
	TRAVESSA(3),
	OUTRO(4);
	
private int valor;
	
	TipoLogradouro(int valor){
		this.valor = valor;
	}
	
	public int getValor() {
		return this.valor;
	}
	
	public static TipoLogradouro getByName(int valor) {
		switch(valor) {
		case 1:
			return AVENIDA;
		case 2:
			return RUA;
		case 3:
			return TRAVESSA;
		case 4:
			return OUTRO;
		default:
			return null;
		}
			
	}

}
