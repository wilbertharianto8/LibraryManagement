package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import bean.eBook;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class ebookStaff_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
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
      out.write("            <a href=\"staffHomepage.jsp\"><div class=\"header p-3 m-2 text-center h5 font-weight-bold\">e-Book</div></a>            \n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <table class=\"table\">\n");
      out.write("                    <thead class=\"thead-dark\">\n");
      out.write("                        <tr>\n");
      out.write("                            <th scope=\"col\" class=\"text-center\">No</th>\n");
      out.write("                            <th scope=\"col\" class=\"text-center\">Image</th>\n");
      out.write("                            <th scope=\"col\" class=\"text-center\">Title</th>\n");
      out.write("                            <th scope=\"col\" class=\"text-center\">Author</th>\n");
      out.write("                            <th scope=\"col\" class=\"text-center\">Ebook Link</th>\n");
      out.write("                            <th scope=\"col\" class=\"text-center\">Activation</th>\n");
      out.write("                            <th scope=\"col\" class=\"text-center\">Reason</th>\n");
      out.write("                            <th scope=\"col\" class=\"text-center\">Action</th>\n");
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

                                String query = "select * from ebook";
                                PreparedStatement st = con.prepareStatement(query);
                                ResultSet result = st.executeQuery();
                                int count = 1;
                
                                while (result.next()) {
                                    
                        
      out.write("\n");
      out.write("                        <tr id=\"row");
      out.print(count);
      out.write("\" class=\"bookRow\" onfocus=\"toggleEdit('row");
      out.print(count);
      out.write("', 'title");
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
      out.write("                                <input type=\"hidden\" name=\"id\" value=\"");
      out.print(result.getString("ebookID"));
      out.write("\" />\n");
      out.write("                                <td class=\"imgCell text-center\">\n");
      out.write("                                    <img id=\"image\" src=\"");
      out.print(result.getString("images"));
      out.write("\" alt=\"image\"  />                           \n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"align-middle\">\n");
      out.write("                                    <p >");
      out.print(result.getString("title"));
      out.write("</p>                                                             \n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"align-middle\">\n");
      out.write("                                    <p>");
      out.print(result.getString("author"));
      out.write("</p>                                    \n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"align-middle\">\n");
      out.write("                                    <a href=\"");
      out.print(result.getString("pdf"));
      out.write("\">Ebook Link</a>                                    \n");
      out.write("                                </td>\n");
      out.write("                               \n");
      out.write("                                <td class=\"align-middle text-center\">\n");
      out.write("                                    ");

                                        String activation = result.getString("activation");
                                        String activationImg = "";
                                        
                                        if(activation.equals("1")){
                                            activationImg = "images/enable.png";
                                        } else if(activation.equals("0")){
                                            activationImg = "images/disable.png";
                                        }
                                    
      out.write("               \n");
      out.write("                                    <img class=\"activationImg\" src=\"");
      out.print(activationImg);
      out.write("\" style=\"width:40px; height: 40px\" />\n");
      out.write("                                    <br><br><br><select name=\"activation\" id=\"activation");
      out.print(count);
      out.write("\" data-checkChg=\"");
      out.print(result.getString("activation"));
      out.write("\">\n");
      out.write("                                        <option>Activation</option>\n");
      out.write("                                        <option value=\"1\">Enable</option>\n");
      out.write("                                        <option value=\"0\">Disable</option>>\n");
      out.write("                                    </select>\n");
      out.write("                                </td>\n");
      out.write("                                 <td class=\"align-middle\">\n");
      out.write("                                    <textarea id=\"reason");
      out.print(count);
      out.write("\" class=\"text-center w-100\" name=\"reason\" data-checkChg=\"");
      out.print(result.getString("reason"));
      out.write("\" >");
      out.print(result.getString("reason"));
      out.write("</textarea>                                   \n");
      out.write("                                </td>\n");
      out.write("                                <td class=\"align-middle\">\n");
      out.write("                                    <input type=\"submit\" value=\"Update\">                          \n");
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
      out.write("       \n");
      out.write("        <div class=\"new\">\n");
      out.write("            <a href=\"addEbook.jsp\"><img src=\"images/add.png\" style=\"height:50px; width: 50px;\"><br>Add New</a>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
