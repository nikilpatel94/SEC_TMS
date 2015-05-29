<%-- 
    Document   : Header
    Created on : 9 Sep, 2014, 2:50:48 PM
    Author     : STS4
--%>


<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page  import="java.io.InputStream" %>
<%@page  import="java.util.Calendar" %>
<%@page  import="java.util.GregorianCalendar" %>
<%@page  import="java.util.Properties" %>
<%@page  import="javax.mail.*" %>
<%@page  import="javax.mail.internet.*" %>
<%@page  import="javax.mail.search.*" %>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">


<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
<link rel="icon" 
      type="image/png" 
      href="oie_transparent.png">

<!-- Open Sans font from Google CDN -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&amp;subset=latin" rel="stylesheet" type="text/css">

<!-- Pixel Admin's stylesheets -->
<link href="assets/stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="assets/javascripts/bootstrap-datepicker.js" rel="stylesheet" type="text/javascript">
<link href="assets/stylesheets/datepicker.css" rel="stylesheet" type="text/css">
<link href="assets/stylesheets/pixel-admin.min.css" rel="stylesheet" type="text/css">
<link href="assets/stylesheets/widgets.min.css" rel="stylesheet" type="text/css">
<link href="assets/stylesheets/rtl.min.css" rel="stylesheet" type="text/css">
<link href="assets/stylesheets/themes.min.css" rel="stylesheet" type="text/css">

<!--[if lt IE 9]>
        <script src="assets/javascripts/ie.min.js"></script>
<![endif]-->
<script>
            
            $(function() {
            
            //$(".myCustomClass").css("border","1px solid BLUE");
            $("#txtAttendanceDate").datepicker();
            $("#datepicker1").datepicker();            
            });
            
</script>

<body class="theme-default main-menu-animated">

    <%


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

                 

%>
    <script>    var init = [];</script>
    
<!--     Demo script  <script src="assets/demo/demo.js"></script>   / Demo script -->
  
    <div id="main-wrapper">


        <!-- 2. $MAIN_NAVIGATION ===========================================================================
        
                Main navigation
        -->
          <div id="main-navbar" class="navbar navbar-inverse" role="navigation">
            <!-- Main menu toggle -->
            <button type="button" id="main-menu-toggle"><i class="navbar-icon fa fa-bars icon"></i><span class="hide-menu-text">HIDE MENU</span></button>

            <div class="navbar-inner">
                <!-- Main navbar header -->
                <div class="navbar-header">

                    <!-- Logo -->
                    <a href="index.jsp" class="navbar-brand">
                        <div><img alt="Pixel Admin" src="assets/demo/avatars/seclogotry.png" ></div>
                        S.E.C VVNagar
<!--                        <strong>Sahajanand Education Center</strong>-->
                    </a>

                    <!-- Main navbar toggle -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navbar-collapse"><i class="navbar-icon fa fa-bars"></i></button>

                </div> <!-- / .navbar-header -->
                        
                <div id="main-navbar-collapse" class="collapse navbar-collapse main-navbar-collapse">
                      
   
<!--                        <div align="left"> 
                            <strong><h3>Sahajanand Education Center</h3> </strong>
                            <font color="red">Sahajanand</font>
                            <font color="blue">Education</font>
                            <font color="yellow">Center</font>
                        </div>   -->
                    
                    <div>
                        <!-- / .navbar-nav -->
<%
                                    Date now = new Date(); // java.util.Date, NOT java.sql.Date or java.sql.Timestamp!
                                    //String format1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ").format(now);
                                    String format2 = new SimpleDateFormat("EEE, d MMM yy").format(now);
                                    String day=new SimpleDateFormat("EEEE").format(now);
                                     String format3 = new SimpleDateFormat("HH:mm:ss").format(now);
                                   // String format3 = new SimpleDateFormat("yyyyMMddHHmmss").format(now);
                                 %>
                                 

					
                       <div class="right clearfix">
    <ul class="nav navbar-nav pull-right right-navbar-nav">
