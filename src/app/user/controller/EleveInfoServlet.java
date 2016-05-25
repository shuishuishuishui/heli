package app.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.user.EleveInfo;
import app.user.UserBean;


/**
 * Servlet implementation class EleveInfoServlet
 */
@WebServlet("/EleveInfoServlet")
public class EleveInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EleveInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		
		/*if(flag.equals("profil")){
			try {
				String userId = request.getParameter("userId");
				String nom = request.getParameter("nom");
				String prenom = request.getParameter("prenom");
				String email = request.getParameter("mail");
				String groupe = request.getParameter("group");
				String statut = request.getParameter("statut");
				String tuteur = request.getParameter("tuteur");
				
				EleveInfo elf = new EleveInfo();

				if (elf.showEleveProfil()) {
					request.getRequestDispatcher("pages/PageEleveProfil.jsp").forward(request, response);
				} else {
					request.getRequestDispatcher("pages/PageEleve.jsp").forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}*/
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
