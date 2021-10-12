package gerenciador;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/alteraEmpresa")
public class AlteraEmpresaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      System.out.println("Alterando empresa");

	        String nomeEmpresa = request.getParameter("nome");
	        String paramData = request.getParameter("data");
	        String paramId = request.getParameter("id");
	        Integer id = Integer.valueOf(paramId);

	        Date dataAbertura = null;
	        try {
	            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
				dataAbertura = sdf.parse(paramData);
			} catch (ParseException e) {
				throw new ServletException(e);
			}
	        
	        Banco banco = new Banco();
	        Empresa empresa = banco.buscaEmpresa(id);
	        empresa.setNome(nomeEmpresa);
	        empresa.setDataAbertura(dataAbertura);
	
	       response.sendRedirect("listaEmpresas");
	}

}
