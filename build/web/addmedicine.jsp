<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Add Medicine</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap.min.css" rel="stylesheet">
        <script src="jquery.min.js"></script>
        <script src="bootstrap.min.js"></script>
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
                <a class="navbar-brand" href="search_patients.jsp">Patient List</a>
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
            <h1>Add Medicine :</h1><br>
            <label for="problem">Problem :</label><select id="problem" class="form-control">
                            <option class="form-control">Mental</option>
                            <option class="form-control">Physical</option>
                            <option class="form-control">Particular</option>
                            <option class="form-control">Gynecological</option>
                            <option class="form-control">Pediatrics</option>
            </select>
            <label for="symptom">Symptoms :</label><select id="symptom" class="form-control"></select>
            <label for="medicine">Medicine :</label><input type="text" id="medicine" class="form-control">
            <label for="wt">Weight :</label><input type="number" id="wt" class="form-control"><br>
            <button type="button" class="btn btn-info" id="save">Save</button><br><br>
        </div>
        <script>
            $(document).ready(function(){
                $.post('header.html',{},function(data){
                   $("#new_div").html(data);
                });
                $('#problem').click(function(){
                    var cat=$("#problem").val();
                    $.post('symp_search.jsp',{p:cat},function(data){
                       $("#symptom").html(data);
                    });                  
                });
                $("#save").click(function(){
                   var symp= $('#symptom').val();
                   var mname= $("#medicine").val();
                   var weight= $("#wt").val();
                   window.location="savemedicine.jsp?symp="+symp+"&med="+mname+"&wt="+weight;  
                });
            });
        </script>
    </body>
</html>
