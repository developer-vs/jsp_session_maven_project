package com.herokuapps.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * Servlet implementation class SiteController
 */
@WebServlet("/SiteController")
public class SiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SiteController() {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = (String) request.getParameter("userName");
		String password = (String) request.getParameter("password");
		
		if (userName.equals("admin") && password.equals("12345")) {
			// Invalidates this session then unbinds any objects bound to it.
			request.getSession().invalidate();
			
			// create - true to create a new session for this request if necessary; f
			// we use "false" to return null if there's no current session
			HttpSession session = request.getSession(true);
			session.setMaxInactiveInterval(10); // 10 sec
			session.setAttribute("userName", userName);
			response.sendRedirect("member-area.jsp");
		}
		else {
			String wrongCredentials = "Wrong credentials";
			request.setAttribute("validator_response", wrongCredentials);
			RequestDispatcher reqDispatcher = request.getRequestDispatcher("index.jsp");
			reqDispatcher.forward(request, response);
		}
	}

}
