<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Home Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap.min.js"></script>
        <script src="jquery.min.js"></script>
    </head>
    <style>
        .btn-info{
            width: 150px;   height: 80px;
            border-radius: 70px;
        }
    </style>
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
        <div class="container text-center">    
          <h3>Select what kind of problem you have</h3><br><br>
          <div class="row">
            <div class="col-sm-4">
              <button type="button" class="btn btn-info" style="font-size:20px;">Mental</button>
            </div>
            <div class="col-sm-4"> 
              <button type="button" class="btn btn-info" style="font-size:20px;">Physical</button>  
            </div>
            <div class="col-sm-4"> 
              <button type="button" class="btn btn-info" style="font-size:20px;">Particular</button>   
            </div>
          </div><br><br>
          <div class="row">
            <div class="col-sm-7">
              <button type="button" class="btn btn-info" style="font-size:20px;">Gynecological</button>
            </div>
            <div class="col-sm-1"> 
              <button type="button" class="btn btn-info" style="font-size:20px;">Pedological</button>  
            </div>
          </div>
        </div>
        <script>
            $(document).ready(function(){
               $('.btn-info').on('click',function(){
                   var btn_txt=$(this).text();
                   window.location="symptoms.jsp?id="+btn_txt;
               });
                $.post('header.html',{},function(data){
                   $("#new_div").html(data);
                });               
            });
        </script>
    </body>
</html>
