package q07;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
//import java.sql.Date;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import javax.websocket.Session;

import q07.Post;

@WebServlet("/Blog")
public class Blog extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String mensagem = request.getParameter("mensagem");
		Date d = new Date();

		Post blogMsg = new Post();

		Vector<Post> listaMsg = (Vector) request.getSession().getAttribute("BEAN_LISTA");
		if (listaMsg == null)
			listaMsg = new Vector();

		HttpSession ses = request.getSession(false);
		if (ses != null) {
			blogMsg.setNome((String) ses.getAttribute("name"));
		}

		int y = listaMsg.size();
		blogMsg.setId(y);
		blogMsg.setMensagem(mensagem);
		blogMsg.setDataMensagem(d);
		blogMsg.setHoraMensagem(d);

		listaMsg.add(blogMsg);

		if (mensagem.trim().length() == 0) {
			request.getRequestDispatcher("blog.jsp?erro=Erro! Campo vazio").forward(request, response);
		} else {
			request.getSession().setAttribute("BEAN_LISTA", listaMsg);
			request.getRequestDispatcher("blog.jsp").forward(request, response);
		}

	}
}
