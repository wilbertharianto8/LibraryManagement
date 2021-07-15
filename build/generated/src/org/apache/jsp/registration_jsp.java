package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Registration Page</title>\n");
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
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"w-100\">\n");
      out.write("            <div class=\"header p-3 m-2 text-center h5 font-weight-bold\">User Registration</div>            \n");
      out.write("        </div>\n");
      out.write("        <form method=\"post\" action=\"registrationController.jsp\">\n");
      out.write("            <div class=\"container mt-2 w-25\">\n");
      out.write("                <div class=\"d-flex flex-column\">\n");
      out.write("                    <div class=\"py-3\">Username</div>\n");
      out.write("                    <input type=\"text\" name=\"custUsername\" value=\"\" />\n");
      out.write("                    <div class=\"py-3\">Full Name</div>\n");
      out.write("                    <input type=\"text\" name=\"custFullname\" value=\"\" />\n");
      out.write("                    <div class=\"py-3\">Email</div>\n");
      out.write("                    <input type=\"email\" name=\"custEmail\" value=\"\" />\n");
      out.write("                    <div class=\"py-3\">Address</div>\n");
      out.write("                    <input type=\"text\" name=\"custAddress\" value=\"\" />\n");
      out.write("                    <div class=\"py-3\">Password</div>\n");
      out.write("                    <input type=\"password\" name=\"custPassword\" value=\"\" />\n");
      out.write("                    <div class=\"py-3\">Phone Number</div>\n");
      out.write("                    <input type=\"phone\" name=\"custPhone\" value=\"\" />\n");
      out.write("                    <div class=\"d-flex justify-content-around mt-5\">\n");
      out.write("                        <input type=\"submit\" class=\"button rounded px-3 py-1 border-0\" value=\"Cancel\" />\n");
      out.write("                        <input type=\"submit\" class=\"button rounded px-3 py-1 border-0\" value=\"Register\" />\n");
      out.write("                    </div>                \n");
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
