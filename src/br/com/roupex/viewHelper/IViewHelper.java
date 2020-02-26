package br.com.roupex.viewHelper;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.roupex.dominio.EntidadeDominio;
import br.com.roupex.dominio.Resultado;

public interface IViewHelper {

	public EntidadeDominio getEntidade(HttpServletRequest request);
	public void setView(Resultado resultado, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException;
}
