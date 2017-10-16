package org.apache.jsp.Home;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DAO.EventDAO;
import Model.Event;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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

        List<Event> events = EventDAO.getAll();
        request.setAttribute("events", events);
        System.out.println(events.get(0).getArrivalDateStr());
        
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
      out.write("        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        \r\n");
      out.write("<!--        <div class=\"boxstyle11\">\r\n");
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
      out.write("      </div>-->\r\n");
      out.write("    \r\n");
      out.write("<!--      <div class=\"boxstyle11\">\r\n");
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
      out.write("      </div>-->\r\n");
      out.write("      \r\n");
      out.write("<!--        <div class=\"boxstyle11\">\r\n");
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
      out.write("            </div>-->\r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("<!--          <div class=\"boxstyle11\">\r\n");
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
      out.write("        </div>-->\r\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${events}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("item");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("        <div class=\"boxstyle1\">\r\n");
          out.write("            <div class=\"row\">\r\n");
          out.write("                <div class=\"column\">\r\n");
          out.write("                    <div class=\"t3\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.eventName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</div>\r\n");
          out.write("                    <div class=\"t4\">Time: ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.arrivalDateStr}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(' ');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.arrivalTimeStr}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" - ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.endTimeStr}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</div>\r\n");
          out.write("                </div>\r\n");
          out.write("                <div class=\"column2\">\r\n");
          out.write("                    SUGGESTION\r\n");
          out.write("                </div>\r\n");
          out.write("                <div class=\"column3\">\r\n");
          out.write("                    <div class=\"dropdown\">\r\n");
          out.write("                        <button class=\"dropbtn\">Event Details</button>\r\n");
          out.write("                        <div class=\"dropdown-content\">\r\n");
          out.write("                          ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.description}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                        </div>\r\n");
          out.write("                    </div>\r\n");
          out.write("                </div>\r\n");
          out.write("            </div>\r\n");
          out.write("        </div>\r\n");
          out.write("        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
