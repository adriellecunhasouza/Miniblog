package q07;

import java.io.IOException;
//import java.sql.Date;
import java.util.Vector;


//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;


//import q07.Post;

@WebServlet("/ControleExcluiMensagem")
public class ControleExcluiMensagem extends javax.servlet.http.HttpServlet  {
	
	private static final long serialVersionUID = 1L;

	protected void service (HttpServletRequest request, HttpServletResponse response) throws
	ServletException, IOException {
		 String id = request.getParameter("id");
		 int id2 = Integer.parseInt(id);
		 Post blogMsg = new Post();
		 
		 Vector<Post> listaMsg = (Vector) request.getSession().getAttribute("BEAN_LISTA");		 
		 listaMsg.remove(id2);
		 request.getSession().setAttribute("BEAN_LISTA", listaMsg);
	     request.getRequestDispatcher("blog.jsp").forward(request, response);
	}
}
