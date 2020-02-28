package br.com.roupex.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import br.com.roupex.dao.filtro.FiltroCliente;
import br.com.roupex.dominio.Cartao;
import br.com.roupex.dominio.Cliente;
import br.com.roupex.dominio.Endereco;
import br.com.roupex.dominio.EntidadeDominio;
import br.com.roupex.util.Conexao;

public class ClienteDAO implements IDAO{
	Connection connection = null;
	PreparedStatement pst = null;
	
	
	@Override
	public void cadastrar(EntidadeDominio entidade) {
		Cliente cliente = (Cliente)entidade;
		
		try {
			connection = Conexao.getConnection();
			connection.setAutoCommit(false);
			
			StringBuilder sqlUsu = new StringBuilder();
			
			//Salvar Usuario e Retornar ID
			sqlUsu.append("INSERT INTO roupex.usuarios(usu_dt_criacao, usu_habilitado, usu_nome, usu_email, usu_senha) VALUE (?,?,?,?,?);");
			pst = connection.prepareStatement(sqlUsu.toString(),Statement.RETURN_GENERATED_KEYS);
			
			pst.setString(1, LocalDateTime.now().toString());
			pst.setBoolean(2, true);
			pst.setString(3, cliente.getNome());
			pst.setString(4, cliente.getEmail());
			pst.setString(5, cliente.getSenha());
			
			pst.executeUpdate();
			
			ResultSet rs = pst.getGeneratedKeys();
			
			int usuID = 0;
			
			if(rs.next()) {
				usuID = rs.getInt(1);
			}
			
			connection.commit();
			
			connection.setAutoCommit(false);
			
			//Salvar Cliente usando ID retornado
			StringBuilder sql = new StringBuilder();
			sql.append("INSERT INTO roupex.clientes (cli_genero, cli_dt_nascimento, cli_cpf, cli_telefone, cli_ranking, cli_usuario) VALUES (?,?,?,?,?,?);");
			
			pst = connection.prepareStatement(sql.toString(), Statement.RETURN_GENERATED_KEYS);
			
			pst.setString(1, cliente.getGenero());
			
			Date data = Date.valueOf(cliente.getDtNascimento());
			pst.setDate(2, data);
			pst.setString(3, cliente.getCpf());
			pst.setString(4, cliente.getTelefone());
			pst.setInt(5, cliente.getRaking());
			pst.setInt(6, usuID);
			
			pst.executeUpdate();
			
			connection.commit();
			
		}catch(Exception e) {
			try {
				connection.rollback();
			}catch(SQLException ee) {
				ee.printStackTrace();
			}
			e.printStackTrace();
		}finally {
			try {
				Conexao.fechar(connection);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	}

	@Override
	public void remover(EntidadeDominio entidade) {
		Cliente cliente = (Cliente)entidade;
		
		try {
			connection = Conexao.getConnection();
			connection.setAutoCommit(false);
			
			String sql = "UPDATE roupex.clientes JOIN roupex.usuarios ON cli_usuario = usu_id SET usu_habilitado = ? WHERE cli_id = ?";
			
			pst = connection.prepareStatement(sql);
			pst.setBoolean(1, false);
			pst.setLong(2, cliente.getId());
			
			pst.executeUpdate();
			connection.commit();
			
		} catch (Exception e) {
			try {
				connection.rollback();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
			e.printStackTrace();
		}finally {
			try {
				pst.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
	}

	@Override
	public void alterar(EntidadeDominio entidade) {
		Cliente cliente = (Cliente)entidade;
		
		try {
			connection = Conexao.getConnection();
			connection.setAutoCommit(false);
			String sql = "UPDATE clientes INNER JOIN usuarios ON usu_nome = ?, usu_email = ?, usu_senha = ?, cli_genero = ?, cli_dt_nascimento = ?, cli_cpf = ?, cli_telefone = ?, cli_ranking = ? WHERE cli_id = ?";
			 pst = connection.prepareStatement(sql);
			 
			 pst.setString(1, cliente.getNome());
			 pst.setString(2, cliente.getEmail());
			 pst.setString(3, cliente.getSenha());
			 pst.setString(4, cliente.getGenero());
			 
			 Date data = Date.valueOf(cliente.getDtNascimento());
			 pst.setDate(5, data);
			 
			 pst.setString(6, cliente.getCpf());
			 pst.setString(7, cliente.getTelefone());
			 pst.setInt(8, cliente.getRaking());
			 pst.setLong(9, cliente.getId());
			 
			 pst.executeUpdate();
			 
			 connection.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pst != null) {
					pst.close();
				}
				if(connection != null) {
					connection.close();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		
	}

	@Override
	public List<EntidadeDominio> listar(EntidadeDominio entidade) {
		Cliente cliente = (Cliente)entidade;
		
		List<EntidadeDominio> clientes = null;
		FiltroCliente filtro = new FiltroCliente();
		String sql = filtro.gerarQuerry(cliente);
		
		try {
			connection = Conexao.getConnection();
			clientes = new ArrayList<EntidadeDominio>();
			
			pst = connection.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				Cliente cli = new Cliente();
				Endereco end = new Endereco();
				Cartao crt = new Cartao();
				
				cli.setId(rs.getLong("usu_id"));
				cli.setDataCriacao(rs.getDate("usu_dt_criacao").toLocalDate());
				cli.setHabilitado(rs.getBoolean("usu_habilitado"));
				cli.setNome(rs.getString("usu_nome"));
				cli.setEmail(rs.getString("usu_email"));
				cli.setSenha(rs.getString("usu_senha"));
				cli.setGenero(rs.getString("cli_genero"));
				cli.setDtNascimento(rs.getDate("cli_dt_nascimento").toLocalDate());
				cli.setCpf(rs.getString("cli_cpf"));
				cli.setTelefone(rs.getString("cli_telefone"));
				cli.setRaking(rs.getInt("cli_ranking"));
				
				clientes.add(cli);
			}
			
			return clientes;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pst != null) {
					pst.close();
				}
				if(connection != null) {
					connection.close();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		return null;
	}

}
