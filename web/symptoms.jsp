<%-- 
    Document   : symptoms
    Created on : 1 Nov, 2017, 11:01:12 AM
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
        <title>Symptoms</title>
        <link href="bootstrap.min.css" rel="stylesheet">
        <script src="jquery.min.js"></script>
        <script src="bootstrap.min.js"></script>        
    </head>
    <body>
        <div id="new_div"></div>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>                        
                </button>
                <a class="navbar-brand" href="home.jsp">Medicine</a>
              </div>
              <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                  <li><a href="main.html"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                </ul>
              </div>
            </div>
        </nav>
        <div class="container">
            <h3>Select symptoms for medicine</h3>
            <select id="symp" class="form-control">
                <%
                    String category=request.getParameter("id");
                    try{
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","");
                       String query="select symptom from category where type='"+category+"'";
                       Statement stmt=con.prepareStatement(query);
                       ResultSet rs=stmt.executeQuery(query);
                       while(rs.next()){
                %>
                        <option><% out.print(rs.getString("symptom")); %></option>
                <%
                        }
                       con.close();
                    }catch(Exception e){
                          out.print(e);
                   }
                %>
            </select>
            <br><button type="button" class="btn btn-info" id="ok_btn">OK</button><br><br>
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
