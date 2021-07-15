package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class BorrowReport_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Borrow Report</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" crossorigin=\"anonymous\">\n");
      out.write("        <style>\n");
      out.write("            *{\n");
      out.write("                font-family: Times New Roman;                \n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .header{\n");
      out.write("                background-color: #ded2ab;\n");
      out.write("                font-size: 1.17em !important;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button{\n");
      out.write("                background: #ded2a8;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .table .thead-dark th{\n");
      out.write("                background-color: #989898;\n");
      out.write("                border: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            img:not(.btn.activationImg){\n");
      out.write("                width: 100px;\n");
      out.write("                height: 160px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .activationImg{\n");
      out.write("                height: auto;\n");
      out.write("                width: 50px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .btn{\n");
      out.write("                width: 60px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            textarea {                \n");
      out.write("                resize: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=\"file\"], .submitBtn, .wrongBtn {\n");
      out.write("                display: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .edit .submitBtn, .edit .wrongBtn {\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .edit .editBtn{\n");
      out.write("                display: none;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            textarea, input{\n");
      out.write("                border: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .edit textarea, .edit input{\n");
      out.write("                border: 1px solid #000;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .img__description {\n");
      out.write("                position: absolute;\n");
      out.write("                top: 0;\n");
      out.write("                bottom: 0;\n");
      out.write("                left: 0;\n");
      out.write("                right: 0;\n");
      out.write("                background: rgba(29, 106, 154, 0.72);\n");
      out.write("                color: #fff;\n");
      out.write("                visibility: hidden;\n");
      out.write("                opacity: 0;                \n");
      out.write("                transition: opacity .2s, visibility .2s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .imgCell{\n");
      out.write("                position: relative;\n");
      out.write("                width: 100px;\n");
      out.write("                height: 160px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .edit .img__description {\n");
      out.write("                visibility: visible;\n");
      out.write("                opacity: 1;\n");
      out.write("            }\n");
      out.write("            .new{\n");
      out.write("                text-align: center;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"w-100 mb-5\">\n");
      out.write("            <div class=\"header p-3 m-2 text-center h5 font-weight-bold\">Borrow Report</div>      \n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <table class=\"table\">\n");
      out.write("                    <thead class=\"thead-dark\">\n");
      out.write("                        <tr>\n");
      out.write("                            <th scope=\"col\" class=\"text-center\">No</th>\n");
      out.write("                            <th scope=\"col\" class=\"text-center\">Title</th>\n");
      out.write("                            <th scope=\"col\" class=\"text-center\">Borrowed Date</th>\n");
      out.write("                            <th scope=\"col\" class=\"text-center\">Return Date</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                        ");

                            String driver = "com.mysql.jdbc.Driver";
                            String dbName = "library";
                            String url = "jdbc:mysql://localhost/" + dbName + "?";
                            String username = "root";
                            String password = "";

                            try {
                                Class.forName(driver);
                                Connection con = DriverManager.getConnection(url, username, password);

                                String query = "select * from borrow";
                                PreparedStatement st = con.prepareStatement(query);
                                ResultSet result = st.executeQuery();
                                int count = 1;
                
                                while (result.next()) {
                                    
                        
      out.write("\n");
      out.write("                        <tr id=\"row");
      out.print(count);
      out.write("\" class=\"bookRow\" onfocus=\"toggleEdit('row");
      out.print(count);
      out.write("', 'borrowNameList");
      out.print(count);
      out.write("')\">\n");
      out.write("                            <form id=\"form");
      out.print(count);
      out.write("\" method=\"post\" action=\"activateServlet\">\n");
      out.write("                                <th scope=\"row\" class=\"align-middle\">                                    \n");
      out.write("                                    ");
      out.print(count);
      out.write("\n");
      out.write("                                </th>\n");
      out.write("                                <input type=\"hidden\" name=\"user\" value=\"");
      out.print(result.getString("username"));
      out.write("\" />\n");
      out.write("                                <td class=\"align-middle\">\n");
      out.write("                                    <p >");
      out.print(result.getString("borrowNameList"));
      out.write("</p>                                                             \n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"align-middle\">\n");
      out.write("                                    <p>");
      out.print(result.getString("borrowDate"));
      out.write("</p>                                    \n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"align-middle\">\n");
      out.write("                                    <p>");
      out.print(result.getString("returnDate"));
      out.write("</p>                                    \n");
      out.write("                                </td>\n");
      out.write("                            </form>\n");
      out.write("                            </tr>                        \n");
      out.write("                            ");

                                        count++;
                                    }
                                    st.close();
                                    con.close();
                                } catch (ClassNotFoundException ex) {

                                }
                            
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("                </table>                \n");
      out.write("            </div>            \n");
      out.write("        </div>\n");
      out.write("      \n");
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
