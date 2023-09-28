<%@  page import = "java.sql.* , java.util.* , java.io.*" %>
<% 
int cus_id = Integer.parseInt(request.getParameter("myCusID"));
int user_id = Integer.parseInt(request.getParameter("myUserID"));
String cus_name = request.getParameter("myName");
String cus_city = request.getParameter("myCity");
String cus_state = request.getParameter("myState");
String cus_email = request.getParameter("myEmail");
String cus_mobile = request.getParameter("myMobileNo");
try{
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost: /2341_pooja","root","Puja@101010");
    Statement st = con.createStatement();
    st.executeUpdate("insert into customer(user_id ,cus_id , cus_name, cus_email, cus_mobile , cus_city ,cus_state) values ('"+user_id+ "' ,'"+cus_id+"','"+cus_name+"','"+cus_email+"','"+cus_mobile+"','"+cus_city+"','"+cus_state+"')");
    Random rand = new Random();
    int n = rand.nextInt(1000);
    System.out.print("\nYour Courier Id is: ");
    System.out.println(n);
    response.sendRedirect("success.html");     
}
catch(Exception e){
    //System.out.println(e);
	response.sendRedirect("error.html");    
}
%>