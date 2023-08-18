<%-- 
    Document   : symp_search
    Created on : 3 Nov, 2017, 11:48:27 AM
    Author     : CG-DTE
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>       
                <%
                    String category=request.getParameter("p");
                    try{
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","");
                       String query="select symptom from category where type='"+category+"'";
                       Statement stmt=con.prepareStatement(query);
                       ResultSet rs=stmt.executeQuery(query);
                       while(rs.next()){
                %>
                        <option class="form-control"><% out.print(rs.getString("symptom")); %></option>
                <%
                        }
                       con.close();
                    }catch(Exception e){
                          out.print(e);
                   }
                %>
    </body>
</html>
