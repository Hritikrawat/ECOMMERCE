package com;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DataBse extends HttpServlet 
{
	Connection con = null;
	PreparedStatement st = null;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("fname")+" "+request.getParameter("lname");
		String mail = request.getParameter("email");
		String pass = request.getParameter("pass");
		String pass2 = request.getParameter("repass");
		String Gen = request.getParameter("flexRadioDefault");
		
//		out.print("WELCOME : "+name+"ur mail is :" +mail);
//		out.print(pass +" "+pass2+""+Gen);

		
		con=Connect.makeConnection();
		
		if(con==null) 
		{
			out.print("<h1 style='color:red'>CONNECTION NOT FOUND</h1>");
			
		}
		
		else 
		{
			try 
			{
				String query = "insert into Users values (?,?,?,?,?)"; 
				st = con.prepareStatement(query);
				st.setString(1, name);
				st.setString(2, mail);
				st.setString(3, pass);
				st.setString(4, pass2);
				st.setString(5, Gen);
			
				int i = st.executeUpdate();
				if(i>0)
						out.print("<h1 style='color:green'>DATA INSERTED SUCCESFULLY");
					
				else 
					out.print("<h1>DATA NOT INSERTED");
				
			}
			
			catch(Exception e ) 
			{
				out.println("<h1 style='color:red'>UNABLE TO INSERT!</h1>");
			}
		}
		
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		doGet(request, response);
	}

}
