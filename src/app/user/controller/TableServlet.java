package app.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.user.CommBean;
import app.user.CommInfo;

/**
 * Servlet implementation class TableServlet
 */
@WebServlet("/TableServlet")
public class TableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TableServlet() {
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
		if (flag.equals("saveCom")) {

			try {
				
				int e1 = Integer.parseInt(request.getParameter("e1"));
				int d1 = Integer.parseInt(request.getParameter("d1"));
				int co1 = Integer.parseInt(request.getParameter("co1"));
				int ce1 = Integer.parseInt(request.getParameter("ce1"));
				
				int e2 = Integer.parseInt(request.getParameter("e2"));
				int d2 = Integer.parseInt(request.getParameter("d2"));
				int co2 = Integer.parseInt(request.getParameter("co2"));
				int ce2 = Integer.parseInt(request.getParameter("ce2"));
				
				int e3 = Integer.parseInt(request.getParameter("e3"));
				int d3 = Integer.parseInt(request.getParameter("d3"));
				int co3 = Integer.parseInt(request.getParameter("co3"));
				int ce3 = Integer.parseInt(request.getParameter("ce3"));
				
				int e4 = Integer.parseInt(request.getParameter("e4"));
				int d4 = Integer.parseInt(request.getParameter("d4"));
				int co4 = Integer.parseInt(request.getParameter("co4"));
				int ce4 = Integer.parseInt(request.getParameter("ce4"));
				
				int e5 = Integer.parseInt(request.getParameter("e5"));
				int d5 = Integer.parseInt(request.getParameter("d5"));
				int co5 = Integer.parseInt(request.getParameter("co5"));
				int ce5 = Integer.parseInt(request.getParameter("ce5"));
				
				int e6 = Integer.parseInt(request.getParameter("e6"));
				int d6 = Integer.parseInt(request.getParameter("d6"));
				int co6 = Integer.parseInt(request.getParameter("co6"));
				int ce6 = Integer.parseInt(request.getParameter("ce6"));
				
				String nom0 = request.getParameter("nom0");
				String nom1 = request.getParameter("nom1");
				String nom2 = request.getParameter("nom2");
				String nom3 = request.getParameter("nom3");
				String nom4 = request.getParameter("nom4");
				String nom5 = request.getParameter("nom5");

				CommInfo cfi = new CommInfo();
				cfi.addComm(e1, d1, co1, ce1, nom0);
				cfi.addComm(e2, d2, co2, ce2, nom1);
				cfi.addComm(e3, d3, co3, ce3, nom2);
				cfi.addComm(e4, d4, co4, ce4, nom3);
				cfi.addComm(e5, d5, co5, ce5, nom4);
				cfi.addComm(e6, d6, co6, ce6, nom5);
				
			} catch (Exception e) {

			}

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
