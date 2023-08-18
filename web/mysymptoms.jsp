<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <title>My Symptoms</title>
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
            <%
                try{
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","");
                   String query="select * from patient where name='"+user+"'";
                   Statement stmt=con.prepareStatement(query);
                   ResultSet rs=stmt.executeQuery(query);
                   if(rs.next()){
            %>
                <br><label>Problem :</label><input type="text" value="<% out.print(rs.getString("Problem")); %>" class="form-control">
                <label>Symptom :</label><input type="text" id="symp" value="<% out.print(rs.getString("symptom")); %>" class="form-control">
            <%
                    }
                   con.close();
                }catch(Exception e){
                      out.print(e);
               }
            %>
            <br><button type="button" class="btn btn-info" id="ok_btn">Search</button><br><br>
            <p id="new_div1"></p>
        </div>
        <script>
            $(document).ready(function(){
                $.post('header.html',{},function(data){
                   $("#new_div").html(data);
                });
               $('#ok_btn').click(function(){
                   var symptom=$("#symp").val();
                    $.post('bg_symptoms.jsp',{k:symptom},function(data){
                       $("#new_div1").html(data);
                    });
               });
            });
        </script>
    </body>
</html>
