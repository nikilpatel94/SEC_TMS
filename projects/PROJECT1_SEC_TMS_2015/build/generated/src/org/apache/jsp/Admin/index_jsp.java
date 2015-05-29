package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import com.tms.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.io.InputStream;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.search.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Admin/Header.jsp");
    _jspx_dependants.add("/Admin/Footer.jsp");
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head  profile=\"http://www.w3.org/2005/10/profile\">\n");
      out.write("<link rel=\"icon\" \n");
      out.write("      type=\"image/png\" \n");
      out.write("      href=\"SEC.png\">\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Sahajanand Education center</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0\">\n");
      out.write("<link rel=\"icon\" \n");
      out.write("      type=\"image/png\" \n");
      out.write("      href=\"oie_transparent.png\">\n");
      out.write("\n");
      out.write("<!-- Open Sans font from Google CDN -->\n");
      out.write("<link href=\"http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&amp;subset=latin\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("<!-- Pixel Admin's stylesheets -->\n");
      out.write("<link href=\"assets/stylesheets/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"assets/javascripts/bootstrap-datepicker.js\" rel=\"stylesheet\" type=\"text/javascript\">\n");
      out.write("<link href=\"assets/stylesheets/datepicker.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"assets/stylesheets/pixel-admin.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"assets/stylesheets/widgets.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"assets/stylesheets/rtl.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"assets/stylesheets/themes.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("        <script src=\"assets/javascripts/ie.min.js\"></script>\n");
      out.write("<![endif]-->\n");
      out.write("<script>\n");
      out.write("            \n");
      out.write("            $(function() {\n");
      out.write("            \n");
      out.write("            //$(\".myCustomClass\").css(\"border\",\"1px solid BLUE\");\n");
      out.write("            $(\"#txtAttendanceDate\").datepicker();\n");
      out.write("            $(\"#datepicker1\").datepicker();            \n");
      out.write("            });\n");
      out.write("            \n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<body class=\"theme-default main-menu-animated\">\n");
      out.write("\n");
      out.write("    ");



      if(session.getAttribute("UserName")!=null)
      {
        if(session.getAttribute("utype")==null)
        {
             String utype=session.getAttribute("utype").toString(); 
             if(utype.equals("F"))
             {
                response.sendRedirect("../Faculty/index.jsp");
             }
             else if(utype.equals("S"))
             {
                response.sendRedirect("../Student/index.jsp");
             }
             else if(utype.equals("A"))
             {
             }
        }
      

      }
    else
                 
                 response.sendRedirect("../Admin/LoginFinal.jsp");

                 


      out.write("\n");
      out.write("    <script>    var init = [];</script>\n");
      out.write("    \n");
      out.write("<!--     Demo script  <script src=\"assets/demo/demo.js\"></script>   / Demo script -->\n");
      out.write("  \n");
      out.write("    <div id=\"main-wrapper\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- 2. $MAIN_NAVIGATION ===========================================================================\n");
      out.write("        \n");
      out.write("                Main navigation\n");
      out.write("        -->\n");
      out.write("          <div id=\"main-navbar\" class=\"navbar navbar-inverse\" role=\"navigation\">\n");
      out.write("            <!-- Main menu toggle -->\n");
      out.write("            <button type=\"button\" id=\"main-menu-toggle\"><i class=\"navbar-icon fa fa-bars icon\"></i><span class=\"hide-menu-text\">HIDE MENU</span></button>\n");
      out.write("\n");
      out.write("            <div class=\"navbar-inner\">\n");
      out.write("                <!-- Main navbar header -->\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("\n");
      out.write("                    <!-- Logo -->\n");
      out.write("                    <a href=\"index.jsp\" class=\"navbar-brand\">\n");
      out.write("                        <div><img alt=\"Pixel Admin\" src=\"assets/demo/avatars/seclogotry.png\" ></div>\n");
      out.write("                        S.E.C VVNagar\n");
      out.write("<!--                        <strong>Sahajanand Education Center</strong>-->\n");
      out.write("                    </a>\n");
      out.write("\n");
      out.write("                    <!-- Main navbar toggle -->\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#main-navbar-collapse\"><i class=\"navbar-icon fa fa-bars\"></i></button>\n");
      out.write("\n");
      out.write("                </div> <!-- / .navbar-header -->\n");
      out.write("                        \n");
      out.write("                <div id=\"main-navbar-collapse\" class=\"collapse navbar-collapse main-navbar-collapse\">\n");
      out.write("                      \n");
      out.write("   \n");
      out.write("<!--                        <div align=\"left\"> \n");
      out.write("                            <strong><h3>Sahajanand Education Center</h3> </strong>\n");
      out.write("                            <font color=\"red\">Sahajanand</font>\n");
      out.write("                            <font color=\"blue\">Education</font>\n");
      out.write("                            <font color=\"yellow\">Center</font>\n");
      out.write("                        </div>   -->\n");
      out.write("                    \n");
      out.write("                    <div>\n");
      out.write("                        <!-- / .navbar-nav -->\n");

                                    Date now = new Date(); // java.util.Date, NOT java.sql.Date or java.sql.Timestamp!
                                    //String format1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ").format(now);
                                    String format2 = new SimpleDateFormat("EEE, d MMM yy").format(now);
                                    String day=new SimpleDateFormat("EEEE").format(now);
                                     String format3 = new SimpleDateFormat("HH:mm:ss").format(now);
                                   // String format3 = new SimpleDateFormat("yyyyMMddHHmmss").format(now);
                                 
      out.write("\n");
      out.write("                                 \n");
      out.write("\n");
      out.write("\t\t\t\t\t\n");
      out.write("                       <div class=\"right clearfix\">\n");
      out.write("    <ul class=\"nav navbar-nav pull-right right-navbar-nav\">\n");
      out.write("<!--         3. $NAVBAR_ICON_BUTTONS =======================================================================\n");
      out.write("        Navbar Icon Buttons\n");
      out.write("                                \n");
      out.write("        NOTE: .nav-icon-btn triggers a dropdown menu on desktop screens only. On small screens .nav-icon-btn acts like a hyperlink.\n");
      out.write("        Classes:\n");
      out.write("        * 'nav-icon-btn-info'\n");
      out.write("        * 'nav-icon-btn-success'\n");
      out.write("        * 'nav-icon-btn-warning'\n");
      out.write("        * 'nav-icon-btn-danger' -->\n");
      out.write("        \n");
      out.write("     <li>    \n");
      out.write("\t\t\t\t\t\t\t\t<form class=\"navbar-form pull-left\">\n");
      out.write("                                                                    <label  class=\"form-control\">");
      out.print(format2);
      out.write("</label>\n");
      out.write("\t\t\t\t\t\t\t\t</form>\n");
      out.write("                               \t\t   </li>\n");
      out.write("                                <li class=\"dropdown\">\n");
      out.write("                                  \n");
      out.write("                                    <a href=\"#\" class=\"dropdown-toggle user-menu\" data-toggle=\"dropdown\">\n");
      out.write("                                        <img src=\"assets/demo/avatars/corpor1.png\"  alt=\"\">\n");
      out.write("                                        <span>ANIMEA</span>\n");
      out.write("                                    </a>\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                         <li><a href=\"Settings.jsp\"><i class=\"dropdown-icon fa fa-cog\"></i>&nbsp;&nbsp;Settings</a></li>\n");
      out.write("                                         <li><a href=\"LogOut.jsp\"><i class=\"dropdown-icon fa fa-power-off\"></i>&nbsp;&nbsp;Log Out</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                            </ul> <!-- / .navbar-nav -->\n");
      out.write("                        </div> <!-- / .right -->\n");
      out.write("                    </div>\n");
      out.write("                </div> <!-- / #main-navbar-collapse -->\n");
      out.write("            </div> <!-- / .navbar-inner -->\n");
      out.write("        </div> <!-- / #main-navbar -->\n");
      out.write("\n");
      out.write("<!--        <div id=\"main-navbar\" class=\"navbar navbar-inverse\" role=\"navigation\">\n");
      out.write("             Main menu toggle \n");
      out.write("            <button type=\"button\" id=\"main-menu-toggle\"><i class=\"navbar-icon fa fa-bars icon\"></i><span class=\"hide-menu-text\">HIDE MENU</span></button>\n");
      out.write("\n");
      out.write("            <div class=\"navbar-inner\">\n");
      out.write("                 Main navbar header \n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("\n");
      out.write("                     Logo \n");
      out.write("                    <a href=\"index.jsp\" class=\"collapse navbar-collapse main-navbar-collapse\">\n");
      out.write("                        <div align=\"center\"><img alt=\"SEC Admin\" src=\"assets/demo/avatars/sec.png\" ></div>\n");
      out.write("                        \n");
      out.write("                    </a>\n");
      out.write("\n");
      out.write("                     Main navbar toggle \n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#main-navbar-collapse\"><i class=\"navbar-icon fa fa-bars\"></i></button>\n");
      out.write("\n");
      out.write("                </div>  / .navbar-header \n");
      out.write("\n");
      out.write("                <div id=\"main-navbar-collapse\" class=\"collapse navbar-collapse main-navbar-collapse\">\n");
      out.write("                    <div align=\"center\">\n");
      out.write("                        <Strong>\n");
      out.write("                    <font size=\"5.5\" align=\"center\">Sahjanand Education Center</font>\n");
      out.write("                    </strong></div>\n");
      out.write("                    <div>\n");
      out.write("                         / .navbar-nav \n");

//                                    Date now = new Date(); // java.util.Date, NOT java.sql.Date or java.sql.Timestamp!
//                                    //String format1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ").format(now);
//                                    String format2 = new SimpleDateFormat("EEE, d MMM yy").format(now);
//                                    String day=new SimpleDateFormat("EEEE").format(now);
//                                     String format3 = new SimpleDateFormat("HH:mm:ss").format(now);
                                   // String format3 = new SimpleDateFormat("yyyyMMddHHmmss").format(now);
                                 
      out.write("\n");
      out.write("                        \n");
      out.write("     Here goes unread mails and details\n");
      out.write("\n");
      out.write("<div class=\"right clearfix\">\n");
      out.write("    <ul class=\"nav navbar-nav pull-right right-navbar-nav\">\n");
      out.write("         3. $NAVBAR_ICON_BUTTONS =======================================================================\n");
      out.write("        Navbar Icon Buttons\n");
      out.write("                                \n");
      out.write("        NOTE: .nav-icon-btn triggers a dropdown menu on desktop screens only. On small screens .nav-icon-btn acts like a hyperlink.\n");
      out.write("        Classes:\n");
      out.write("        * 'nav-icon-btn-info'\n");
      out.write("        * 'nav-icon-btn-success'\n");
      out.write("        * 'nav-icon-btn-warning'\n");
      out.write("        * 'nav-icon-btn-danger' \n");
      out.write("        \n");
      out.write("     <li>    \n");
      out.write("\t\t\t\t\t\t\t\t<form class=\"navbar-form pull-left\">\n");
      out.write("                                                                    <label  class=\"form-control\"></label>\n");
      out.write("\t\t\t\t\t\t\t\t</form>\n");
      out.write("                               \t\t   </li>\n");
      out.write("                                <li class=\"dropdown\">\n");
      out.write("                                  \n");
      out.write("                                    <a href=\"#\" class=\"dropdown-toggle user-menu\" data-toggle=\"dropdown\">\n");
      out.write("                                        <img src=\"assets/demo/avatars/corpor1.png\"  alt=\"\">\n");
      out.write("                                        <span>ANIMEA</span>\n");
      out.write("                                    </a>\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                         <li><a href=\"Settings.jsp\"><i class=\"dropdown-icon fa fa-cog\"></i>&nbsp;&nbsp;Settings</a></li>\n");
      out.write("                                         <li><a href=\"LogOut.jsp\"><i class=\"dropdown-icon fa fa-power-off\"></i>&nbsp;&nbsp;Log Out</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>  / .navbar-nav \n");
      out.write("                        </div>  / .right \n");
      out.write("                    </div>\n");
      out.write("                </div>  / #main-navbar-collapse \n");
      out.write("            </div>  / .navbar-inner \n");
      out.write("        </div>  / #main-navbar -->\n");
      out.write("        <!-- /2. $END_MAIN_NAVIGATION -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- 4. $MAIN_MENU =================================================================================\n");
      out.write("        \n");
      out.write("                        Main menu\n");
      out.write("                        \n");
      out.write("                        Notes:\n");
      out.write("                        * to make the menu item active, add a class 'active' to the <li>\n");
      out.write("                          example: <li class=\"active\">...</li>\n");
      out.write("                        * multilevel submenu example:\n");
      out.write("                                <li class=\"mm-dropdown\">\n");
      out.write("                                  <a href=\"#\"><span class=\"mm-text\">Submenu item text 1</span></a>\n");
      out.write("                                  <ul>\n");
      out.write("                                        <li>...</li>\n");
      out.write("                                        <li class=\"mm-dropdown\">\n");
      out.write("                                          <a href=\"#\"><span class=\"mm-text\">Submenu item text 2</span></a>\n");
      out.write("                                          <ul>\n");
      out.write("                                                <li>...</li>\n");
      out.write("                                                ...\n");
      out.write("                                          </ul>\n");
      out.write("                                        </li>\n");
      out.write("                                        ...\n");
      out.write("                                  </ul>\n");
      out.write("                                </li>\n");
      out.write("        -->\n");
      out.write("       <div id=\"main-menu\" role=\"navigation\">\n");
      out.write("\t\t<div id=\"main-menu-inner\">\n");
      out.write("\t\t\t<div class=\"menu-content top\" id=\"menu-content-demo\">\n");
      out.write("\t\t\t\t<!-- Menu custom content demo\n");
      out.write("\t\t\t\t\t CSS:        styles/pixel-admin-less/demo.less or styles/pixel-admin-scss/_demo.scss\n");
      out.write("\t\t\t\t\t Javascript: html/assets/demo/demo.js\n");
      out.write("\t\t\t\t -->\n");
      out.write("                                 <div>\n");
      out.write("\t\t\t\t\t<div class=\"text-bg\"><span class=\"text-slim\">Welcome,</span> <span class=\"text-semibold\">ANIMEA</span></div>\n");
      out.write("\n");
      out.write("                                        <img src=\"assets/demo/avatars/corpor1.png\" alt=\"\" class=\"\">\n");
      out.write("\t\t\t\t\t<div class=\"btn-group\">\n");
      out.write("\t\t\t\t\t\t<a href=\"SendMail.jsp\"  class=\"btn btn-xs btn-primary btn-outline dark\"><i class=\"fa fa-envelope\"></i></a>\n");
      out.write("<!--\t\t\t\t\t\t<a href=\"#\" class=\"btn btn-xs btn-primary btn-outline dark\"><i class=\"fa fa-user\"></i></a>-->\n");
      out.write("\t\t\t\t\t\t<a href=\"Settings.jsp\" class=\"btn btn-xs btn-primary btn-outline dark\"><i class=\"fa fa-cog\"></i></a>\n");
      out.write("\t\t\t\t\t\t<a href=\"LogOut.jsp\" class=\"btn btn-xs btn-danger btn-outline dark\"><i class=\"fa fa-power-off\"></i></a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                        </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("                    \n");
      out.write("                <ul class=\"navigation\">\n");
      out.write("                    <li class=\"mm-dropdown\">\n");
      out.write("                        <a href=\"#\"><i class=\"menu-icon fa fa-sitemap\"></i><span class=\"mm-text\">Faculty Management</span></a>\n");
      out.write("                        <ul>\n");
      out.write("                            <li>\n");
      out.write("                                <a tabindex=\"-1\" href=\"DisplayFaculty.jsp\"><span class=\"mm-text\">Faculty Detail</span></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a tabindex=\"-1\" href=\"DisplaFacultySubject.jsp \"><span class=\"mm-text\">Faculty Subject Detail</span></a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <!--<li>\n");
      out.write("                        <a href=\"DisplayFaculty.jsp\"><i class=\"menu-icon fa fa-dashboard\"></i><span class=\"mm-text\">Faculty Management</span></a>\n");
      out.write("                    </li>-->\n");
      out.write("                    <li class=\"mm-dropdown\">\n");
      out.write("                        <a href=\"#\"><i class=\"menu-icon fa fa-files-o\"></i><span class=\"mm-text\">Subject Management</span></a>\n");
      out.write("                        <ul>\n");
      out.write("                            <li>\n");
      out.write("                                <a tabindex=\"-1\" href=\"DisplaySubject.jsp\"><span class=\"mm-text\">Subject Detail</span></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a tabindex=\"-1\" href=\"DisplaySubjectChoice.jsp\"><span class=\"mm-text\">Subject Choice</span></a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <!--<li>\n");
      out.write("                            <a href=\"stat-panels.html\"><i class=\"menu-icon fa fa-tasks\"></i><span class=\"mm-text\">Stat panels</span></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                            <a href=\"widgets.html\"><i class=\"menu-icon fa fa-flask\"></i><span class=\"mm-text\">Widgets</span></a>\n");
      out.write("                    </li>-->\n");
      out.write("                    <li class=\"mm-dropdown\">\n");
      out.write("                        <a href=\"#\"><i class=\"menu-icon fa fa-flask\"></i><span class=\"mm-text\">Student Management</span></a>\n");
      out.write("                        <ul>\n");
      out.write("                            <li>\n");
      out.write("                                <a tabindex=\"-1\" href=\"DisplayStudent.jsp\"><span class=\"mm-text\">Student Detail</span></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a tabindex=\"-1\" href=\"DisplayStudentFee.jsp\"><span class=\"mm-text\">Student Fee</span></a>\n");
      out.write("                            </li>\n");
      out.write("                            <!--<li>\n");
      out.write("                                    <a tabindex=\"-1\" href=\"ui-tabs.html\"><span class=\"mm-text\">Tabs &amp; Accordions</span></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                    <a tabindex=\"-1\" href=\"ui-modals.html\"><span class=\"mm-text\">Modals</span></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                    <a tabindex=\"-1\" href=\"ui-alerts.html\"><span class=\"mm-text\">Alerts &amp; Tooltips</span></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                    <a tabindex=\"-1\" href=\"ui-components.html\"><span class=\"mm-text\">Components</span></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                    <a tabindex=\"-1\" href=\"ui-panels.html\"><span class=\"mm-text\">Panels</span></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                    <a tabindex=\"-1\" href=\"ui-jqueryui.html\"><span class=\"mm-text\">jQuery UI</span></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                    <a tabindex=\"-1\" href=\"ui-icons.html\"><span class=\"mm-text\">Icons</span></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                    <a tabindex=\"-1\" href=\"ui-utility-classes.html\"><span class=\"mm-text\">Utility classes</span></a>\n");
      out.write("                            </li>-->\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <!--<li class=\"mm-dropdown\">\n");
      out.write("                            <a href=\"#\"><i class=\"menu-icon fa fa-check-square\"></i><span class=\"mm-text\">Form components</span></a>\n");
      out.write("                            <ul>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"forms-layouts.html\"><span class=\"mm-text\">Layouts</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"forms-general.html\"><span class=\"mm-text\">General</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"forms-advanced.html\"><span class=\"mm-text\">Advanced</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"forms-pickers.html\"><span class=\"mm-text\">Pickers</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"forms-validation.html\"><span class=\"mm-text\">Validation</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"forms-editors.html\"><span class=\"mm-text\">Editors</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                            </ul>-->\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"DisplayTimeTable.jsp\"><i class=\"menu-icon fa fa-table\"></i><span class=\"mm-text\">TimeTable Management</span></a>\n");
      out.write("                    </li>\n");
      out.write("                      <li>\n");
      out.write("                        <a href=\"DisplayNewsEvent.jsp\"><i class=\"menu-icon fa fa-desktop\"></i><span class=\"mm-text\">News & Event</span></a>\n");
      out.write("                    </li>\n");
      out.write("                    \n");
      out.write("                    <!--<li>\n");
      out.write("                            <a href=\"charts.html\"><i class=\"menu-icon fa fa-bar-chart-o\"></i><span class=\"mm-text\">Charts</span></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"mm-dropdown\">\n");
      out.write("                            <a href=\"#\"><i class=\"menu-icon fa fa-files-o\"></i><span class=\"mm-text\">Pages</span><span class=\"label label-success\">16</span></a>\n");
      out.write("                            <ul>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"pages-search.html\"><span class=\"mm-text\">Search results</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"pages-pricing.html\"><span class=\"mm-text\">Plans &amp; pricing</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"pages-faq.html\"><span class=\"mm-text\">FAQ</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"pages-profile.html\"><span class=\"mm-text\">Profile</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"pages-timeline.html\"><span class=\"mm-text\">Timeline</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"pages-signin.html\"><span class=\"mm-text\">Sign In</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"pages-signup.html\"><span class=\"mm-text\">Sign Up</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"pages-signin-alt.html\"><span class=\"mm-text\">Sign In Alt</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"pages-signup-alt.html\"><span class=\"mm-text\">Sign Up Alt</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"pages-invoice.html\"><span class=\"mm-text\">Invoice</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"pages-404.html\"><span class=\"mm-text\">Error 404</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"pages-500.html\"><span class=\"mm-text\">Error 500</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"mm-dropdown\">\n");
      out.write("                                            <a href=\"#\"><i class=\"menu-icon fa fa-envelope\"></i><span class=\"mm-text\">Messages</span></a>\n");
      out.write("                                            <ul>\n");
      out.write("                                                    <li>\n");
      out.write("                                                            <a tabindex=\"-1\" href=\"pages-inbox.html\"><span class=\"mm-text\">Inbox</span></a>\n");
      out.write("                                                    </li>\n");
      out.write("                                                    <li>\n");
      out.write("                                                            <a tabindex=\"-1\" href=\"pages-show-email.html\"><span class=\"mm-text\">Show message</span></a>\n");
      out.write("                                                    </li>\n");
      out.write("                                                    <li>\n");
      out.write("                                                            <a tabindex=\"-1\" href=\"pages-new-email.html\"><span class=\"mm-text\">New message</span></a>\n");
      out.write("                                                    </li>\n");
      out.write("                                            </ul>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"pages-blank.html\"><span class=\"mm-text\">Blank page</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                            </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                            <a href=\"complete-ui.html\"><i class=\"menu-icon fa fa-briefcase\"></i><span class=\"mm-text\">Complete UI</span></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                            <a href=\"color-builder.html\"><i class=\"menu-icon fa fa-tint\"></i><span class=\"mm-text\">Color Builder</span></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"mm-dropdown\">\n");
      out.write("                            <a href=\"#\"><i class=\"menu-icon fa fa-sitemap\"></i><span class=\"mm-text\">Menu levels</span><span class=\"badge badge-primary\">6</span></a>\n");
      out.write("                            <ul>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"#\"><span class=\"mm-text\">Menu level 1.1</span><span class=\"badge badge-danger\">12</span><span class=\"label label-info\">21</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                            <a tabindex=\"-1\" href=\"#\"><span class=\"mm-text\">Menu level 1.2</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"mm-dropdown\">\n");
      out.write("                                            <a tabindex=\"-1\" href=\"#\"><span class=\"mm-text\">Menu level 1.3</span><span class=\"label label-warning\">5</span></a>\n");
      out.write("                                            <ul>\n");
      out.write("                                                    <li>\n");
      out.write("                                                            <a tabindex=\"-1\" href=\"#\"><span class=\"mm-text\">Menu level 2.1</span></a>\n");
      out.write("                                                    </li>\n");
      out.write("                                                    <li class=\"mm-dropdown\">\n");
      out.write("                                                            <a tabindex=\"-1\" href=\"#\"><span class=\"mm-text\">Menu level 2.2</span></a>\n");
      out.write("                                                            <ul>\n");
      out.write("                                                                    <li class=\"mm-dropdown\">\n");
      out.write("                                                                            <a tabindex=\"-1\" href=\"#\"><span class=\"mm-text\">Menu level 3.1</span></a>\n");
      out.write("                                                                            <ul>\n");
      out.write("                                                                                    <li>\n");
      out.write("                                                                                            <a tabindex=\"-1\" href=\"#\"><span class=\"mm-text\">Menu level 4.1</span></a>\n");
      out.write("                                                                                    </li>\n");
      out.write("                                                                            </ul>\n");
      out.write("                                                                    </li>\n");
      out.write("                                                                    <li>\n");
      out.write("                                                                            <a tabindex=\"-1\" href=\"#\"><span class=\"mm-text\">Menu level 3.2</span></a>\n");
      out.write("                                                                    </li>\n");
      out.write("                                                            </ul>\n");
      out.write("                                                    </li>\n");
      out.write("                                                    <li>\n");
      out.write("                                                            <a tabindex=\"-1\" href=\"#\"><span class=\"mm-text\">Menu level 2.2</span></a>\n");
      out.write("                                                    </li>\n");
      out.write("                                            </ul>\n");
      out.write("                                    </li>\n");
      out.write("                            </ul>\n");
      out.write("                    </li>-->\n");
      out.write("                </ul> <!-- / .navigation -->\n");
      out.write("                <div class=\"menu-content\" target=\"content-wrapper\">\n");
      out.write("                        <a href=\"InvoicePage.jsp\" class=\"btn btn-primary btn-block btn-outline dark\">Create Invoice</a>\n");
      out.write("                </div>\n");
      out.write("            </div> <!-- / #main-menu-inner -->\n");
      out.write("        </div> <!-- / #main-menu -->\n");
      out.write("        <!-- /4. $MAIN_MENU -->\n");
      out.write("\n");
      out.write("        <div id=\"content-wrapper\">");
      out.write("\n");
      out.write("                  ");

            GenFun genobj= new GenFun();
        try
                {
            if(request.getParameter("resid")!=null && request.getParameter("str")!=null)
            {
                if(request.getParameter("str").toString().equals("Success"))
                {
            
                 if(request.getParameter("resid").toString().equals("2"))
                 {
                 
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"alert  alert-success alert-dismissible\" role=\"alert\">\n");
      out.write("  <button type=\"button\" class=\"close\" data-dismiss=\"alert\"><span aria-hidden=\"true\">&times;</span><span class=\"sr-only\">Close</span></button>\n");
      out.write("  <strong>Success!</strong> Request Updated Successfully with appropriate feedback !!!.\n");
      out.write("</div>\n");
      out.write("                ");


                }

            else if(request.getParameter("resid").toString().equals("3"))
                {
                 
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"alert  alert-success alert-dismissible\" role=\"alert\">\n");
      out.write("  <button type=\"button\" class=\"close\" data-dismiss=\"alert\"><span aria-hidden=\"true\">&times;</span><span class=\"sr-only\">Close</span></button>\n");
      out.write("  <strong>Success!</strong> Student Deleted Successfully!!!.\n");
      out.write("</div>\n");
      out.write("                ");


                }
            else
                {

                }
                }
                else
                {
      out.write("\n");
      out.write("             <div class=\"alert  alert-danger alert-dismissible\" role=\"alert\">\n");
      out.write("  <button type=\"button\" class=\"close\" data-dismiss=\"alert\"><span aria-hidden=\"true\">&times;</span><span class=\"sr-only\">Close</span></button>\n");
      out.write("  <strong>Error!</strong>");
      out.print(request.getParameter("str").toString());
      out.write("\n");
      out.write("    </div>              \n");
      out.write("                ");
}
            }
}
        catch(Exception ex)
                {
      out.write("\n");
      out.write("            <div class=\"alert  alert-danger alert-dismissible\" role=\"alert\">\n");
      out.write("  <button type=\"button\" class=\"close\" data-dismiss=\"alert\"><span aria-hidden=\"true\">&times;</span><span class=\"sr-only\">Close</span></button>\n");
      out.write("  <strong>Error!</strong> ");
 ex.printStackTrace(); 
      out.write(" !!!.\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("          ");
}
        
        String buildtable="";
        try{
        if(request.getParameter("btnProceed")!=null)
        {
        if(request.getParameter("btnProceed").equals("Search"))
        {
        String drpsearch="";
        String searchvalue="";
        drpsearch=request.getParameter("drpSearchBy");
        searchvalue=request.getParameter("txtSearchValue");
        buildtable=genobj.filltbl("select Id,Name,MobileNo,Email,RequestFor,Status from requestmaster where "+drpsearch+" LIKE '%"+searchvalue+"%'", 7, "RequestMaster");
        }
        else if(request.getParameter("btnProceed").equals("View All"))
        {
         buildtable=genobj.filltbl("select Id,Name,MobileNo,Email,RequestFor,Status from requestmaster",7 , "RequestMaster");
        }
        else
        {
         buildtable=genobj.filltbl("select Id,Name,MobileNo,Email,RequestFor,Status from requestmaster where Status='pending'",7 , "RequestMaster");
        }


    }
else
    {
     buildtable=genobj.filltbl("select Id,Name,MobileNo,Email,RequestFor,Status from requestmaster where Status='pending'",7 , "RequestMaster");
    }
        
        }catch(Exception ex)
        {
            System.out.println(ex);
        }
        
      out.write("\n");
      out.write("        <form action=\"index.jsp\" class=\"panel form-horizontal\">\n");
      out.write("\n");
      out.write("            <div class=\"panel-heading\">\n");
      out.write("                <strong><span class=\"panel-title\">Request Details</span></strong>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"panel-body\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                </div>\n");
      out.write("                <hr class=\"no-grid-gutter-h grid-gutter-margin-b no-margin-t\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                        <div class=\"form-group no-margin-hr\">\n");
      out.write("                            <label class=\"control-label\">Search By:</label>\n");
      out.write("                            <select id=\"drpSearchBy\" name=\"drpSearchBy\" class=\"form-control\">\n");
      out.write("                                <option value=\"Id\">Id</option>\n");
      out.write("                                <option value=\"Name\">Name</option>\n");
      out.write("                                <option value=\"MobileNo\">Mobile No.</option>\n");
      out.write("                                <option value=\"Email\">Email ID.</option>                             \n");
      out.write("                                <option value=\"RequestFor\">Request for</option>\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                    </div><!-- col-sm-6 -->\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                        <div class=\"form-group no-margin-hr\">\n");
      out.write("                            <label class=\"control-label\">Search Value:</label>\n");
      out.write("                            <input type=\"text\" name=\"txtSearchValue\" id=\"txtSearchValue\" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("                    </div><!-- col-sm-6 -->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-12 text-center-sm\">\n");
      out.write("                        <input id=\"btnSearch\" name=\"btnProceed\" type=\"submit\" class=\"btn btn-sm btn-labeled btn-success\" value=\"Search\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id=\"btnViewAll\" name=\"btnProceed\" type=\"submit\" value=\"View All\" />\n");
      out.write("                    </div><!-- col-sm-6 -->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"panel-footer text-center\">\n");
      out.write("                <label class=\"control-label\" >Pending Requests</label>\n");
      out.write("                <br>\n");
      out.write("                <table class=\"table table-bordered table-hover\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th class=\"text-center\">Select</th>\n");
      out.write("                            <th class=\"text-center\">No</th>\n");
      out.write("                            <th class=\"text-center\">Name</th>\n");
      out.write("                            <th class=\"text-center\">Contact No</th>\n");
      out.write("                            <th class=\"text-center\">Email</th>\n");
      out.write("                            <th class=\"text-center\">Request For</th>\n");
      out.write("                            <th class=\"text-center\">Status</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                          ");

                       out.print(buildtable);
                       out.flush();
                                       
                        
      out.write("\n");
      out.write("                       </tbody>\n");
      out.write("                </table>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("                       \n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            \n");
            
        try{
    
     buildtable=genobj.filltbl("select  StudentId, StudentName, StudentAddress, StudentEmail, StudentContactNo, StudentDOB, StudentParentName, StudentParentContactNo, StudentParentEmail, StudentSchool,  StudentType, Std from `db_sec_tms`.`studentmaster_temp` ",13 ,"RegiterStudentRequest");
     
        }catch(Exception ex)
        {
            System.out.println(ex);
        }
        
      out.write("\n");
      out.write("   \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        \n");
      out.write("<!--            <div class=\"panel-footer text-center\">\n");
      out.write("            <label class=\"control-label\" >Registration Requests</label>\n");
      out.write("           \n");
      out.write("                <table class=\"table table-bordered table-hover\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th class=\"text-center\">Select</th>\n");
      out.write("                            <th class=\"text-center\">No</th>\n");
      out.write("                            <th class=\"text-center\">Name</th>\n");
      out.write("                            <th class=\"text-center\">Address</th>\n");
      out.write("                            <th class=\"text-center\">Email</th>\n");
      out.write("                            <th class=\"text-center\">Contact No</th>\n");
      out.write("                            <th class=\"text-center\">DOB</th>\n");
      out.write("                            <th class=\"text-center\">Contact No</th>\n");
      out.write("                            <th class=\"text-center\">Parent Contact</th>\n");
      out.write("                            <th class=\"text-center\">Parent Email</th>\n");
      out.write("                            <th class=\"text-center\">School</th>\n");
      out.write("                            <th class=\"text-center\">Type</th>\n");
      out.write("                            <th class=\"text-center\">Std</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                          ");

 //                       out.print(buildtable);
   //                    out.flush();
                                       
                        
      out.write("\n");
      out.write("                       </tbody>\n");
      out.write("                </table>\n");
      out.write("\n");
      out.write("            </div>-->\n");
      out.write("            \n");
      out.write("        </form>        \n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("</div> <!-- / #content-wrapper -->\n");
      out.write("<div id=\"main-menu-bg\"></div>\n");
      out.write("</div> <!-- / #main-wrapper -->\n");
      out.write("\n");
      out.write("<!-- Get jQuery from Google CDN -->\n");
      out.write("<!--[if !IE]> -->\n");
      out.write("<script type=\"text/javascript\">\t    window.jQuery || document.write('<script src=\"assets/javascripts/jquery.min.js\">' + \"<\" + \"/script>\"); </script>\n");
      out.write("<!-- <![endif]-->\n");
      out.write("<!--[if lte IE 9]>\n");
      out.write("        <script type=\"text/javascript\"> window.jQuery || document.write('<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js\">'+\"<\"+\"/script>\"); </script>\n");
      out.write("<![endif]-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Pixel Admin's javascripts -->\n");
      out.write("<script src=\"assets/javascripts/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"assets/javascripts/pixel-admin.min.js\"></script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\tinit.push(function () {\n");
      out.write("\t\t// Javascript code here\n");
      out.write("\t})\n");
      out.write("\twindow.PixelAdmin.start(init);\n");
      out.write("</script>\n");
      out.write("\n");
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
