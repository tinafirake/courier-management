page import = "java.sql.*;"  

String user_name = request.getParameter("name");
String user_addr = request.getParameter("addr");
String user_mobile = request.getParameter("no");

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/2341_pooja","root","Puja@101010");
	Statement st = con.createStatement();
	st.executeUpdate("insert into user(user_name,user_addr,user_mobile) values (' "+user_name+" ',' "+user_addr+" ',' "+user_mobile+" ',) ");
	
}
catch(Exception e){
	response.sendRedirect("error.html");
}









