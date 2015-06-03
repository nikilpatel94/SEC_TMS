package org.apache.jsp.Faculty;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import com.tms.*;
import java.util.List;
import com.tms.DBCon;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Faculty/Header.jsp");
    _jspx_dependants.add("/Faculty/Footer.jsp");
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
      out.write("      href=\"SEC.jpg\">\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Sahajanand Education center</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
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
      out.write("\n");
      out.write("<script src=\"assets/javascripts/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("<link href=\"assets/javascripts/bootstrap-datepicker.js\" rel=\"stylesheet\" type=\"text/javascript\">\n");
      out.write("\n");
      out.write("<!-- Open Sans font from Google CDN -->\n");
      out.write("<link href=\"http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&amp;subset=latin\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"assets/stylesheets/pages.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"assets/stylesheets/datepicker.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<!-- Pixel Admin's stylesheets -->\n");
      out.write("<link href=\"assets/stylesheets/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"assets/stylesheets/pixel-admin.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"assets/stylesheets/widgets.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"assets/stylesheets/rtl.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"assets/stylesheets/themes.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"assets/stylesheets/checkbox.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("            \n");
      out.write("            \n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("        <script src=\"assets/javascripts/ie.min.js\"></script>\n");
      out.write("<![endif]-->\n");
      out.write("<body body onload=\"display_ct();\" class=\"theme-default main-menu-animated\">\n");

    if(session.getAttribute("UserName")!=null)
    {
        if(session.getAttribute("utype")==null)
        {
            String utype=session.getAttribute("utype").toString();
            if(utype.equals("A"))
            {
                response.sendRedirect("../Admin/index.jsp");
            }
            else if(utype.equals("F"))
            {
                
            
                //response.sendRedirect("../Faculty/index.jsp");
            
            }
            if(utype.equals("S"))
            {
                response.sendRedirect("../Student/index.jsp");
            }
        }
    }
    
    else
            response.sendRedirect("../Admin/LoginFinal.jsp");
        

      out.write("\n");
      out.write("    \n");
      out.write("   \n");
      out.write("    \n");
      out.write("    \n");
      out.write("\n");
      out.write("    <script>    var init = [];</script>\n");
      out.write("    \n");
      out.write("<!--     Demo script  <script src=\"assets/demo/demo.js\"></script>   / Demo script -->\n");
      out.write("  ");
           DBCon conobj=new DBCon();
               String fid="";
               String fname="";
               String funame="";
               String fpic="";
               try{
               funame=session.getAttribute("UserName").toString();
                    if(funame!=null)
                    {
                         List<Object[]> rs1=null;
                         rs1= conobj.FetchData("SELECT FacultyId,FacultyName,FacultyPhoto FROM facultymaster where FacultyEmail='"+funame+"'");
                         for(Object rowObject:rs1)
                         {
                             Object[] row=(Object[]) rowObject;
                             if(row[0]!=null)
                                 fid=row[0].toString();
                             fname=row[1].toString();
                             fpic=row[2].toString();
                         }
                    }
               }catch(Exception e)
               {
                   out.print(e.toString());
               }
               
               if(fpic!=null)
               {
                   String temp="../FileUpload/FacultyPhotos/"+fpic;
                   fpic=temp;
               }
               else
                   fpic="assets/demo/avatars/corpor1.png";
               
      out.write("\n");
      out.write("      \n");
      out.write("    <div id=\"main-wrapper\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- 2. $MAIN_NAVIGATION ===========================================================================\n");
      out.write("        \n");
      out.write("                Main navigation\n");
      out.write("        -->\n");
      out.write("        <div id=\"main-navbar\" class=\"navbar navbar-inverse\" role=\"navigation\">\n");
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
      out.write("                        <div class=\"right clearfix\">\n");
      out.write("                            <ul class=\"nav navbar-nav pull-right right-navbar-nav\">\n");
      out.write("\n");
      out.write("                                <!-- 3. $NAVBAR_ICON_BUTTONS =======================================================================\n");
      out.write("                                \n");
      out.write("                                                                                        Navbar Icon Buttons\n");
      out.write("                                \n");
      out.write("                                                                                        NOTE: .nav-icon-btn triggers a dropdown menu on desktop screens only. On small screens .nav-icon-btn acts like a hyperlink.\n");
      out.write("                                \n");
      out.write("                                                                                        Classes:\n");
      out.write("                                                                                        * 'nav-icon-btn-info'\n");
      out.write("                                                                                        * 'nav-icon-btn-success'\n");
      out.write("                                                                                        * 'nav-icon-btn-warning'\n");
      out.write("                                                                                        * 'nav-icon-btn-danger' \n");
      out.write("                                -->\n");
      out.write("                                            <li>    \n");
      out.write("\t\t\t\t\t\t\t\t<form class=\"navbar-form pull-left\">\n");
      out.write("                                                                    <label  class=\"form-control\">");
      out.print(format2);
      out.write("</label>\n");
      out.write("\t\t\t\t\t\t\t\t</form>\n");
      out.write("                               \t\t   </li>\n");
      out.write("                                <li class=\"dropdown\">\n");
      out.write("                                    <a href=\"#\" class=\"dropdown-toggle user-menu\" data-toggle=\"dropdown\">\n");
      out.write("                                        \n");
      out.write("                                        <img src=\"");
      out.print(fpic);
      out.write("\"  alt=\"\">\n");
      out.write("                                        <span>");
      out.print(fname);
      out.write("</span>\n");
      out.write("                                    </a>\n");
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
      out.write("                                     <div class=\"text-bg\"><span class=\"text-slim\">Welcome,<br></span> <span class=\"text-semibold\">");
      out.print(fname);
      out.write("</span></div>\n");
      out.write("\n");
      out.write("                                     <img src=\"");
      out.print(fpic);
      out.write("\" alt=\"\" class=\"\">\n");
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
      out.write("                     <li >\n");
      out.write("                        <a href=\"DisplayAttendance.jsp?reqid=Subject\"><i class=\"menu-icon fa fa-check-circle-o\"></i><span class=\"mm-text\">Attendance Management</span></a>\n");
      out.write("                        \n");
      out.write("                    </li>\n");
      out.write("                   \n");
      out.write("                    <li >\n");
      out.write("                        <a href=\"DisplayViewStudentProfile.jsp\"><i class=\"menu-icon fa fa-bars\"></i><span class=\"mm-text\">View student Profile</span></a>\n");
      out.write("                        \n");
      out.write("                    </li>\n");
      out.write("                    \n");
      out.write("                    <li class=\"mm-dropdown\">\n");
      out.write("                        <a href=\"#\"><i class=\"menu-icon fa fa-files-o\"></i><span class=\"mm-text\">Test Management</span></a>\n");
      out.write("                        <ul>\n");
      out.write("                            <li>\n");
      out.write("                                <a tabindex=\"-1\" href=\"DisplayTest.jsp\"><span class=\"mm-text\">Test Details</span></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a tabindex=\"-1\" href=\"TestQuestionMaster.jsp\"><span class=\"mm-text\">Create Paper</span></a>\n");
      out.write("                            </li>\n");
      out.write("<!--                            <li>\n");
      out.write("                                <a tabindex=\"-1\" href=\"ResultMaster.jsp\"><span class=\"mm-text\">Test Result</span></a>\n");
      out.write("                            </li>-->\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    \n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"DisplayMaterial.jsp\"><i class=\"menu-icon fa fa-file-text-o\"></i><span class=\"mm-text\">Material Management</span></a>\n");
      out.write("                    </li>\n");
      out.write("                   <li>\n");
      out.write("                        <a href=\"StudentDiscussionTopic.jsp\"><i class=\"menu-icon fa fa-bars\"></i><span class=\"mm-text\">Discussion Forum</span></a>\n");
      out.write("                        \n");
      out.write("                    </li>\n");
      out.write("<!--                 \n");
      out.write("                   <li >\n");
      out.write("                        <a href=\"SMSService.jsp\"><i class=\"menu-icon fa fa-bars\"></i><span class=\"mm-text\">SMS</span></a>\n");
      out.write("                        \n");
      out.write("                    </li>-->\n");
      out.write("                </ul> <!-- / .navigation -->\n");
      out.write("                \n");
      out.write("            </div> <!-- / #main-menu-inner -->\n");
      out.write("    \n");
      out.write("        </div> <!-- / #main-menu -->\n");
      out.write("        \n");
      out.write("        <!-- /4. $MAIN_MENU -->\n");
      out.write("\n");
      out.write("        <div id=\"content-wrapper\">");
      out.write("\n");
      out.write("   ");

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
      out.write("  <strong>Success!</strong> Link uploaded Successfully!!!.\n");
      out.write("</div>\n");
      out.write("                ");

                }
            else if(request.getParameter("resid").toString().equals("1"))
                {
                 
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"alert  alert-success alert-dismissible\" role=\"alert\">\n");
      out.write("  <button type=\"button\" class=\"close\" data-dismiss=\"alert\"><span aria-hidden=\"true\">&times;</span><span class=\"sr-only\">Close</span></button>\n");
      out.write("  <strong>Success!</strong> Link Updated Successfully!!!.\n");
      out.write("</div>\n");
      out.write("                ");


                }

            else if(request.getParameter("resid").toString().equals("3"))
                {
                 
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"alert  alert-success alert-dismissible\" role=\"alert\">\n");
      out.write("  <button type=\"button\" class=\"close\" data-dismiss=\"alert\"><span aria-hidden=\"true\">&times;</span><span class=\"sr-only\">Close</span></button>\n");
      out.write("  <strong>Success!</strong> link Deleted Successfully!!!.\n");
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
 
                }

      out.write("\n");
      out.write("\n");
      out.write("        ");

              request.getSession().setAttribute("fid",fid);
              request.getSession().setAttribute("fname",fname);
        
      out.write("\n");
      out.write("        \t<div>\n");
      out.write("\t\t\t\t<div class=\"panel panel-dark panel-light-green\">\n");
      out.write("\t\t\t\t\t<div class=\"panel-heading\">\n");
      out.write("\t\t\t\t\t\t<span class=\"panel-title\"><i class=\"panel-title-icon fa fa-book\"></i>You have lectures today</span>\n");
      out.write("<!--\t\t\t\t\t\t<div class=\"panel-heading-controls\">\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"pagination pagination-xs\">\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">«</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"active\"><a href=\"#\">1</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">2</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">3</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">»</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>  / .pagination \n");
      out.write("\t\t\t\t\t\t</div>  / .panel-heading-controls -->\n");
      out.write("\t\t\t\t\t</div> <!-- / .panel-heading -->\n");
      out.write("                                       \n");
      out.write("\n");
      out.write("\n");
      out.write("                                        ");

                                            String tid="";
                                            String subject="";
                                            String std="";
                                            String start="";
                                            String end="";
                                            String buildtbl="";
                                            GenFun genobj=new GenFun();
                                            String qry="SELECT  b.TimeTableId,a.SubjectName,a.Std,b.StartTime,b.EndTime from timetable b, subjectmaster a where b.DisplayStatus='Yes' and b.FacultyIdFK='"+fid+"' and a.SubjectId=b.SubjectIdFK and b.WeekDay='"+day+"'";
                                            buildtbl=genobj.filltbl(qry, 6,"LectureLink");
                                            
                                        
      out.write("\n");
      out.write("\t\t\t\t\t<table class=\"table\">\n");
      out.write("\t\t\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("                                                                <th>link</th>\n");
      out.write("                                                                <th>Time-Table ID</th>\n");
      out.write("\t\t\t\t\t\t\t\t<th>Subject</th>\n");
      out.write("                                                                <th>Standard</th>\n");
      out.write("\t\t\t\t\t\t\t\t<th>Start Time</th>\n");
      out.write("\t\t\t\t\t\t\t\t<th>End Time</th>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t</thead>\n");
      out.write("\t\t\t\t\t\t<tbody class=\"valign-middle\">\n");

                                         out.print(buildtbl);
                                         out.flush();
      

      out.write("\n");
      out.write("\t\t\t\t\t\t</tbody>\n");
      out.write("\t\t\t\t\t</table>\n");
      out.write("\t\t\t\t</div> <!-- / .panel -->\n");
      out.write("\t\t\t</div>\n");
      out.write("                                                \n");
      out.write("            \n");
      out.write("                                                \n");
      out.write("                                                \n");

                                         String[] subs;
                                         qry="";
                                       //  conobj.FetchData("")
                                         

      out.write("                                \n");
      out.write("                                                \n");
      out.write("\n");
      out.write("<!--        \t\t\t\t<script>\n");
      out.write("\t\t\t\t\tinit.push(function () {\n");
      out.write("\t\t\t\t\t\tvar uploads_data = [\n");
      out.write("\t\t\t\t\t\t\t{ day: '2014-03-10', v: 20 },\n");
      out.write("\t\t\t\t\t\t\t{ day: '2014-03-11', v: 10 },\n");
      out.write("\t\t\t\t\t\t\t{ day: '2014-03-12', v: 15 },\n");
      out.write("\t\t\t\t\t\t\t{ day: '2014-03-13', v: 12 },\n");
      out.write("\t\t\t\t\t\t\t{ day: '2014-03-14', v: 5  },\n");
      out.write("\t\t\t\t\t\t\t{ day: '2014-03-15', v: 5  },\n");
      out.write("\t\t\t\t\t\t\t{ day: '2014-03-16', v: 20 }\n");
      out.write("\t\t\t\t\t\t];\n");
      out.write("\t\t\t\t\t\tMorris.Line({\n");
      out.write("\t\t\t\t\t\t\telement: 'hero-graph',\n");
      out.write("\t\t\t\t\t\t\tdata: uploads_data,\n");
      out.write("\t\t\t\t\t\t\txkey: 'day',\n");
      out.write("\t\t\t\t\t\t\tykeys: ['v'],\n");
      out.write("\t\t\t\t\t\t\tlabels: ['Value'],\n");
      out.write("\t\t\t\t\t\t\tlineColors: ['#fff'],\n");
      out.write("\t\t\t\t\t\t\tlineWidth: 2,\n");
      out.write("\t\t\t\t\t\t\tpointSize: 4,\n");
      out.write("\t\t\t\t\t\t\tgridLineColor: 'rgba(255,255,255,.5)',\n");
      out.write("\t\t\t\t\t\t\tresize: true,\n");
      out.write("\t\t\t\t\t\t\tgridTextColor: '#fff',\n");
      out.write("\t\t\t\t\t\t\txLabels: \"day\",\n");
      out.write("\t\t\t\t\t\t\txLabelFormat: function(d) {\n");
      out.write("\t\t\t\t\t\t\t\treturn ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov', 'Dec'][d.getMonth()] + ' ' + d.getDate(); \n");
      out.write("\t\t\t\t\t\t\t},\n");
      out.write("\t\t\t\t\t\t});\n");
      out.write("\t\t\t\t\t});\n");
      out.write("\t\t\t\t</script>-->\n");
      out.write("\t\t\t\t<!-- / Javascript -->\n");
      out.write("\n");
      out.write("                                \n");
      out.write("                                \n");

//            String mid="";
//            String mname="";
//            String mtype="";
//            String mcount="";
//            String str="";
//            double switcher=0.0;
//
//     String query="SELECT MaterialId,MaterialName,MaterialType,count(MaterialType)  FROM db_sec_tms.materialmanagement where DisplayStatus='Yes' and FacultyIdFK='"+fid+"'"+" group by MaterialType ";
//     List<Object[]> rs1=null;
//     rs1=conobj.FetchData(query);

      out.write("                                                \n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("\n");
      out.write("<!--\t\t\t\t<div class=\"stat-panel\">\n");
      out.write("\t\t\t\t\t<div class=\"stat-row\">\n");
      out.write("\t\t\t\t\t\t Small horizontal padding, bordered, without right border, top aligned text \n");
      out.write("\t\t\t\t\t\t<div class=\"stat-cell col-sm-4 padding-sm-hr bordered no-border-r valign-top\">\n");
      out.write("\t\t\t\t\t\t\t Small padding, without top padding, extra small horizontal padding \n");
      out.write("\t\t\t\t\t\t\t<h4 class=\"padding-sm no-padding-t padding-xs-hr\"><i class=\"fa fa-cloud-upload text-primary\"></i>&nbsp;&nbsp;Uploads</h4>\n");
      out.write("\t\t\t\t\t\t\t Without margin \n");
      out.write("\t\t\t\t\t\t\t<ul class=\"list-group no-margin\">\n");
      out.write("                                                            -->\n");

//for(Object rowObject:rs1)
//                {
//                    Object[] row=(Object[]) rowObject;
//                    switcher=Math.random();
//                    if(row[0]!=null)
//                    mid=row[0].toString();
//                    mname=row[1].toString();
//                    mtype=row[2].toString();                    
//                    mcount=row[3].toString();


      out.write("                                                            \n");
      out.write("                                                            \n");
      out.write("\t\t\t\t\t\t\t\t<!-- Without left and right borders, extra small horizontal padding, without background, no border radius -->\n");
      out.write("                                                                \n");
      out.write("<!--\t\t\t\t\t\t\t\t<li class=\"list-group-item no-border-hr padding-xs-hr no-bg no-border-radius\">\n");
      out.write("\t\t\t\t\t\t\t\t</li>  / .list-group-item -->\n");
      out.write("                                                                \n");
      out.write("                                                                \n");

//                } 

      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<!-- Without left and right borders, extra small horizontal padding, without background -->\n");
      out.write("<!--            \t\t\t\t\t\t\t<li class=\"list-group-item no-border-hr padding-xs-hr no-bg\">\n");
      out.write("\t\t\t\t\t\t\t\t\tAudio <span class=\"label label-danger pull-right\">128</span>\n");
      out.write("\t\t\t\t\t\t\t\t</li>  / .list-group-item \n");
      out.write("\t\t\t\t\t\t\t\t Without left and right borders, without bottom border, extra small horizontal padding, without background \n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"list-group-item no-border-hr no-border-b padding-xs-hr no-bg\">\n");
      out.write("\t\t\t\t\t\t\t\t\tVideos <span class=\"label label-success pull-right\">12</span>\n");
      out.write("\t\t\t\t\t\t\t\t</li>  / .list-group-item -->\n");
      out.write("\t\t\t\t\t\t\t<!--</ul>-->\n");
      out.write("\t\t\t\t\t\t<!--</div>  /.stat-cell -->\n");
      out.write("\t\t\t\t\t\t<!-- Primary background, small padding, vertically centered text -->\n");
      out.write("<!--\t\t\t\t\t\t<div class=\"stat-cell col-sm-8 bg-primary padding-sm valign-middle\">\n");
      out.write("\t\t\t\t\t\t\t<div id=\"hero-graph\" class=\"graph\" style=\"height: 230px;\"></div>\n");
      out.write("\t\t\t\t\t\t</div>-->\n");
      out.write("\t\t\t\t\t<!--</div>-->\n");
      out.write("\t\t\t\t<!--</div>  /.stat-panel -->\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("</div> <!-- / #content-wrapper -->\n");
      out.write("<div id=\"main-menu-bg\">\n");
      out.write("    \n");
      out.write("</div>\n");
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
