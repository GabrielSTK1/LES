package br.com.roupex.dao.filtro;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import br.com.roupex.dominio.Cliente;
import br.com.roupex.dominio.EntidadeDominio;

public class FiltroCliente implements IFiltro{

	@Override
	public String gerarQuerry(EntidadeDominio entidade) {
		Cliente cliente = (Cliente)entidade;
		List<Integer> qtdCampos = new ArrayList<Integer>();
		Map<Integer, String> campos = new HashMap<Integer, String>();
		boolean flgWhere = false;
		
		String sql = "SELECT * FROM roupex.clientes JOIN roupex.usuarios ON usu_id = cli_usuario";
		
		if(cliente != null) {
			
			if(cliente.getId() != null) {
				if(!flgWhere) {
					sql += " WHERE ";
					flgWhere = true;
				}
				campos.put(0, "cli_id = " + cliente.getId());
				qtdCampos.add(0);
			}
			
			if(cliente.getHabilitado() != null) {
				if(!flgWhere) {
					sql += " WHERE ";
					flgWhere = true;
				}
				campos.put(1, "usu_habilitado = " + cliente.getHabilitado());
				qtdCampos.add(1);
			}
			
			if(cliente.getDtNascimento() != null) {
				if(!flgWhere) {
					sql += " WHERE ";
					flgWhere = true;
				}
				campos.put(2, "usu_dt_criacao = " + cliente.getDataCriacao());
				qtdCampos.add(2);
			}
			
			if(cliente.getNome() != null) {
				if(!flgWhere) {
					sql += " WHERE ";
					flgWhere = true;
				}
				campos.put(3, "usu_nome = " + cliente.getNome());
				qtdCampos.add(3);
			}
			
			if(cliente.getEmail() != null) {
				if(!flgWhere) {
					sql += " WHERE ";
					flgWhere = true;
				}
				campos.put(4, "usu_email = " + cliente.getEmail());
				qtdCampos.add(4);
			}
			
			if(cliente.getSenha() != null) {
				if(!flgWhere) {
					sql += " WHERE ";
					flgWhere = true;
				}
				campos.put(5, "usu_senha = " + cliente.getSenha());
				qtdCampos.add(5);
			}
			
			if(cliente.getGenero() != null) {
				if(!flgWhere) {
					sql += " WHERE ";
					flgWhere = true;
				}
				campos.put(6, "cli_genero = " + cliente.getGenero());
				qtdCampos.add(6);
			}
			
			if(cliente.getDtNascimento() != null) {
				if(!flgWhere) {
					sql += " WHERE ";
					flgWhere = true;
				}
				campos.put(7, "cli_dt_nascimento = " + cliente.getDtNascimento());
				qtdCampos.add(7);
			}
			
			if(cliente.getCpf() != null) {
				if(!flgWhere) {
					sql += " WHERE ";
					flgWhere = true;
				}
				campos.put(8, "cli_cpf = " + cliente.getCpf());
				qtdCampos.add(8);
			}
			
			if(cliente.getRaking() > 0) {
				if(!flgWhere) {
					sql += " WHERE ";
					flgWhere = true;
				}
				campos.put(9,"cli_ranking = " + cliente.getRaking());
				qtdCampos.add(9);
			}
			
			if(cliente.getTelefone() != null) {
				if(!flgWhere) {
					sql += " WHERE ";
					flgWhere = true;
				}
				campos.put(10, "cli_telefone = " + cliente.getTelefone());
				qtdCampos.add(10);
			}
			
		}//Chave FInal
		
		for(Integer I : qtdCampos) {
			if(I != qtdCampos.get(0)) {
				sql += " AND ";
			}
			sql += campos.get(I);
		}
		
		
		return sql;
		
	}

}
