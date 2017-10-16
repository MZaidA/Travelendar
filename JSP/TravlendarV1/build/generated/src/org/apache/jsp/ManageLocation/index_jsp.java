package org.apache.jsp.ManageLocation;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/ManageLocation/../navbarManage.jsp");
  }

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../Assets/css/manageStyle.css\"/>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"wrapper\">\r\n");
      out.write("        <li><strong>Admin</strong>TRAVELENDAR</li> \t\r\n");
      out.write("    </div>\r\n");
      out.write("        ");
      out.write("    <div id=\"sidebar\">\n");
      out.write("        <li><a href=\"../ManageLocation/index.jsp\">Manage Location</a></li>\n");
      out.write("        <li><a href=\"../DistancePage/index.jsp\">Manage Distance</a></li>\n");
      out.write("        <li><a href=\"../TransportationPage/index.jsp\">Manage Transport</a></li>\n");
      out.write("        <li><a href=\"../EstimatedTimePage/index.jsp\">Manage Estimated Time</a></li>\n");
      out.write("        <li><a href=\"../Home/index.jsp\">Home</a></li>\n");
      out.write("    </div>");
      out.write("\r\n");
      out.write("    <div id=\"mainPanel\" style=\"overflow-x:hidden;\">\r\n");
      out.write("        <h1>MANAGE LOCATION</h1>\r\n");
      out.write("        <table>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <th>No</th>\r\n");
      out.write("      <th>Nama Lokasi</th>\r\n");
      out.write("      <th>Action</th>\r\n");
      out.write("\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td>1</td>\r\n");
      out.write("      <td>Polban</td>\r\n");
      out.write("      <td><a href=\"#Update\" class=\"button1\">Update</a> <a href=\"#Delete\" class=\"button1\">Delete</a></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td>2</td>\r\n");
      out.write("      <td>Ciwaruga</td>\r\n");
      out.write("      <td><a href=\"#Update\">Update</a> <a href=\"#Delete\">Delete</a></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td>3</td>\r\n");
      out.write("      <td>Pasteur</td>\r\n");
      out.write("      <td><a href=\"#Update\">Update</a> <a href=\"#Delete\">Delete</a></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("    </div>\r\n");
      out.write("    <br>\r\n");
      out.write("    <br>\r\n");
      out.write("    <div class=\"form\">\r\n");
      out.write("            <form action=\"/action_page.php\">\r\n");
      out.write("            <label for=\"fname\">Location</label>\r\n");
      out.write("            <input type=\"text\" id=\"mLocation\" name=\"Location\" placeholder=\"Location...\">\r\n");
      out.write("            \r\n");
      out.write("            <input type=\"submit\" value=\"Add\">\r\n");
      out.write("            </form>\r\n");
      out.write("        </div> \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
