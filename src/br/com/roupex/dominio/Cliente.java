package br.com.roupex.dominio;

import java.time.LocalDate;
import java.util.List;

public class Cliente extends Usuario{
	
	private String genero;
	private LocalDate dtNascimento;
	private String cpf;
	private String telefone;
	private int raking;
	private List<Endereco> enderecos;
	private List<Cartao> cartoes;
	
	
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public LocalDate getDtNascimento() {
		return dtNascimento;
	}
	public void setDtNascimento(LocalDate dtNascimento) {
		this.dtNascimento = dtNascimento;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public int getRaking() {
		return raking;
	}
	public void setRaking(int raking) {
		this.raking = raking;
	}
	public List<Endereco> getEnderecos() {
		return enderecos;
	}
	public void setEnderecos(List<Endereco> enderecos) {
		this.enderecos = enderecos;
	}
	public List<Cartao> getCartoes() {
		return cartoes;
	}
	public void setCartoes(List<Cartao> cartoes) {
		this.cartoes = cartoes;
	}
	

}
