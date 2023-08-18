<%-- 
    Document   : search_patients
    Created on : 26 Feb, 2018, 1:06:49 PM
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
        <link href="bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap.min.js"></script>
        <script src="jquery.min.js"></script>
        <title>Patient</title>
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
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>                        
                </button>
                <a class="navbar-brand" href="addmedicine.jsp">Add Medicine</a>
                <a class="navbar-brand" href="search_patients.jsp">Patients List</a>
              </div>
              <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                  <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%out.print(user);%></a></li>
                  <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                </ul>
              </div>
            </div>
        </nav>
        <div class="container">
            <h3>Patient List :</h3>
            <%
                int i=1;
            out.print("<table class='table table-bordered'>");
            out.print("<th id='header'>SNo.</th><th id='header'>Name</th><th id='header'>Age</th><th id='header'>Parents</th><th id='header'>Siblings</th><th id='header'>Reason</th><th id='header'>Problem</th><th id='header'>Symptom</th><th id='header'>Description</th><th id='header'>Address</th>");
                try{
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","");
                   String query="select * from patient";
                   Statement stmt=con.prepareStatement(query);
                   ResultSet rs=stmt.executeQuery(query);
                   while(rs.next()){
                       out.print("<tr><td>"+i+++"</td><td>");out.print(rs.getString("name")+"</td><td>"+rs.getString("age")+"</td><td>");
                       out.print(rs.getString("Parents")+"</td><td>"+rs.getString("siblings")+"</td><td>"+rs.getString("reason")+"</td><td>"+rs.getString("problem")
                               +"</td><td>"+rs.getString("symptom")+"</td><td>"+rs.getString("description")+"</td><td>"+rs.getString("address"));
                       out.print("</tr></td>");
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
