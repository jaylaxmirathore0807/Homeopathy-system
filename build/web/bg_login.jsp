<%-- 
    Document   : bg_login
    Created on : 1 Nov, 2017, 4:52:26 PM
    Author     : CG-DTE
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
            String user=request.getParameter("u");
            String pwd=request.getParameter("p");
            try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","");
               String query="select * from login";
               Statement stmt=con.prepareStatement(query);
               ResultSet rs=stmt.executeQuery(query);
               while(rs.next()){
                    if(user.equals(rs.getString("uname")) && pwd.equals(rs.getString("pwd"))){
                        if(rs.getString("uname").equals("jaya") && rs.getString("pwd").equals("123")){
                            session.setAttribute("user",rs.getString("uname"));
                            response.sendRedirect("addmedicine.jsp");
                        }
                        else{
                            session.setAttribute("user",rs.getString("uname"));
                            response.sendRedirect("home.jsp");
                        }
                    }
                    else{
        %>
                        <script>
                            alert("Incorrect username or password");
                            window.location="login.html";
                        </script>
        
        <%
                    }
                }
               con.close();
            }catch(Exception e){
                  out.print(e);
           }
        %>