package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class symptoms_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>General Category</title>\n");
      out.write("        <link href=\"bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"jquery.min.js\"></script>\n");
      out.write("        <script src=\"bootstrap.min.js\"></script>        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <select id=\"symp\" class=\"form-control\">\n");
      out.write("                ");

                    String category="General";//(String)session.getAttribute("kBtn");
                    try{
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine","root","");
                       String query="select symptom from category where type='"+category+"'";
                       Statement stmt=con.prepareStatement(query);
                       ResultSet rs=stmt.executeQuery(query);
                       while(rs.next()){
                
      out.write("\n");
      out.write("                        <option>");
 out.print(rs.getString("symptom")); 
      out.write("</option>\n");
      out.write("                ");

                        }
                       con.close();
                    }catch(Exception e){
                          out.print(e);
                   }
                
      out.write("\n");
      out.write("            </select>\n");
      out.write("            <button type=\"button\" class=\"btn btn-info\" id=\"ok_btn\">OK</button>\n");
      out.write("            <p id=\"new_div\"></p>\n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function(){\n");
      out.write("               $('#ok_btn').click(function(){\n");
      out.write("                   var symptom=$(\"#symp\").val();\n");
      out.write("                    $.post('bg_symptoms.jsp',{k:symptom},function(data){\n");
      out.write("                       $(\"#new_div\").html(data);\n");
      out.write("                    });\n");
      out.write("               });\n");
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
