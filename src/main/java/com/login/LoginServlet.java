package com.login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		String user_name = request.getParameter("username");
		String password = request.getParameter("password");
		//JDBC connection
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Mvrpslv3@mvr");
			String query = "SELECT * FROM register WHERE user_name = ? AND password = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, user_name);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				   HttpSession session = request.getSession();
	                session.setAttribute("username", user_name);
				response.sendRedirect("Home.jsp");
			}else {
				out.print("<h1>"+user_name+" :Not found/Password is inncorect</h1><br>");
			}
			rs.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			out.print("server exception");
			e.printStackTrace();
		} catch (SQLException e) {
			out.print("sql exception");
			e.printStackTrace();
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
