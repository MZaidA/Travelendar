package org.apache.jsp.DistancePage;

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Assets/css/manageStyle.css\"/>\r\n");
      out.write("        <title>Travlendar</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\t<div class=\"wrapper\">\r\n");
      out.write("        <li><strong>Admin</strong>TRAVELENDAR</li> \t\r\n");
      out.write("    </div>\r\n");
      out.write("\t<div id=\"sidebar\">\r\n");
      out.write("        <li><a href=\"../ManageLocation/index.jsp\">Manage Location</a></li>\r\n");
      out.write("        <li><a href=\"../DistancePage/index.jsp\">Manage Distance</a></li>\r\n");
      out.write("        <li><a href=\"../TransportationPage/index.jsp\">Manage Transport</a></li>\r\n");
      out.write("        <li><a href=\"../EstimatedTimePage/index.jsp\">Manage Estimated Time</a></li>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div id=\"mainPanel\" style=\"overflow-x:hidden;\">\r\n");
      out.write("        <h1>MANAGE DISTANCE</h1>\r\n");
      out.write("        <table>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <th>No</th>\r\n");
      out.write("            <th>Location A</th>\r\n");
      out.write("            <th>Location B</th>\r\n");
      out.write("            <th>Distance (KM)</th>\r\n");
      out.write("            <th>Action</th>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td>1</td>\r\n");
      out.write("            <td>Kantor DPRD</td>\r\n");
      out.write("            <td>Bandara Bangka</td>\r\n");
      out.write("            <td>60,9</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td>2</td>\r\n");
      out.write("            <td>Rumah</td>\r\n");
      out.write("            <td>Kantor DPRD</td>\r\n");
      out.write("            <td>65,7</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td>3</td>\r\n");
      out.write("            <td>Bandara Bangka</td>\r\n");
      out.write("            <td>Bandara Halim Perdanakusuma</td>\r\n");
      out.write("            <td>73,6</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("           <tr>\r\n");
      out.write("            <td>4</td>\r\n");
      out.write("            <td>Jakarta</td>\r\n");
      out.write("            <td>Tangerang</td>\r\n");
      out.write("            <td>31,3</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("           <tr>\r\n");
      out.write("            <td>5</td>\r\n");
      out.write("            <td>Bandara Bangka</td>\r\n");
      out.write("            <td>Rumah</td>\r\n");
      out.write("            <td>13,4</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("    </div>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("    <div class=\"form\">\r\n");
      out.write("            <form action=\"/action_page.php\">\r\n");
      out.write("            <label for=\"LocationA\">Location A</label>\t\r\n");
      out.write("            <select id=\"Locationa\" name=\"Locationa\">\r\n");
      out.write("              <option value=\"rumah\">Rumah</option>\r\n");
      out.write("              <option value=\"kantor_dprd\">Kantor DPRD</option>\r\n");
      out.write("              <option value=\"bandara_banka\">Bandara Banka</option>\r\n");
      out.write("              <option value=\"bandara_halim\">Bandara Halim Perdanakusuma</option>\r\n");
      out.write("              <option value=\"jakarta\">Jakarta</option>\r\n");
      out.write("              <option value=\"tangerang\">Tangerang</option>\r\n");
      out.write("            </select>\r\n");
      out.write("            <label for=\"LocationB\">Location B</label>\t\r\n");
      out.write("            <select id=\"Locationb\" name=\"Locationb\">\r\n");
      out.write("              <option value=\"rumah\">Rumah</option>\r\n");
      out.write("              <option value=\"kantor_dprd\">Kantor DPRD</option>\r\n");
      out.write("              <option value=\"bandara_banka\">Bandara Banka</option>\r\n");
      out.write("              <option value=\"bandara_halim\">Bandara Halim Perdanakusuma</option>\r\n");
      out.write("              <option value=\"jakarta\">Jakarta</option>\r\n");
      out.write("              <option value=\"tangerang\">Tangerang</option>\r\n");
      out.write("            </select>\r\n");
      out.write("            <label for=\"fname\">Distance</label>\r\n");
      out.write("              <input type=\"text\" id=\"mDistance\" name=\"Distance\" placeholder=\"Distance...\">\r\n");
      out.write("              <input type=\"submit\" value=\"Add\">\r\n");
      out.write("            </form>\r\n");
      out.write("        </div> \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
