package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Index </title>\n");
      out.write("        <link href=\"bootstrap/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <h1>Student Registration System</h1>\n");
      out.write("        \n");
      out.write("        <div class=\"row\">\n");
      out.write("            <!-- Form registration -->\n");
      out.write("            \n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("                <form class=\"card\" method=\"POST\" action=\"#\">\n");
      out.write("                    \n");
      out.write("                    <div alight=\"left\">\n");
      out.write("                        <label class=\"form-label\">Student Name</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Student Name\" name=\"sname\" id=\"sname\" required />\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div alight=\"left\">\n");
      out.write("                        <label class=\"form-label\">Course </label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Course\" name=\"course\" id=\"course\" required />\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div alight=\"left\">\n");
      out.write("                        <label class=\"form-label\">Fee</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Fee\" name=\"fee\" id=\"fee\" required />\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    <div alight=\"right\">\n");
      out.write("                        <input type=\"submit\" id=\"submit\" value=\"Submit\" name=\"submit\" class=\"btn btn-info\" />\n");
      out.write("                        <input type=\"reset\" id=\"reset\" value=\"Reset\" name=\"submit\" class=\"btn btn-warning\" />\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"col-sm-8\">\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
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
