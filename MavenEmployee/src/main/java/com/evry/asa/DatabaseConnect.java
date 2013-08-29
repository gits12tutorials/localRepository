package com.evry.asa;
import java.sql.*;
public class DatabaseConnect {

	
	
		
		public Connection conn = null;
							
							public Connection getConnection()
							{
							 try
							 {
							 Class.forName ("com.mysql.jdbc.Driver").newInstance ();
							 conn= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/employees?user=root&password=root");
							 }
							 catch (Exception e)
							 {
							 System.out.println (e + " Cannot get driver");
							
							 }
							 return conn;

						}

						}



