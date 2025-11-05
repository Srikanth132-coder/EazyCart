package com.register;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String firstname = request.getParameter("first");
		String lastname = request.getParameter("last");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		
		//DBconnection
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/speshway","root","Mvrpslv3@mvr");
			
			String query = "insert into register values ('"+username+"','"+password+"','"+firstname+"','"+lastname+"','"+mobile+"','"+email+"')";
			
			Statement st = conn.createStatement();
			int status = st.executeUpdate(query);
			if (status!=0) {
				out.print("<html><body>");
                out.print("<script type='text/javascript'>");
                out.print("alert('Registered Successfully!');");
                out.print("window.location.href = 'Login.jsp';");
                out.print("</script>");
                out.print("</body></html>");
			}else {
				out.print("<h1>Registration Failed.......</h1>");
			}
			st.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			out.print("<h1>Class Not Found Exception Occured....</h1>");
			e.printStackTrace();
		} catch (SQLException e) {
			out.print("<h1>SQL Exception Occured....</h1>");
			e.printStackTrace();
		}
		
		out.print(username+" "+password+" "+firstname+" "+lastname+" "+mobile+" "+email);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
