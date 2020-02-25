package br.com.roupex.dominio;

public class Cartao extends EntidadeDominio{

	private String numeroCartao;
	private String nomeImpresso;
	private String codigoSeguranca;
	private Bandeira bandeira;
	
	public String getNumeroCartao() {
		return numeroCartao;
	}
	public void setNumeroCartao(String numeroCartao) {
		this.numeroCartao = numeroCartao;
	}
	public String getNomeImpresso() {
		return nomeImpresso;
	}
	public void setNomeImpresso(String nomeImpresso) {
		this.nomeImpresso = nomeImpresso;
	}
	public String getCodigoSeguranca() {
		return codigoSeguranca;
	}
	public void setCodigoSeguranca(String codigoSeguranca) {
		this.codigoSeguranca = codigoSeguranca;
	}
	public Bandeira getBandeira() {
		return bandeira;
	}
	public void setBandeira(Bandeira bandeira) {
		this.bandeira = bandeira;
	}
	
	
	
}
