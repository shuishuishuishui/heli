package app.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.user.UserInfo;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String flag = request.getParameter("flag");
		if (flag.equals("addUser")) {
			try {
				String userId = request.getParameter("userId");
				String nom = request.getParameter("nom");
				String prenom = request.getParameter("prenom");
				String email = request.getParameter("mail");
				String groupe = request.getParameter("group");
				String password = request.getParameter("password");
				
//				String datenaissance = request.getParameter("ddn");
				String statut = request.getParameter("statut");

				UserInfo usi = new UserInfo();
				if (usi.addUser(userId, statut, prenom, password, nom, email, groupe)) {
					request.getRequestDispatcher("pages/information/AddSuccess.jsp").forward(request, response);
				} else {
					// ²»³É¹¦
					request.getRequestDispatcher("pages/information/AddFail.jsp").forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (flag.equals("updateUser")) {
			try {
				String userId = request.getParameter("userId");
				String nom = request.getParameter("nom");
				String prenom = request.getParameter("prenom");
				String email = request.getParameter("mail");
				String groupe = request.getParameter("group");
				String password = request.getParameter("password");
				//String datenaissance = request.getParameter("ddn");
				String statut = request.getParameter("statut");

				UserInfo usi = new UserInfo();

				if (usi.updateUser(userId, statut, nom, password, prenom, email, groupe)) {
					request.getRequestDispatcher("pages/information/UpdateSuccess.jsp").forward(request, response);
				} else {
					request.getRequestDispatcher("pages/information/UpdateFail.jsp").forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (flag.equals("delUser")) {
			try {
				String userId = request.getParameter("userId");
				UserInfo usi = new UserInfo();

				if (usi.delUserById(userId)) {
					request.getRequestDispatcher("pages/information/DeletSuccess.jsp").forward(request, response);
				} else {
					request.getRequestDispatcher("pages/information/DeletFail.jsp").forward(request, response);

				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
