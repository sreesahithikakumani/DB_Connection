package com.corejava;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {

            con = DBConnection.getConnection();

            String sql = "SELECT * FROM users WHERE username=? AND password=?";

            ps = con.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, password);

            rs = ps.executeQuery();

            if (rs.next()) {

                HttpSession session = request.getSession();

                session.setAttribute("username", username);

                response.sendRedirect("home.jsp");

            } else {

                out.println("<html>");
                out.println("<body>");

                out.println("<h2>Login Failed</h2>");
                out.println("<p>Invalid username or password.</p>");

                out.println("<a href='login.jsp'>Try Again</a>");

                out.println("</body>");
                out.println("</html>");
            }

        } catch (Exception e) {

            e.printStackTrace();

            out.println("<html>");
            out.println("<body>");

            out.println("<h2>Database Error</h2>");

            out.println("<pre>");
            e.printStackTrace(out);
            out.println("</pre>");

            out.println("</body>");
            out.println("</html>");

        } finally {

            try {

                if (rs != null)
                    rs.close();

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