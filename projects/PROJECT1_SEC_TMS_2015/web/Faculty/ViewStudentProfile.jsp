<%-- 
    Document   : ViewStudentProfile
    Created on : Mar 13, 2015, 3:46:02 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.tms.*"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Student Profile</title>

    </head>
    <body class="theme-default main-menu-animated page-profile">

        <%@include file="Header.jsp" %>

        <%            DBCon conobj1 = new DBCon();
        TRYSMS obj1=new TRYSMS();
            String stid = "";
            String stname = "";
            String stadd = "";
            String stemail = "";
            String stcno = "";
            String stdob = "";
            String stpname = "";
            String stpcon = "";
            String stpemail = "";
            String stschool = "";
            String stpic = "";
            String ststatus = "";
            String ststd = "";

            if (request.getParameter("reqid") != null) {
                List<Object[]> rs1 = null;
                stid = request.getParameter("reqid").toString();
                rs1 = conobj1.FetchData("SELECT * FROM `db_sec_tms`.`studentmaster` where StudentId='" + stid + "' ");

                for (Object rowObject : rs1) {
                    Object[] row = (Object[]) rowObject;
                    if (row[0] != null) {
                        stid = row[0].toString();
                    }

                    stname = row[1].toString();
                    stadd = row[2].toString();
                    stemail = row[3].toString();
                    stcno = row[4].toString();
                    stdob = row[5].toString();
                    stpname = row[6].toString();
                    stpcon = row[7].toString();
                    stpemail = row[8].toString();
                    stschool = row[9].toString();
                    stpic = row[10].toString();
                    ststatus = row[11].toString();
                    ststd = row[12].toString();
                }

            }

            if (stpic != null) {
                String temp = "../FileUpload/StudentPhotos/" + stpic;
                stpic = temp;
            } else {
                stpic = "assets/demo/avatars/corpor1.png";
            }
        %>

       
        <div class="profile-full-name">
            <strong><%=stname%></strong> 's Profile
        </div>
        <div class="profile-row">
            <div class="left-col">
                <div class="profile-block">
                    <div class="panel profile-photo">
                        <img src="<%=stpic%>" height="100" width="100">
                    </div>
<!--                    <a href="#" class="btn btn-success"><i class="fa fa-check"></i>&nbsp;&nbsp;Following</a>&nbsp;&nbsp;
                    <a href="#" class="btn"><i class="fa fa-comment"></i></a>-->
                </div>

                <div class="panel panel-transparent">
                    <div class="panel-heading">
                        <span class="panel-title">About <strong><%=stname%></strong></span>
                    </div>
                    <div class="panel-body">
                        <strong>Parent Name : </strong><%=stpname%><br><br>
                        <strong>Parent Contact : </strong><%=stpcon%><br><br>
                        <strong>Parent Email : </strong><%=stpemail%><br><br>
                        <strong>Student Email : </strong><%=stemail%><br><br>
                        <strong>Student Contact : </strong><%=stcno%><br><br>
                        <strong>School : </strong><%=stschool%>
                    </div>
                </div>


            </div>
            <div class="right-col">

                <hr class="profile-content-hr no-grid-gutter-h">

                <div class="profile-content">

                    <ul id="profile-tabs" class="nav nav-tabs">
                        <li class="active">
                            <a href="#profile-tabs-board" data-toggle="tab">Message (S.M.S.)</a>
                        </li>
