package org.apache.jsp.EstimatedTimePage;

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
      out.write("        <h1>MANAGE ESTIMATED TIME</h1>\r\n");
      out.write("        <table>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <th>No</th>\r\n");
      out.write("            <th>Loc A - Loc B</th>\r\n");
      out.write("            <th>Transportaion Mode</th>\r\n");
      out.write("            <th>Time(Minutes)</th>\r\n");
      out.write("            <th>Action</th>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td>1</td>\r\n");
      out.write("            <td>Rumah - Kantor DPRD</td>\r\n");
      out.write("            <td>Walk</td>\r\n");
      out.write("            <td>788</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td>2</td>\r\n");
      out.write("            <td>Rumah - Kantor DPRD</td>\r\n");
      out.write("            <td>Bicycle</td>\r\n");
      out.write("            <td>263</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td>3</td>\r\n");
      out.write("            <td>Rumah - Kantor DPRD</td>\r\n");
      out.write("            <td>Motorcycle</td>\r\n");
      out.write("            <td>66</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("           <tr>\r\n");
      out.write("            <td>4</td>\r\n");
      out.write("            <td>Rumah - Kantor DPRD</td>\r\n");
      out.write("            <td>Car</td>\r\n");
      out.write("            <td>79</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("           <tr>\r\n");
      out.write("            <td>5</td>\r\n");
      out.write("            <td>Rumah - Kantor DPRD</td>\r\n");
      out.write("            <td>Angkot</td>\r\n");
      out.write("            <td>113</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("           <tr>\r\n");
      out.write("            <td>6</td>\r\n");
      out.write("            <td>Rumah - Kantor DPRD</td>\r\n");
      out.write("            <td>Ojek</td>\r\n");
      out.write("            <td>66</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("           <tr>\r\n");
      out.write("            <td>7</td>\r\n");
      out.write("            <td>Rumah - Kantor DPRD</td>\r\n");
      out.write("            <td>Taksi</td>\r\n");
      out.write("            <td>79</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("           <tr>\r\n");
      out.write("            <td>8</td>\r\n");
      out.write("            <td>Rumah - Kantor DPRD</td>\r\n");
      out.write("            <td>Bus</td>\r\n");
      out.write("            <td>99</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("           <tr>\r\n");
      out.write("            <td>9</td>\r\n");
      out.write("            <td>Rumah - Kantor DPRD</td>\r\n");
      out.write("            <td>Train</td>\r\n");
      out.write("            <td>41</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("           <tr>\r\n");
      out.write("            <td>10</td>\r\n");
      out.write("            <td>Rumah - Kantor DPRD</td>\r\n");
      out.write("            <td>Ship</td>\r\n");
      out.write("            <td>131</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("           <tr>\r\n");
      out.write("            <td>11</td>\r\n");
      out.write("            <td>Rumah - Kantor DPRD</td>\r\n");
      out.write("            <td>Plane</td>\r\n");
      out.write("            <td>4</td>\r\n");
      out.write("            <td><a href=\"#Update\">Update</a></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("    </div>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("    <div class=\"form\">\r\n");
      out.write("\t    \t<form action=\"/action_page.php\">\r\n");
      out.write("    \t\t<label for=\"LocationA\">Location A</label>\t\r\n");
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
      out.write("            <label for=\"fname\">Transportaion Mode</label>\r\n");
      out.write("            <input type=\"text\" id=\"mTransportation\" name=\"ModeTransportation\" placeholder=\"Transportation...\">            \r\n");
      out.write("            <label for=\"fname\">Time(Minutes)</label>\r\n");
      out.write("            <input type=\"text\" id=\"Time\" name=\"Time\" placeholder=\"Time(Minutes)...\">            \r\n");
      out.write("            <input type=\"submit\" value=\"Add\">\r\n");
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
