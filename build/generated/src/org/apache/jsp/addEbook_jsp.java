package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addEbook_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            .button{\n");
      out.write("                background: #ded2a8;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"w-100\">\n");
      out.write("            <div class=\"header p-3 m-2 text-center h5 font-weight-bold\">Add e-Book</div>            \n");
      out.write("        </div>\n");
      out.write("        <form method=\"post\" action=\"addEbookServlet\" enctype=\"multipart/form-data\">\n");
      out.write("            <div class=\"container mt-2 w-25\">\n");
      out.write("                <div class=\"d-flex flex-column\">\n");
      out.write("                    <div class=\"py-3\">Title</div>\n");
      out.write("                    <input type=\"text\" name=\"title\" value=\"\" />\n");
      out.write("                    <div class=\"py-3\">Author</div>\n");
      out.write("                    <input type=\"text\" name=\"author\" value=\"\" />                                                            \n");
      out.write("                    <div class=\"py-3\">Image</div>\n");
      out.write("                    <input id=\"image\" type=\"file\" name=\"image\" value=\"Browse\"  /> \n");
      out.write("                    <div class=\"py-3\">PDF</div>\n");
      out.write("                    <input id=\"pdf\" type=\"file\" name=\"pdf\" value=\"Browse\"  />\n");
      out.write("                    <div class=\"py-3\">Activation</div>\n");
      out.write("                    <select name=\"activation\">\n");
      out.write("                        <option value=\"1\">Enable</option>\n");
      out.write("                        <option value=\"0\">Disable</option>\n");
      out.write("                    </select>\n");
      out.write("                    <div class=\"py-3\">Comment</div>\n");
      out.write("                    <input type=\"text\" name=\"comment\" value=\"\" />                    \n");
      out.write("                    <div class=\"d-flex justify-content-around mt-5\">\n");
      out.write("                        <input type=\"submit\" class=\"button rounded px-3 py-1 border-0\" value=\"Cancel\" />\n");
      out.write("                        <input type=\"submit\" class=\"button rounded px-3 py-1 border-0\" value=\"Add\" />\n");
      out.write("                    </div>                \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