<!--         3. $NAVBAR_ICON_BUTTONS =======================================================================
        Navbar Icon Buttons
                                
        NOTE: .nav-icon-btn triggers a dropdown menu on desktop screens only. On small screens .nav-icon-btn acts like a hyperlink.
        Classes:
        * 'nav-icon-btn-info'
        * 'nav-icon-btn-success'
        * 'nav-icon-btn-warning'
        * 'nav-icon-btn-danger' -->
        
     <li>    
								<form class="navbar-form pull-left">
                                                                    <label  class="form-control"><%=format2%></label>
								</form>
                               		   </li>
                                <li class="dropdown">
                                  
                                    <a href="#" class="dropdown-toggle user-menu" data-toggle="dropdown">
                                        <img src="assets/demo/avatars/corpor1.png"  alt="">
                                        <span>ANIMEA</span>
                                    </a>
								
                                    <ul class="dropdown-menu">
                                         <li><a href="Settings.jsp"><i class="dropdown-icon fa fa-cog"></i>&nbsp;&nbsp;Settings</a></li>
                                         <li><a href="LogOut.jsp"><i class="dropdown-icon fa fa-power-off"></i>&nbsp;&nbsp;Log Out</a></li>
                                    </ul>
                                </li>
                            </ul> <!-- / .navbar-nav -->
                        </div> <!-- / .right -->
                    </div>
                </div> <!-- / #main-navbar-collapse -->
            </div> <!-- / .navbar-inner -->
        </div> <!-- / #main-navbar -->

<!--        <div id="main-navbar" class="navbar navbar-inverse" role="navigation">
             Main menu toggle 
            <button type="button" id="main-menu-toggle"><i class="navbar-icon fa fa-bars icon"></i><span class="hide-menu-text">HIDE MENU</span></button>

            <div class="navbar-inner">
                 Main navbar header 
                <div class="navbar-header">

                     Logo 
                    <a href="index.jsp" class="collapse navbar-collapse main-navbar-collapse">
                        <div align="center"><img alt="SEC Admin" src="assets/demo/avatars/sec.png" ></div>
                        
                    </a>

                     Main navbar toggle 
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navbar-collapse"><i class="navbar-icon fa fa-bars"></i></button>

                </div>  / .navbar-header 

                <div id="main-navbar-collapse" class="collapse navbar-collapse main-navbar-collapse">
                    <div align="center">
                        <Strong>
                    <font size="5.5" align="center">Sahjanand Education Center</font>
                    </strong></div>
                    <div>
                         / .navbar-nav 
<%
//                                    Date now = new Date(); // java.util.Date, NOT java.sql.Date or java.sql.Timestamp!
//                                    //String format1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ").format(now);
//                                    String format2 = new SimpleDateFormat("EEE, d MMM yy").format(now);
//                                    String day=new SimpleDateFormat("EEEE").format(now);
//                                     String format3 = new SimpleDateFormat("HH:mm:ss").format(now);
                                   // String format3 = new SimpleDateFormat("yyyyMMddHHmmss").format(now);
                                 %>
                        
     Here goes unread mails and details

