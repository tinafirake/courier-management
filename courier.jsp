<%@  page import = "java.sql.* " %>
<% 
int cour_id = Integer.parseInt(request.getParameter("myCourID"));
int user_id = Integer.parseInt(request.getParameter("myUserID"));

String cour_type = request.getParameter("myType");
String cour_weight = request.getParameter("myWeight");
try{
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost: /2341_pooja","root","Puja@101010");
    Statement st = con.createStatement();
    st.executeUpdate("insert into courier(user_id ,cour_id , cour_type, cour_weight) values (' "+user_id+ "' ,' "+cour_id+ "' ,' "+cour_type+ "',' "+cour_weight+ "' ) ");
    response.sendRedirect("success.html");
    
}
catch(Exception e){
    out.println(e);    
}
%>