<!--                        <li>
                            <a href="#profile-tabs-activity" data-toggle="tab">Test Report</a>
                        </li>
                        <li>
                            <a href="#profile-tabs-followers" data-toggle="tab">Attendance</a>
                        </li>-->
                        <!--						<li>
                                                                                <a href="#profile-tabs-following" data-toggle="tab">Following</a>
                                                                        </li>-->
                    </ul>

                    <div class="tab-content tab-content-bordered panel-padding">
                        <div class="widget-article-comments tab-pane panel no-padding no-border fade in active" id="profile-tabs-board">


                            <div class="form-group no-margin-hr">
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-2" ><label >Select number</label></div>
                                    <div class="col-sm-4">
                                        <select id="drpStatus" name="drpStatus" class="form-control">
                                            <option value="<%=stpcon%>" selected="true"><%=stpcon%>(parent)</option>
                                            <%if(stcno!=null || stcno!=""){%>
                                            <option value="<%=stcno%>"><%=stcno%>(Student)</option>
                                            <%}%>
                                        </select>
                                    </div>

                                </div>
                            </div>


                            <div class="form-group no-margin-hr">
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-2" ><label >Message*</label></div>
                                    <div class="col-sm-4">

                                        <textarea class="form-control" id="txtStudentMessage"  name="txtStudentMessage" cols="20" rows="3"></textarea>

                                    </div>
                                </div>
                            </div>

                                        
                                                 
                                    
                                    <div class="form-group no-margin-hr">
                                        <div class="row">
                                            <div class="col-sm-3"></div>
                                            <div class="col-sm-2" ></div>
                                            <div class="col-sm-4">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                              
                            
                                                <input type="button" class="btn btn-success" id="btnSendSMS" value="Send" name="btnProceed" onClick="dirtxt();"/> 
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input  type="reset" class="btn btn-danger" id="btnSendSMS" value="Cancle" name="btnProceed" /> 
                                            </div>
                                        </div>
                                    </div>
                             
                      <script>
                        function dirtxt()
                        {
                            xmlhttp = GetXmlHttpObject0();
                            
                            
                            if (xmlhttp == null)
                            {
                                alert("Your browser does not support Ajax HTTP");
                                return;
                            }
                            var url = "";
                            var str4=document.getElementById("txtStudentMessage").value;
                            var str2=document.getElementById("drpStatus");
                            var str3=str2.options[str2.selectedIndex].value;
                            alert("in function!Msg of SMS:"+str4+"an number:"+str3);
                            
                            var url= "AJAXSendMessage.jsp";
                            alert(url);
                            url = url + "?reqid="+str3+"&reqid2="+str4; 
                            alert(url);
                           // document.getElementById("drpFacSubs").innerHTML = "Loading...";       
                            xmlhttp.onreadystatechange = dirOutput;
                            xmlhttp.open("GET", url, true);
                            xmlhttp.send(null);
                        }

                        function dirOutput()
                        {
                            if (xmlhttp.readyState == 4)
                            {
                                
                                // document.getElementById("drpFacSubs").innerHTML = xmlhttp.responseText;
                            }
                        }

                        function GetXmlHttpObject0()
                        {
                            if (window.XMLHttpRequest)
                            {
                                return new XMLHttpRequest();
                            }

                            if (window.ActiveXObject)
                            {
                                return new ActiveXObject("Microsoft.XMLHTTP");
                            }
                            return null;
                        }
                                </script>



                                        <!--<hr class="no-panel-padding-h panel-wide">-->

                                    </div> <!-- / .tab-pane -->
                                    <div class="tab-pane fade" id="profile-tabs-activity">
                                        <div class="timeline">
                                            <!-- Timeline header -->
                                            <div class="tl-header now">Now</div>

                                            <div class="tl-entry">
                                                <div class="tl-time">
                                                    1h ago
                                                </div>
                                                <div class="tl-icon bg-warning"><i class="fa fa-envelope"></i></div>
                                                <div class="panel tl-body">
                                                    <h4 class="text-warning">Lorem ipsum dolor sit amet</h4>
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                </div> <!-- / .tl-body -->
                                            </div> <!-- / .tl-entry -->

                                            <div class="tl-entry left">
                                                <div class="tl-time">
                                                    2h ago
                                                </div>
                                                <div class="tl-icon bg-success"><i class="fa fa-picture-o"></i></div>
                                                <div class="panel tl-body">
                                                    <a href="#">Denise Steiner</a> shared an image on <a href="#">The Gallery</a>
                                                    <div class="tl-wide text-center" style="padding: 10px;margin-top:15px;margin-bottom: 15px;background: #f1f1f1">
                                                        <img src="assets/demo/signin-bg-5.jpg" alt="" style="max-height: 150px;max-width: 100%;">
                                                    </div>
                                                    <i class="text-muted text-sm">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</i>
                                                </div> <!-- / .tl-body -->
                                            </div> <!-- / .tl-entry -->

                                            <div class="tl-entry">
                                                <div class="tl-time">
                                                    3h ago
                                                </div>
                                                <div class="tl-icon bg-success"><img src="assets/demo/avatars/2.jpg" alt=""></div>
                                                <div class="panel tl-body">
                                                    <a href="#">Robert Jang</a> commented on <a href="#">The Article</a>
                                                    <div class="well well-sm" style="margin: 10px 0 0 0;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
                                                </div> <!-- / .tl-body -->
                                            </div> <!-- / .tl-entry -->

                                            <div class="tl-entry left">
                                                <div class="tl-time">
                                                    4h ago
                                                </div>
                                                <div class="tl-icon bg-dark-gray"><i class="fa fa-check"></i></div>
                                                <div class="panel tl-body">
                                                    <img src="assets/demo/avatars/5.jpg" alt="" class="rounded" style=" width: 20px;height: 20px;margin-top: -2px;">&nbsp;&nbsp;<a href="#">Denise Steiner</a> followed <a href="#">Johg Doe</a>
                                                </div> <!-- / .tl-body -->
                                            </div> <!-- / .tl-entry -->

                                            <!-- Timeline header -->
                                            <div class="tl-header">Yesterday</div>

                                            <div class="tl-entry">
                                                <div class="tl-time">
                                                    9:02 pm
                                                </div>
                                                <div class="tl-icon bg-info"><i class="fa fa-comment"></i></div>
                                                <div class="panel tl-body">
                                                    <a href="#">Denise Steiner</a> liked a comment on <a href="#">Some Article</a>
                                                    <div style="margin-top: 10px;" class="text-sm">
                                                        <img src="assets/demo/avatars/3.jpg" alt="" class="rounded" style=" width: 20px;height: 20px;margin-top: -2px;">&nbsp;&nbsp;<a href="#">Michelle Bortz</a> commented 2 days ago
                                                        <div class="well well-sm" style="margin: 6px 0 0 0;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
                                                    </div>
                                                </div> <!-- / .tl-body -->
                                            </div> <!-- / .tl-entry -->

                                            <div class="tl-entry left">
                                                <div class="tl-time">
                                                    5:47 pm
                                                </div>
                                                <div class="panel tl-body">
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                                </div> <!-- / .tl-body -->
                                            </div> <!-- / .tl-entry -->

                                            <div class="tl-entry">
                                                <div class="tl-time">
                                                    2:35 pm
                                                </div>
                                                <div class="tl-icon bg-danger"><i class="fa fa-heart"></i></div>
                                                <div class="panel tl-body">
                                                    <a href="#">Denise Steiner</a> liked <a href="#">Shop Item</a>
                                                </div> <!-- / .tl-body -->
                                            </div> <!-- / .tl-entry -->

                                            <div class="tl-entry left">
                                                <div class="tl-time">
                                                    11:21 am
                                                </div>
                                                <div class="panel tl-body">
                                                    <h4 class="text-danger">Lorem ipsum dolor sit amet</h4>
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                </div> <!-- / .tl-body -->
                                            </div> <!-- / .tl-entry -->

                                        </div> <!-- / .timeline -->
                                    </div> <!-- / .tab-pane -->
                                    <div class="tab-pane fade widget-followers" id="profile-tabs-followers">


                                        <div class="stat-row">
                                            <!-- Small horizontal padding, bordered, without right border, top aligned text -->
                                            <div class="stat-cell col-sm-4 padding-sm-hr bordered no-border-r valign-top">
                                                <!-- Small padding, without top padding, extra small horizontal padding -->
                                                <h4 class="padding-sm no-padding-t padding-xs-hr"><i class="fa fa-cloud-upload text-primary"></i>&nbsp;&nbsp;Attendance Graph</h4>
                                                <!-- Without margin -->
                                                <ul class="list-group no-margin">
                                                    <!-- Without left and right borders, extra small horizontal padding, without background, no border radius -->
                                                    <li class="list-group-item no-border-hr padding-xs-hr no-bg no-border-radius">
                                                        Subject <span class="label label-pa-purple pull-right">34</span>
                                                    </li> <!-- / .list-group-item -->
                                                    <!-- Without left and right borders, extra small horizontal padding, without background -->
                                                    <li class="list-group-item no-border-hr padding-xs-hr no-bg">
                                                        Student <span class="label label-danger pull-right">128</span>
                                                    </li> <!-- / .list-group-item -->
                                                    <!-- Without left and right borders, without bottom border, extra small horizontal padding, without background -->
                                                    <li class="list-group-item no-border-hr no-border-b padding-xs-hr no-bg">
                                                        Faculty <span class="label label-success pull-right">12</span>
                                                    </li> <!-- / .list-group-item -->
                                                </ul>
                                            </div> <!-- /.stat-cell -->
                                            <!-- Primary background, small padding, vertically centered text -->
                                            <div class="stat-cell col-sm-8 bg-primary padding-sm valign-middle">
                                                <div id="hero-graph" class="graph" style="height: 230px;"><svg style="overflow: hidden; position: relative; top: -0.78334px;" xmlns="http://www.w3.org/2000/svg" width="442" version="1.1" height="230"><desc>Created with Raphaël 2.1.2</desc><defs></defs><text font-weight="normal" font-family="sans-serif" font-size="12px" fill="#ffffff" stroke="none" font="10px &quot;Arial&quot;" text-anchor="end" y="190" x="29.5" style="text-anchor: end; font: 12px sans-serif;"><tspan dy="4.5">0</tspan></text><path stroke-width="0.5" stroke-opacity="0.5" d="M42,190H417" stroke="#ffffff" fill="none" style=""></path><text font-weight="normal" font-family="sans-serif" font-size="12px" fill="#ffffff" stroke="none" font="10px &quot;Arial&quot;" text-anchor="end" y="148.75" x="29.5" style="text-anchor: end; font: 12px sans-serif;"><tspan dy="4.5">5</tspan></text><path stroke-width="0.5" stroke-opacity="0.5" d="M42,148.75H417" stroke="#ffffff" fill="none" style=""></path><text font-weight="normal" font-family="sans-serif" font-size="12px" fill="#ffffff" stroke="none" font="10px &quot;Arial&quot;" text-anchor="end" y="107.5" x="29.5" style="text-anchor: end; font: 12px sans-serif;"><tspan dy="4.5">10</tspan></text><path stroke-width="0.5" stroke-opacity="0.5" d="M42,107.5H417" stroke="#ffffff" fill="none" style=""></path><text font-weight="normal" font-family="sans-serif" font-size="12px" fill="#ffffff" stroke="none" font="10px &quot;Arial&quot;" text-anchor="end" y="66.25" x="29.5" style="text-anchor: end; font: 12px sans-serif;"><tspan dy="4.5">15</tspan></text><path stroke-width="0.5" stroke-opacity="0.5" d="M42,66.25H417" stroke="#ffffff" fill="none" style=""></path><text font-weight="normal" font-family="sans-serif" font-size="12px" fill="#ffffff" stroke="none" font="10px &quot;Arial&quot;" text-anchor="end" y="25" x="29.5" style="text-anchor: end; font: 12px sans-serif;"><tspan dy="4.5">20</tspan></text><path stroke-width="0.5" stroke-opacity="0.5" d="M42,25H417" stroke="#ffffff" fill="none" style=""></path><text transform="matrix(1,0,0,1,0,7.5)" font-weight="normal" font-family="sans-serif" font-size="12px" fill="#ffffff" stroke="none" font="10px &quot;Arial&quot;" text-anchor="middle" y="202.5" x="417" style="text-anchor: middle; font: 12px sans-serif;"><tspan dy="4.5">Mar 16</tspan></text><text transform="matrix(1,0,0,1,0,7.5)" font-weight="normal" font-family="sans-serif" font-size="12px" fill="#ffffff" stroke="none" font="10px &quot;Arial&quot;" text-anchor="middle" y="202.5" x="292" style="text-anchor: middle; font: 12px sans-serif;"><tspan dy="4.5">Mar 14</tspan></text><text transform="matrix(1,0,0,1,0,7.5)" font-weight="normal" font-family="sans-serif" font-size="12px" fill="#ffffff" stroke="none" font="10px &quot;Arial&quot;" text-anchor="middle" y="202.5" x="167" style="text-anchor: middle; font: 12px sans-serif;"><tspan dy="4.5">Mar 12</tspan></text><text transform="matrix(1,0,0,1,0,7.5)" font-weight="normal" font-family="sans-serif" font-size="12px" fill="#ffffff" stroke="none" font="10px &quot;Arial&quot;" text-anchor="middle" y="202.5" x="42" style="text-anchor: middle; font: 12px sans-serif;"><tspan dy="4.5">Mar 10</tspan></text><path stroke-width="2" d="M42,25C57.625,45.625,88.875,102.34375,104.5,107.5C120.125,112.65625,151.375,68.3125,167,66.25C182.625,64.1875,213.875,80.6875,229.5,91C245.125,101.3125,276.375,141.53125,292,148.75C307.625,155.96875,338.875,164.21875,354.5,148.75C370.125,133.28125,401.375,55.9375,417,25" stroke="#ffffff" fill="none" style=""></path><circle stroke-width="1" style="" stroke="#ffffff" fill="#ffffff" r="7" cy="25" cx="42"></circle><circle stroke-width="1" style="" stroke="#ffffff" fill="#ffffff" r="4" cy="107.5" cx="104.5"></circle><circle stroke-width="1" style="" stroke="#ffffff" fill="#ffffff" r="4" cy="66.25" cx="167"></circle><circle stroke-width="1" style="" stroke="#ffffff" fill="#ffffff" r="4" cy="91" cx="229.5"></circle><circle stroke-width="1" style="" stroke="#ffffff" fill="#ffffff" r="4" cy="148.75" cx="292"></circle><circle stroke-width="1" style="" stroke="#ffffff" fill="#ffffff" r="4" cy="148.75" cx="354.5"></circle><circle stroke-width="1" style="" stroke="#ffffff" fill="#ffffff" r="4" cy="25" cx="417"></circle></svg><div style="left: 4px; top: 35px;" class="morris-hover morris-default-style"><div class="morris-hover-row-label">2014-03-10</div><div class="morris-hover-point" style="color: #fff">
                                                            Value:
                                                            20
                                                        </div></div></div>
                                            </div>
                                        </div>

                                    </div> <!-- / .tab-pane -->
                                </div> <!-- / .tab-content -->
                            </div>
                        </div>
                    </div>
                    <%@include file="Footer.jsp" %>
                    </body>
                    </html>
