<!DOCTYPE html>
<html>

<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    import = "java.sql.*;" %>

	<%
		String user_name = request.getParameter("name");
		String user_addr = request.getParameter("addr");
		String user_mobile = request.getParameter("no"); 
		try{
			

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/2341_pooja/user","root","Puja@101010");
			Statement st = con.createStatement();
			String query = "insert into user (user_name,user_addr,user_mobile)"+
					"values(?,?,?)";
			PreparedStatement prep_stmt;
			prep_stmt = con.prepareStatement(query);
			prep_stmt.setString(1, user_name);
			prep_stmt.setString(2, user_addr);
			prep_stmt.setString(3, user_mobile);
			prep_stmt.execute();
			
			System.out.println("Successfully inserted");	
			
		}
		catch(Exception e){
			response.sendRedirect("error.html");
		}
	%>
	
</body>
</html>