package com.evry.asa;
import java.sql.Connection;

import java.sql.ResultSet;
public class InsertDao {
	
	private String employeeName;
	private String employeeAddRess;
	private String employeePhoneNo;
	private boolean resultSetValidations;
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeeAddRess() {
		return employeeAddRess;
	}
	public void setEmployeeAddRess(String employeeAddRess) {
		this.employeeAddRess = employeeAddRess;
	}
	public String getEmployeePhoneNo() {
		return employeePhoneNo;
	}
	public void setEmployeePhoneNo(String employeePhoneNo) {
		this.employeePhoneNo = employeePhoneNo;
	}
	
	
	

	
	public void saveToDB()
	{
		try
		{
						
			DatabaseConnect dbConnection = new DatabaseConnect();
			int ph = Integer.parseInt(this.employeePhoneNo);
			Connection conn = dbConnection.getConnection();
			String query = " insert into employeerecord(empname,empaddress,empphnno) values(?,?,?)";
			java.sql.PreparedStatement getcredentials = conn.prepareStatement(query);
			getcredentials.setString(1,this.employeeName);
			getcredentials.setString(2,this.employeeAddRess);
			getcredentials.setInt(3,ph);
			System.out.println("result is    "+query);
			getcredentials.execute();
			//System.out.println("result is    "+rset);
	
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	public boolean isResultSetValidations() {
		return resultSetValidations;
	}
	public void setResultSetValidations(boolean resultSetValidations) {
		this.resultSetValidations = resultSetValidations;
	}

}
