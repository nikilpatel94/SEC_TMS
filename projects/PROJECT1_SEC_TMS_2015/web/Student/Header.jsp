
<%@page import="java.util.List"%>
<%@page import="com.tms.DBCon"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>

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
<link href="assets/stylesheets/pixel-admin.min.css" rel="stylesheet" type="text/css">
<link href="assets/stylesheets/widgets.min.css" rel="stylesheet" type="text/css">
<link href="assets/stylesheets/rtl.min.css" rel="stylesheet" type="text/css">
<link href="assets/stylesheets/themes.min.css" rel="stylesheet" type="text/css">
<link href="assets/stylesheets/checkbox.css" rel="stylesheet" type="text/css">

<!--[if lt IE 9]>
        <script src="assets/javascripts/ie.min.js"></script>
<![endif]-->
<body class="theme-default main-menu-animated">
    
   
    
      <%
      
      if(session.getAttribute("UserName")!=null)
    {
        if(session.getAttribute("utype")==null)
        {
            String utype=session.getAttribute("utype").toString();
            if(utype.equals("A"))
            {
                response.sendRedirect("../Admin/index.jsp");
            }
            if(utype.equals("S"))
            {
                //response.sendRedirect("../Student/index.jsp");
            
            }
           if(utype.equals("F"))
            {
                response.sendRedirect("../Faculty/index.jsp");
            }
        }
    }
    
    else
                 
                 response.sendRedirect("../Admin/LoginFinal.jsp");           

                                     %>

    <script>    var init = [];</script>
    
<!--     Demo script  <script src="assets/demo/demo.js"></script>   / Demo script -->
  <%           DBCon conobj=new DBCon();
               String sid="";
               String sname="";
               String std="";
               String sphoto="";
               try{
               String suname=session.getAttribute("UserName").toString();
                    if(suname!=null)
                    {
                         List<Object[]> rs1=null;
                         rs1= conobj.FetchData("SELECT StudentId,StudentName,Std,StudentPhoto FROM studentmaster where StudentEmail='"+suname+"'");
                         for(Object rowObject:rs1)
                         {
                             Object[] row=(Object[]) rowObject;
                             if(row[0]!=null)
                                 sid=row[0].toString();
                             sname=row[1].toString();
                             std=row[2].toString();
                             sphoto=row[3].toString();
                         }
                    }
               }catch(Exception e)
               {
                   out.print(e.toString());
               }
              %>
            
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

                                <!-- 3. $NAVBAR_ICON_BUTTONS =======================================================================
                                
                                                                                        Navbar Icon Buttons
                                
                                                                                        NOTE: .nav-icon-btn triggers a dropdown menu on desktop screens only. On small screens .nav-icon-btn acts like a hyperlink.
                                
                                                                                        Classes:
                                                                                        * 'nav-icon-btn-info'
                                                                                        * 'nav-icon-btn-success'
                                                                                        * 'nav-icon-btn-warning'
                                                                                        * 'nav-icon-btn-danger' 
                                -->
                                            <li>    
								<form class="navbar-form pull-left">
                                                                    <label  class="form-control"><%=format2%></label>
								</form>
                               		   </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle user-menu" data-toggle="dropdown">
                                        <img src="../FileUpload/StudentPhotos/<%=sphoto%>"  alt="">
                                        <span><%=sname%></span>
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
                        <div><img alt="Pixel Admin" src="assets/demo/avatars/sec.png" ></div>
                        
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
//                                      String format3 = new SimpleDateFormat("HH:mm:ss").format(now);
                                    //String day=new SimpleDateFormat("EEE").format(now);
                                   // String format3 = new SimpleDateFormat("yyyyMMddHHmmss").format(now);
                                 %>
                                 

					
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
                                        <img src="../FileUpload/StudentPhotos/"  alt="">
                                        <span></span>
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
                                     <div class="text-bg"><span class="text-slim">Welcome,<br></span> <span class="text-semibold"><%=sname%></span></div>

                                     <img src="../FileUpload/StudentPhotos/<%=sphoto%>" alt="" class="">
					<div class="btn-group">
						<!--<a href="SendMail.jsp"  class="btn btn-xs btn-primary btn-outline dark"><i class="fa fa-envelope"></i></a>-->
<!--						<a href="#" class="btn btn-xs btn-primary btn-outline dark"><i class="fa fa-user"></i></a>-->
						<a href="Settings.jsp" class="btn btn-xs btn-primary btn-outline dark"><i class="fa fa-cog"></i></a>
						<a href="LogOut.jsp" class="btn btn-xs btn-danger btn-outline dark"><i class="fa fa-power-off"></i></a>
					</div>
                        </div>
			</div>
                    
                <ul class="navigation">
<!--                     <li >
                         <a href="testingofjsp.jsp"><i class="menu-icon fa fa-check-circle-o"></i><span class="mm-text">JSP PAGE</span></a>
                    </li>-->
                     <li>
                         <a tabindex="-1" href="DisaplayCreateDiscussion.jsp"><i class="menu-icon fa fa-check-circle-o"></i><span class="mm-text">Create Discussion</span></a>
                     </li>
                    <li>
                        <a tabindex="-1" href="ViewDiscussion.jsp"><i class="menu-icon fa fa-flask"></i><span class="mm-text">View Discussion</span></a>
                    </li>
                   <li>
                       <a tabindex="-1" href="TimeTable.jsp"><i class="menu-icon fa fa-file-text-o"></i><span class="mm-text">Time-Table</span></a>
                    </li>
                    <li>
                       <a tabindex="-1" href="MaterialManagement.jsp"><i class="menu-icon fa fa-file-text-o"></i><span class="mm-text">Subject Materials</span></a>
                    </li>
                    </li>
                  
                </ul> <!-- / .navigation -->
                
            </div> <!-- / #main-menu-inner -->
        </div> <!-- / #main-menu -->
        <!-- /4. $MAIN_MENU -->

        <div id="content-wrapper">