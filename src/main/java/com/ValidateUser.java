package com;
import java.io.*;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ValidateUser extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection con = null;
		PreparedStatement pdst = null;

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		// Check if the user is already logged in by checking the session
       
		HttpSession session = request.getSession();                   // false to avoid creating a new session if none exists
        if (session != null && session.getAttribute("email") != null)
        {
            // User is already logged in, redirect to homepage
            response.sendRedirect("NewFile.jsp");
            return;
        }

		// got the connection
		con = Connect.makeConnection();

		if (con != null) 
		{
			
			try {
				
				String query = "SELECT Email, pass FROM Users WHERE Email = ?";
				pdst = con.prepareStatement(query);
				pdst.setString(1, email);

				// executing the query and getting the required data.
				ResultSet rs = pdst.executeQuery();
				if (rs.next()) { // Check if the email exists
				    if (rs.getString("pass").equals(pass)) {
				        // Both email and password are correct
				        session = request.getSession(true);
				        session.setMaxInactiveInterval(15 * 60); // Set session timeout
				        session.setAttribute("email", email);
				        RequestDispatcher rd = request.getRequestDispatcher("NewFile.jsp");
				        rd.forward(request, response); // Forward to the next page
				    } else {
				        // Password is incorrect
				        RequestDispatcher rd = request.getRequestDispatcher("Start.html");
				        rd.include(request, response);
				        out.print("<h1 style='color:red'>Check your Email or password.</h1>");
				    }
				}
				else {
				    // Email does not exist in the database
				    RequestDispatcher rd = request.getRequestDispatcher("Start.html");
				    rd.include(request, response);
				    out.print("<h1 style='color:red'>Register Yourself.</h1>");
				}

				rs.close();
				pdst.close();
				con.close();
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else {
			out.print("<h1>COnnection not found from login page</h1>");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		doGet(request, response);
	}

}
