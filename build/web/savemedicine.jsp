<%-- 
    Document   : savemedicine
    Created on : 3 Nov, 2017, 11:57:32 AM
    Author     : CG-DTE
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Save Medicine</title>
        <link href="bootstrap.min.css" rel="stylesheet">
        <script src="jquery.min.js"></script>
        <script src="bootstrap.min.js"></script>
    </head>
    <body>
        <%
            String symptom=request.getParameter("symp");
            String med=request.getParameter("med");
            int wt=Integer.parseInt(request.getParameter("wt"));
            try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","");
               String query="select id from category where symptom='"+symptom+"'";
               Statement stmt=con.prepareStatement(query);
               ResultSet rs=stmt.executeQuery(query);
               if(rs.next()){
                int id=Integer.parseInt(rs.getString("id"));
                 String query1="insert into med_info values('"+id+"','"+med+"','"+wt+"')";
                 PreparedStatement stmt1=con.prepareStatement(query1);
                 int rs1=stmt1.executeUpdate(query1);
                 if(rs1!=0){
        %>
                    <script>
                        alert("Medicine Added");
                        window.location="addmedicine.jsp";
                    </script>
        <%
                 }
                 else{
                     out.print("not saved");
                 }
                }
               con.close();
            }catch(Exception e){
                  out.print(e);
           } 
        %>
    </body>
</html>
