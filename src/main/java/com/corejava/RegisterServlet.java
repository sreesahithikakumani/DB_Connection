package com.corejava;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection con = null;
		try {
			con = DBConnection.getConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
        PreparedStatement ps = null;

        try {

        	con = DBConnection.getConnection();

        	if (con == null) {
        	    out.println("<h2>Database connection is NULL</h2>");
        	    return;
        	}

        	out.println("<h3>Database connection successful</h3>");

        	String sql =
        	    "INSERT INTO users(name,email,username,password) " +
        	    "VALUES(?,?,?,?)";

        	ps = con.prepareStatement(sql);
            ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, username);
            ps.setString(4, password);

            int result = ps.executeUpdate();

            if (result > 0) {

                out.println("<html>");
                out.println("<body>");

                out.println("<h2>Registration Successful!</h2>");

                out.println("<p>Your account has been created.</p>");

                out.println(
                    "<a href='login.jsp'>Go to Login</a>"
                );

                out.println("</body>");
                out.println("</html>");

            }

        } catch (Exception e) {

            e.printStackTrace();

            out.println("<h2>Registration Failed</h2>");

            out.println("<p>" + e.getMessage() + "</p>");

        } finally {

            try {

                if (ps != null)
                    ps.close();

                if (con != null)
                    con.close();

            } catch (Exception e) {

                e.printStackTrace();

            }
        }
    }
}