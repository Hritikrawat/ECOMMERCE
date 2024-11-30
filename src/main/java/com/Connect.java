package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect 
{
	
	public static Connection makeConnection() 
	{
	
		try 
		{		
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/DUC", "USERNAME", "YOUR_PASSWORD_HERE");
				
			return con;
		} 
		catch (SQLException |ClassNotFoundException e ) 
		{

			e.printStackTrace();
			return null;
		}		
	}		

}

