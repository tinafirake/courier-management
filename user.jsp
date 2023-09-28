<%@  page import = "java.sql.* " %>
<% 
String user_name = request.getParameter("myUserName");
String user_addr = request.getParameter("myCity");
String user_mobile = request.getParameter("myMobileNo");
try{
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost: /2341_pooja","root","Puja@101010");
	Statement st = con.createStatement();
	st.executeUpdate("insert into user (user_name,user_addr,user_mobile) values (' "+user_name+ "' ,' "+user_addr+ "' ,' "+user_mobile+ "' ) ");
	response.sendRedirect("success.html");	
}
catch(Exception e){
	out.println(e);
	//response.sendRedirect("error.html");
	
}

%>








