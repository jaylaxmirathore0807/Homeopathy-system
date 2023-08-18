<%-- 
    Document   : bg_symptoms
    Created on : 1 Nov, 2017, 3:11:33 PM
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
            String symptom=request.getParameter("k");
            int id=0;   int i=1;  int wt=0;    int wt1=0;//i=serial no.
            try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","");
               String query="select id from category where symptom='"+symptom+"'";
               Statement stmt=con.prepareStatement(query);
               ResultSet rs=stmt.executeQuery(query);
               if(rs.next()){
                id=Integer.parseInt(rs.getString("id"));
                 String query1="select max(weight) from med_info where id='"+id+"'";
                 Statement stmt1=con.prepareStatement(query1);
                 ResultSet rs1=stmt1.executeQuery(query1);
                 if(rs1.next()){
                   wt=Integer.parseInt(rs1.getString(1));
                 }
                }
               con.close();
            }catch(Exception e){
                  //out.print(e);
           }          
            out.print("<table class='table table-bordered'>");
            out.print("<th id='header'>SNo.</th><th id='header'>Medicine Name</th><th id='header'>Medicine Weight</th>"); 
            try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","");
               String query="select * from med_info where id='"+id+"'";
               Statement stmt=con.prepareStatement(query);
               ResultSet rs=stmt.executeQuery(query);
               while(rs.next()){
                   wt1=Integer.parseInt(rs.getString("weight"));
                   if(wt==wt1){
                       out.print("<tr bgcolor='#f2d7d5'><td>"+i+++"</td><td>");
                       out.print(rs.getString("medicine_info"));
                       out.print("</td><td>");
                       out.print(rs.getString("weight"));
                   }
                   else{
                       out.print("<tr><td>"+i+++"</td><td>");
                       out.print(rs.getString("medicine_info"));
                       out.print("</td><td>");
                       out.print(rs.getString("weight"));
                   }
                    out.print("</tr></td>");                   
                }
               con.close();
            }catch(Exception e){
                  out.print(e);
           }
            out.print("</table>");
        %>
    </body>
</html>
