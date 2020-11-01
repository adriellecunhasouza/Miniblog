package q07;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void service (HttpServletRequest request, HttpServletResponse response) throws
	ServletException, IOException {
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		
		Usuario blogMsg = new Usuario();
		blogMsg.setNome(nome);
		blogMsg.setSenha(senha);
		
		HttpSession session=request.getSession();  
        session.setAttribute("name",nome);
		request.getRequestDispatcher("blog.jsp").forward(request, response);
	}
}
