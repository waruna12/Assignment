package com.models;

import java.sql.*;

public class Items {
	
	public String getItems() {

		 String itemsGrid = null;
		 Connection con = null;
		 Statement st = null;
		 ResultSet rs = null;

		 try {
		 con = DBConnect.createConnection();
		 st = con.createStatement();
		 rs = st.executeQuery("select * from items");
		 if (rs.first())
		 {

		itemsGrid = "<table border='1' cellspacing='1'cellpadding='1'><tr><th>No</th><th>Name</th><th>Description</th><th>Edit</th><th>Delete</th></tr>";

		rs.beforeFirst();
		while(rs.next())
		{
		 itemsGrid = itemsGrid + "<tr><td>" + rs.getString(1) + "</td>"+ "<td>" + rs.getString(2) + "</td>"+ "<td>" + rs.getString(3) + "</td>"+ "<td><input id=\"btnEdit\" type=\"button\" name=\"btnEdit\"param=\"" + rs.getString(1) + "\" value=\"Edit\"</td>"+ "<td>" + "<input id=\"btnRemove\" type=\"button\"name=\"btnRemove\" param=\"" + rs.getString(1) + "\"value=\"Remove\"</td></tr>";
		 }
		}
		 else
		 itemsGrid = "There are no items...";
		 itemsGrid = itemsGrid + "</table></br>";
		 }
		 catch (SQLException e) {
		 e.printStackTrace();
		 }

		 return itemsGrid;
		 } 

}
