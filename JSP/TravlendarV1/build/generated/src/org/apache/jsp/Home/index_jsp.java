package org.apache.jsp.Home;

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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>Travlendar</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../Assets/css/Style.css\"/>\r\n");
      out.write("<link href=\"../Assets/font?family=Anton|Acme|Boogaloo|Chewy|Glegoo\" rel=\"stylesheet\"/>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("    ");

        String userName = request.getParameter("username");
        
      out.write("\r\n");
      out.write("    \r\n");
      out.write("<div class=\"header\">\r\n");
      out.write("<img src=\"../Assets/icon/Logo KelompokB1v2.png\" width=\"145\" height=\"50\" style=\"margin-left:30px;\">\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"navbar\">\r\n");
      out.write("        <ul>\r\n");
      out.write("          <li class=\"selected\"><a href=\"../Home\"><img src=\"../Assets/icon/home.png\" width=\"30\" height=\"30\" style=\"float:left;\"><div class=\"text-navbar\">Home</div></a></li>\r\n");
      out.write("          <li><a href=\"../Calendar\"><img src=\"../Assets/icon/calendar1.png\" width=\"28\" height=\"28\" style=\"float:left;\"><div class=\"text-navbar\">Calendar</div></a></li>\r\n");
      out.write("          <li><a href=\"../CreateAgenda\"><img src=\"../Assets/icon/add.png\" width=\"28\" height=\"28\" style=\"float:left;\"><div class=\"text-navbar\">Add Agenda</div></a></li>\r\n");
      out.write("          <li><a href=\"../ManageLocation\"><img src=\"../Assets/icon/manage.png\" width=\"28\" height=\"28\" style=\"float:left;\"><div class=\"text-navbar\">Manage</div></a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    </div><!--Class Navbar-->\r\n");
      out.write("\r\n");
      out.write("    <div class=\"column content\">\r\n");
      out.write("    <h1> Upcoming Event </h1>\r\n");
      out.write("        <div class=\"boxstyle1\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"column\">\r\n");
      out.write("                    <div class=\"t3\">Ke Kantor DPRD Banka</div>\r\n");
      out.write("                    <div class=\"t4\">Time: 20/09/2017 06:45 - 08:30</div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"column2\">\r\n");
      out.write("                    SUGGESTION\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"column3\">\r\n");
      out.write("                    <div class=\"dropdown\">\r\n");
      out.write("                        <button class=\"dropbtn\">Event Details</button>\r\n");
      out.write("                        <div class=\"dropdown-content\">\r\n");
      out.write("                          Keterangan\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"boxstyle11\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"column\">\r\n");
      out.write("                    <div class=\"t3\">Ke bandara</div>\r\n");
      out.write("                    <div class=\"t4\">Time: 20/09/2017 10:00 - 11:00</div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"column2\">\r\n");
      out.write("                    SUGGESTION\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"column3\">\r\n");
      out.write("                    <div class=\"dropdown\">\r\n");
      out.write("                        <button class=\"dropbtn\">Event Details</button>\r\n");
      out.write("                        <div class=\"dropdown-content\">\r\n");
      out.write("                          Keterangan\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    \r\n");
      out.write("      <div class=\"boxstyle11\">\r\n");
      out.write("      \t<div class=\"row\">\r\n");
      out.write("        \t<div class=\"column\">\r\n");
      out.write("                    <div class=\"t3\">Ke Bandara Halim Perdanakusuma<br></div>\r\n");
      out.write("                    <div class=\"t4\">Time: 20/09/2017 13:00 - 17:00</div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"column2\" style=\"margin-top:2%;text-align:center;color:white;\">\r\n");
      out.write("                    SUGGESTION\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"column3\">\r\n");
      out.write("                    <div class=\"dropdown\">\r\n");
      out.write("                        <button class=\"dropbtn\">Event Details</button>\r\n");
      out.write("                        <div class=\"dropdown-content\">\r\n");
      out.write("                          Keterangan\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    \r\n");
      out.write("      <div class=\"boxstyle11\">\r\n");
      out.write("      <div class=\"row\">\r\n");
      out.write("                <div class=\"column\">\r\n");
      out.write("                    <div class=\"t3\">Ke Tangerang<br></div>\r\n");
      out.write("                    <div class=\"t4\">Time: 20/09/2017 18:00 - 20:00</div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"column2\" style=\"margin-top:2%;text-align:center;color:white;\">\r\n");
      out.write("                    SUGGESTION\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"column3\">\r\n");
      out.write("                    <div class=\"dropdown\">\r\n");
      out.write("                        <button class=\"dropbtn\">Event Details</button>\r\n");
      out.write("                        <div class=\"dropdown-content\">\r\n");
      out.write("                          Keterangan\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("        <div class=\"boxstyle11\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"column\">\r\n");
      out.write("                    <div class=\"t3\">Ke Bandara Halim Perdanakusuma <br></div>\r\n");
      out.write("                    <div class=\"t4\">Time: 20/09/2017 21:00 - 22:00</div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"column2\" style=\"margin-top:2%;text-align:center;color:white;\">\r\n");
      out.write("                    SUGGESTION\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"column3\">\r\n");
      out.write("                    <div class=\"dropdown\">\r\n");
      out.write("                        <button class=\"dropbtn\">Event Details</button>\r\n");
      out.write("                        <div class=\"dropdown-content\">\r\n");
      out.write("                          Keterangan\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("          <div class=\"boxstyle11\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"column\">\r\n");
      out.write("                    <div class=\"t3\">Ke Rumah<br></div>\r\n");
      out.write("                    <div class=\"t4\">Time: 20/09/2017 21:00 - 22:00</div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"column2\" style=\"margin-top:2%;text-align:center;color:white;\">\r\n");
      out.write("                    SUGGESTION\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"column3\">\r\n");
      out.write("                         <div class=\"dropdown\">\r\n");
      out.write("                        <button class=\"dropbtn\">Event Details</button>\r\n");
      out.write("                        <div class=\"dropdown-content\">\r\n");
      out.write("                          Keterangan\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\t\t\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("<div class=\"footer\">\r\n");
      out.write("Travlender 2017\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