<div class="right clearfix">
    <ul class="nav navbar-nav pull-right right-navbar-nav">
         3. $NAVBAR_ICON_BUTTONS =======================================================================
        Navbar Icon Buttons
                                
        NOTE: .nav-icon-btn triggers a dropdown menu on desktop screens only. On small screens .nav-icon-btn acts like a hyperlink.
        Classes:
        * 'nav-icon-btn-info'
        * 'nav-icon-btn-success'
        * 'nav-icon-btn-warning'
        * 'nav-icon-btn-danger' 
        
     <li>    
								<form class="navbar-form pull-left">
                                                                    <label  class="form-control"></label>
								</form>
                               		   </li>
                                <li class="dropdown">
                                  
                                    <a href="#" class="dropdown-toggle user-menu" data-toggle="dropdown">
                                        <img src="assets/demo/avatars/corpor1.png"  alt="">
                                        <span>ANIMEA</span>
                                    </a>
								
                                    <ul class="dropdown-menu">
                                         <li><a href="Settings.jsp"><i class="dropdown-icon fa fa-cog"></i>&nbsp;&nbsp;Settings</a></li>
                                         <li><a href="LogOut.jsp"><i class="dropdown-icon fa fa-power-off"></i>&nbsp;&nbsp;Log Out</a></li>
                                    </ul>
                                </li>
                            </ul>  / .navbar-nav 
                        </div>  / .right 
                    </div>
                </div>  / #main-navbar-collapse 
            </div>  / .navbar-inner 
        </div>  / #main-navbar -->
        <!-- /2. $END_MAIN_NAVIGATION -->


        <!-- 4. $MAIN_MENU =================================================================================
        
                        Main menu
                        
                        Notes:
                        * to make the menu item active, add a class 'active' to the <li>
                          example: <li class="active">...</li>
                        * multilevel submenu example:
                                <li class="mm-dropdown">
                                  <a href="#"><span class="mm-text">Submenu item text 1</span></a>
                                  <ul>
                                        <li>...</li>
                                        <li class="mm-dropdown">
                                          <a href="#"><span class="mm-text">Submenu item text 2</span></a>
                                          <ul>
                                                <li>...</li>
                                                ...
                                          </ul>
                                        </li>
                                        ...
                                  </ul>
                                </li>
        -->
       <div id="main-menu" role="navigation">
		<div id="main-menu-inner">
			<div class="menu-content top" id="menu-content-demo">
				<!-- Menu custom content demo
					 CSS:        styles/pixel-admin-less/demo.less or styles/pixel-admin-scss/_demo.scss
					 Javascript: html/assets/demo/demo.js
				 -->
                                 <div>
					<div class="text-bg"><span class="text-slim">Welcome,</span> <span class="text-semibold">ANIMEA</span></div>

                                        <img src="assets/demo/avatars/corpor1.png" alt="" class="">
					<div class="btn-group">
						<a href="SendMail.jsp"  class="btn btn-xs btn-primary btn-outline dark"><i class="fa fa-envelope"></i></a>
