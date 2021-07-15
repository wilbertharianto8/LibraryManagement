package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class staffLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            img{\n");
      out.write("                width: 108px;\n");
      out.write("                height: 108px;\n");
      out.write("                border: 1px solid #757575;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .content{\n");
      out.write("                height: 500px;\n");
      out.write("            }          \n");
      out.write("            \n");
      out.write("            .button{\n");
      out.write("                background: #ded2a8;\n");
      out.write("                width: 80px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .field{\n");
      out.write("                width: 250px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .forgot{\n");
      out.write("                font-size: 13px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form method=\"post\" action=\"userLogin\">\n");
      out.write("            <div class=\"w-100\">\n");
      out.write("                <div class=\"header p-3 mx-2 mt-2 mb-5 text-center h5 font-weight-bold\">Login</div>            \n");
      out.write("            </div>\n");
      out.write("            <div class=\"d-table w-100 content mt-5\">\n");
      out.write("                <div class=\"d-table-cell align-middle\">\n");
      out.write("                    <div class=\"d-flex flex-column\">\n");
      out.write("                        <img class=\"align-self-center rounded-circle\" src=\"images/login/icon.jpg\" alt=\"\"/>   \n");
      out.write("                        <input class=\"field align-self-center mt-5\" type=\"text\" name =\"username\" value=\"\" />\n");
      out.write("                        <input class=\"field align-self-center mt-4\" type=\"password\" name =\"password\" value=\"\" />\n");
      out.write("                        <input class=\"align-self-center button border rounded mt-5 mb-5 py-1\" type=\"submit\" value=\"Login\" />\n");
      out.write("                        <input type=\"hidden\" name=\"userType\" value=\"staff\" />\n");
      out.write("                        <a href=\"#\" class=\"forgot align-self-center font-italic mt-5 text-dark\">Forgot Password?</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
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
