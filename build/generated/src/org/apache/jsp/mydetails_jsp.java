package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class mydetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>My Details</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"jquery.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String user=(String)session.getAttribute("user");
            if(user == null) {
                response.sendRedirect("main.html");
                }
        
      out.write("\n");
      out.write("        <div id=\"new_div\"></div>\n");
      out.write("        <nav class=\"navbar navbar-inverse\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("              <div class=\"navbar-header\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"home.jsp\">Medicine</a>\n");
      out.write("              </div>\n");
      out.write("              <ul class=\"nav navbar-nav navbar-right\">                   \n");
      out.write("                <li class=\"dropdown\">\n");
      out.write("                  <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">");
 out.print(user);
      out.write("\n");
      out.write("                  <span class=\"caret\"></span></a>\n");
      out.write("                  <ul class=\"dropdown-menu\">\n");
      out.write("                    <li><a href=\"mydetails.jsp\">My Details</a></li>\n");
      out.write("                    <li><a href=\"mysymptoms.jsp\">My Symptoms</a></li>\n");
      out.write("                  </ul>\n");
      out.write("                </li>\n");
      out.write("                  <li><a href=\"logout.jsp\"><span class=\"glyphicon glyphicon-user\"></span> Logout</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        ");

            try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","");
               String query="select * from patient where name='"+user+"'";
               Statement stmt=con.prepareStatement(query);
               ResultSet rs=stmt.executeQuery(query);
               if(rs.next()){
        
      out.write("\n");
      out.write("                <lable>Name :</label><input type=\"text\" value=\"");
 out.print(rs.getString("name")); 
      out.write("\">\n");
      out.write("        ");

                }
               con.close();
            }catch(Exception e){
                  out.print(e);
           }
        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function(){\n");
      out.write("                $.post('header.html',{},function(data){\n");
      out.write("                   $(\"#new_div\").html(data);\n");
      out.write("                });               \n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
