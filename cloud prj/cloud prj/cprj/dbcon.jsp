<%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection con=DriverManager.getConnection("jdbc:odbc:maildsn");
			//Connection con=DriverManager.getConnection("jdbc:odbc:hcoradsn","qmail","qmail");

			
			
			
			%>