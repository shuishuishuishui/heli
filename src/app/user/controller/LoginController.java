package app.user.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.user.UserBean;
import app.user.UserInfo;

/**
 * Servlet implementation class UserInfoController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserInfo usfo = new UserInfo();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("nom");
		String password = request.getParameter("password");
		String statut = request.getParameter("statut");
		UserBean userInput = new UserBean(username, statut, password);
			String userid="";
			try {
				userid = usfo.getUserId(username);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		System.out.println(username +"+"+ password +"+"+ statut+"+" + userid);

		// 引包
		try {
			if (usfo.checkUser(userInput)) {
				request.setAttribute("user", userInput);
				request.setAttribute("userid", userid);

				/**
				 * Session,将用户名放入session，已备后用
				 */
				//request.getSession().setAttribute("nom", username);

				switch (statut) {
				case "responsable":
					//response.sendRedirect("pages/PagePrincipal.jsp");
					 request.getRequestDispatcher("pages/PagePrincipal.jsp").forward(request,
					 response);
					break;
				case "tuteur":
					 request.getRequestDispatcher("pages/PageTuteur.jsp").forward(request,
					 response);
					break;
				case "etudiant":
					//response.sendRedirect("pages/PageEleve.jsp");
					request.getRequestDispatcher("pages/PageEleve.jsp").forward(request,
						response);
					break;
				}
			} else {
				System.out.println("wrong");
				request.getRequestDispatcher("pages/login.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
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
