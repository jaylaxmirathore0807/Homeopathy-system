<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>My Details</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap.min.js"></script>
        <script src="jquery.min.js"></script>
    </head>
    <body>
        <%
            String user=(String)session.getAttribute("user");
            if(user == null) {
                response.sendRedirect("main.html");
                }
        %>
        <div id="new_div"></div>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
              <div class="navbar-header">
                <a class="navbar-brand" href="home.jsp">Medicine</a>
              </div>
              <ul class="nav navbar-nav navbar-right">                   
                <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#"><% out.print(user);%>
                  <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="mydetails.jsp">My Details</a></li>
                    <li><a href="mysymptoms.jsp">My Symptoms</a></li>
                  </ul>
                </li>
                  <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <h3>My Details :</h3>
            <%
                try{
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","");
                   String query="select * from patient where name='"+user+"'";
                   Statement stmt=con.prepareStatement(query);
                   ResultSet rs=stmt.executeQuery(query);
                   if(rs.next()){
            %>
                <br><label>Name :</label><input type="text" value="<% out.print(rs.getString("name")); %>" class="form-control">
                    <label>Age :</label><input type="text" value="<% out.print(rs.getString("age")); %>" class="form-control">
                    <label>Parents :</label><input type="text" value="<% out.print(rs.getString("Parents")); %>" class="form-control">
                    <label>Siblings :</label><input type="text" value="<% out.print(rs.getString("siblings")); %>" class="form-control">
                    <label>Reason :</label><input type="text" value="<% out.print(rs.getString("reason")); %>" class="form-control">
                    <label>Problem :</label><input type="text" value="<% out.print(rs.getString("Problem")); %>" class="form-control">
                    <label>Symptom :</label><input type="text" value="<% out.print(rs.getString("symptom")); %>" class="form-control">
                    <label>Description :</label><input type="text" value="<% out.print(rs.getString("description")); %>" class="form-control">
                    <label>Address :</label><input type="text" value="<% out.print(rs.getString("address")); %>" class="form-control"><br>
            <%
                    }
                   con.close();
                }catch(Exception e){
                      out.print(e);
               }
            %>
        </div>
        <script>
            $(document).ready(function(){
                $.post('header.html',{},function(data){
                   $("#new_div").html(data);
                });               
            });
        </script>
    </body>
</html>
