<%-- 
    Document   : bg_patient
    Created on : 1 Nov, 2017, 4:41:41 PM
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
        <title>Save Patient</title>
    </head>
    <body>
        <%
            String name=request.getParameter("name");
            int age=Integer.parseInt(request.getParameter("age"));
            String date=request.getParameter("dat");
            String parents=request.getParameter("parents");
            int siblings=Integer.parseInt(request.getParameter("siblings"));
            String reason=request.getParameter("reason");
            String problem=request.getParameter("problem");
            String symptom=request.getParameter("symptom");
            String description=request.getParameter("description");
            String address=request.getParameter("address");
            String pwd=request.getParameter("pwd");    
            try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","");
               String query="insert into patient values(NULL,'"+name+"','"+age+"','"+date+"','"+parents+"','"+siblings+"','"+reason+"','"+problem+"','"+symptom+"','"+description+"','"+address+"')";
                PreparedStatement stmt=con.prepareStatement(query);
                int rs=stmt.executeUpdate(query);
                if(rs!=0){
                    String query1="insert into login values('"+name+"','"+pwd+"')";
                    PreparedStatement stmt1=con.prepareStatement(query1);
                    int rs1=stmt1.executeUpdate(query1);
                    if(rs1!=0){
        %>
                    <script>
                        alert("Patient Details Added");
                        window.location="login.html";
                    </script>
        <%
                    }
                }
                else{
        %>
                    <script>
                        alert("Error In Database Connection");
                        window.location="patient.html";
                    </script>
        <%
                }
            }catch(Exception e){
                System.out.println(e);
            }
        %>
    </body>
</html>