<!--						<a href="#" class="btn btn-xs btn-primary btn-outline dark"><i class="fa fa-user"></i></a>-->
						<a href="Settings.jsp" class="btn btn-xs btn-primary btn-outline dark"><i class="fa fa-cog"></i></a>
						<a href="LogOut.jsp" class="btn btn-xs btn-danger btn-outline dark"><i class="fa fa-power-off"></i></a>
					</div>
                        </div>
			</div>
                    
                <ul class="navigation">
                    <li class="mm-dropdown">
                        <a href="#"><i class="menu-icon fa fa-sitemap"></i><span class="mm-text">Faculty Management</span></a>
                        <ul>
                            <li>
                                <a tabindex="-1" href="DisplayFaculty.jsp"><span class="mm-text">Faculty Detail</span></a>
                            </li>
                            <li>
                                <a tabindex="-1" href="DisplaFacultySubject.jsp "><span class="mm-text">Faculty Subject Detail</span></a>
                            </li>
                        </ul>
                    </li>
                    <!--<li>
                        <a href="DisplayFaculty.jsp"><i class="menu-icon fa fa-dashboard"></i><span class="mm-text">Faculty Management</span></a>
                    </li>-->
                    <li class="mm-dropdown">
                        <a href="#"><i class="menu-icon fa fa-files-o"></i><span class="mm-text">Subject Management</span></a>
                        <ul>
                            <li>
                                <a tabindex="-1" href="DisplaySubject.jsp"><span class="mm-text">Subject Detail</span></a>
                            </li>
                            <li>
                                <a tabindex="-1" href="DisplaySubjectChoice.jsp"><span class="mm-text">Subject Choice</span></a>
                            </li>
                        </ul>
                    </li>
                    <!--<li>
                            <a href="stat-panels.html"><i class="menu-icon fa fa-tasks"></i><span class="mm-text">Stat panels</span></a>
                    </li>
                    <li>
                            <a href="widgets.html"><i class="menu-icon fa fa-flask"></i><span class="mm-text">Widgets</span></a>
                    </li>-->
                    <li class="mm-dropdown">
                        <a href="#"><i class="menu-icon fa fa-flask"></i><span class="mm-text">Student Management</span></a>
                        <ul>
                            <li>
                                <a tabindex="-1" href="DisplayStudent.jsp"><span class="mm-text">Student Detail</span></a>
                            </li>
                            <li>
                                <a tabindex="-1" href="DisplayStudentFee.jsp"><span class="mm-text">Student Fee</span></a>
                            </li>
                            <!--<li>
                                    <a tabindex="-1" href="ui-tabs.html"><span class="mm-text">Tabs &amp; Accordions</span></a>
                            </li>
                            <li>
                                    <a tabindex="-1" href="ui-modals.html"><span class="mm-text">Modals</span></a>
                            </li>
                            <li>
                                    <a tabindex="-1" href="ui-alerts.html"><span class="mm-text">Alerts &amp; Tooltips</span></a>
                            </li>
                            <li>
                                    <a tabindex="-1" href="ui-components.html"><span class="mm-text">Components</span></a>
                            </li>
                            <li>
                                    <a tabindex="-1" href="ui-panels.html"><span class="mm-text">Panels</span></a>
                            </li>
                            <li>
                                    <a tabindex="-1" href="ui-jqueryui.html"><span class="mm-text">jQuery UI</span></a>
                            </li>
                            <li>
                                    <a tabindex="-1" href="ui-icons.html"><span class="mm-text">Icons</span></a>
                            </li>
                            <li>
                                    <a tabindex="-1" href="ui-utility-classes.html"><span class="mm-text">Utility classes</span></a>
                            </li>-->
                        </ul>
                    </li>
                    <!--<li class="mm-dropdown">
                            <a href="#"><i class="menu-icon fa fa-check-square"></i><span class="mm-text">Form components</span></a>
                            <ul>
                                    <li>
                                            <a tabindex="-1" href="forms-layouts.html"><span class="mm-text">Layouts</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="forms-general.html"><span class="mm-text">General</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="forms-advanced.html"><span class="mm-text">Advanced</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="forms-pickers.html"><span class="mm-text">Pickers</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="forms-validation.html"><span class="mm-text">Validation</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="forms-editors.html"><span class="mm-text">Editors</span></a>
                                    </li>
                            </ul>-->
                    </li>
                    <li>
                        <a href="DisplayTimeTable.jsp"><i class="menu-icon fa fa-table"></i><span class="mm-text">TimeTable Management</span></a>
                    </li>
                      <li>
                        <a href="DisplayNewsEvent.jsp"><i class="menu-icon fa fa-desktop"></i><span class="mm-text">News & Event</span></a>
                    </li>
                    
                    <!--<li>
                            <a href="charts.html"><i class="menu-icon fa fa-bar-chart-o"></i><span class="mm-text">Charts</span></a>
                    </li>
                    <li class="mm-dropdown">
                            <a href="#"><i class="menu-icon fa fa-files-o"></i><span class="mm-text">Pages</span><span class="label label-success">16</span></a>
                            <ul>
                                    <li>
                                            <a tabindex="-1" href="pages-search.html"><span class="mm-text">Search results</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="pages-pricing.html"><span class="mm-text">Plans &amp; pricing</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="pages-faq.html"><span class="mm-text">FAQ</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="pages-profile.html"><span class="mm-text">Profile</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="pages-timeline.html"><span class="mm-text">Timeline</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="pages-signin.html"><span class="mm-text">Sign In</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="pages-signup.html"><span class="mm-text">Sign Up</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="pages-signin-alt.html"><span class="mm-text">Sign In Alt</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="pages-signup-alt.html"><span class="mm-text">Sign Up Alt</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="pages-invoice.html"><span class="mm-text">Invoice</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="pages-404.html"><span class="mm-text">Error 404</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="pages-500.html"><span class="mm-text">Error 500</span></a>
                                    </li>
                                    <li class="mm-dropdown">
                                            <a href="#"><i class="menu-icon fa fa-envelope"></i><span class="mm-text">Messages</span></a>
                                            <ul>
                                                    <li>
                                                            <a tabindex="-1" href="pages-inbox.html"><span class="mm-text">Inbox</span></a>
                                                    </li>
                                                    <li>
                                                            <a tabindex="-1" href="pages-show-email.html"><span class="mm-text">Show message</span></a>
                                                    </li>
                                                    <li>
                                                            <a tabindex="-1" href="pages-new-email.html"><span class="mm-text">New message</span></a>
                                                    </li>
                                            </ul>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="pages-blank.html"><span class="mm-text">Blank page</span></a>
                                    </li>
                            </ul>
                    </li>
                    <li>
                            <a href="complete-ui.html"><i class="menu-icon fa fa-briefcase"></i><span class="mm-text">Complete UI</span></a>
                    </li>
                    <li>
                            <a href="color-builder.html"><i class="menu-icon fa fa-tint"></i><span class="mm-text">Color Builder</span></a>
                    </li>
                    <li class="mm-dropdown">
                            <a href="#"><i class="menu-icon fa fa-sitemap"></i><span class="mm-text">Menu levels</span><span class="badge badge-primary">6</span></a>
                            <ul>
                                    <li>
                                            <a tabindex="-1" href="#"><span class="mm-text">Menu level 1.1</span><span class="badge badge-danger">12</span><span class="label label-info">21</span></a>
                                    </li>
                                    <li>
                                            <a tabindex="-1" href="#"><span class="mm-text">Menu level 1.2</span></a>
                                    </li>
                                    <li class="mm-dropdown">
                                            <a tabindex="-1" href="#"><span class="mm-text">Menu level 1.3</span><span class="label label-warning">5</span></a>
                                            <ul>
                                                    <li>
                                                            <a tabindex="-1" href="#"><span class="mm-text">Menu level 2.1</span></a>
                                                    </li>
                                                    <li class="mm-dropdown">
                                                            <a tabindex="-1" href="#"><span class="mm-text">Menu level 2.2</span></a>
                                                            <ul>
                                                                    <li class="mm-dropdown">
                                                                            <a tabindex="-1" href="#"><span class="mm-text">Menu level 3.1</span></a>
                                                                            <ul>
                                                                                    <li>
                                                                                            <a tabindex="-1" href="#"><span class="mm-text">Menu level 4.1</span></a>
                                                                                    </li>
                                                                            </ul>
                                                                    </li>
                                                                    <li>
                                                                            <a tabindex="-1" href="#"><span class="mm-text">Menu level 3.2</span></a>
                                                                    </li>
                                                            </ul>
                                                    </li>
                                                    <li>
                                                            <a tabindex="-1" href="#"><span class="mm-text">Menu level 2.2</span></a>
                                                    </li>
                                            </ul>
                                    </li>
                            </ul>
                    </li>-->
                </ul> <!-- / .navigation -->
                <div class="menu-content" target="content-wrapper">
                        <a href="InvoicePage.jsp" class="btn btn-primary btn-block btn-outline dark">Create Invoice</a>
                </div>
            </div> <!-- / #main-menu-inner -->
        </div> <!-- / #main-menu -->
        <!-- /4. $MAIN_MENU -->

        <div id="content-wrapper">