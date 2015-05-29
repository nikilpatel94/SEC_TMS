<%-- 
    Document   : DisplayAttendance
    Created on : Feb 17, 2015, 11:28:00 AM
    Author     : akash
--%>
<%@page  import="java.util.List" %>
<%@page  import="com.tms.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Attendance</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%  GenFun genobj = new GenFun();
            String buildtable = "";
            if (request.getParameter("btnProceed") != null) {
                if (request.getParameter("btnProceed").equals("Search")) {
                    String drpsearch = "";
                    String searchvalue = "";
                    drpsearch = request.getParameter("drpSearchBy");
                    searchvalue = request.getParameter("txtSearchValue");
                    buildtable = genobj.filltbl("select stm.StudentName,stm.Std,sbm.SubjectName,am.AttendanceDate from subjectmaster sbm,attendancemaster am,studentmaster stm where " + drpsearch + " LIKE '%" + searchvalue + "%'", 4, "");
                } else if (request.getParameter("btnProceed").equals("View All")) {
                    buildtable = genobj.filltbl("select SubjectId,Std,SubjectName,SubjectFees from subjectmaster", 5, "SubjectMaster");
                } else {
                    buildtable = genobj.filltbl("select SubjectId,Std,SubjectName,SubjectFees from subjectmaster", 5, "SubjectMaster");
                }

            } else {
                buildtable = genobj.filltbl("select SubjectId,Std,SubjectName,SubjectFees from subjectmaster", 5, "SubjectMaster");
            }

        %>

        <form action="DisplayAttendance.jsp" class="panel form-horizontal">

            <div class="panel-heading">
                <strong><span class="panel-title">Attendance</span></strong>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-12">
                        <a href="Attendance.jsp?reqid=0" > <strong>New Attendance Sheet</strong></a>

                    </div>
                </div>
                <hr class="no-grid-gutter-h grid-gutter-margin-b no-margin-t">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">View Attendance BY:</label>

                        </div>
                    </div><!-- col-sm-6 -->
                </div>
               <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Select Standard</label>
                            <select  name="drpStd" id="drpStd" class="form-control" onchange="dirtxt30();">
                                <option >Select Standard</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        </div>
                    </div><!-- col-sm-6 -->
                    
                    <script>
                        function dirtxt30()
                        {
                            xmlhttp = GetXmlHttpObject0();
                            
                            if (xmlhttp == null)
                            {
                                alert("Your browser does not support Ajax HTTP");
                                return;
                            }
                            //var emp = document.getElementById("emp_no").value;
                            var url = "";
                            var str1=document.getElementById("drpStd");
                            
                            var str=str1.options[str1.selectedIndex].value;
                            url = "AJAXFetchFacultySubs.jsp";
                            url = url + "?reqid="+str+"&reqid2="+<%=fid%>                            
                            document.getElementById("drpFacSubs").innerHTML = "Loading...";
                            
                            xmlhttp.onreadystatechange = dirOutput30;
                            xmlhttp.open("GET", url, true);
                            xmlhttp.send(null);
                        }

                        function dirOutput30()
                        {
                            if (xmlhttp.readyState == 4)
                            {
                                
                                 document.getElementById("drpFacSubs").innerHTML = xmlhttp.responseText;
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

                    
                    
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Select subject:</label>
                            <select id="drpFacSubs" name="drpFacSubs"  class="form-control" onchange="dirtxt3();">
                             </select>
                        </div>
                    </div><!-- col-sm-6 -->
                     <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Date Of Birth *</label>
                           
			<!-- Javascript -->
				<script>
					init.push(function () {
						var options = {
							todayBtn: "linked",
							orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
						}
						$('#bs-datepicker-example').datepicker(options);

						$('#bs-datepicker-component').datepicker({ format: 'yyyy-mm-dd',startDate: '-3d'});

						var options2 = {
							orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
						}
						$('#bs-datepicker-range').datepicker(options2);

						$('#bs-datepicker-inline').datepicker();
					});
				</script>
				<!-- / Javascript -->
	<div class="input-group date" id="bs-datepicker-component">
            <input type="text" name="txtStudentDOB"  placeholder="YYYY-MM-DD" id="txtStudentDOB" class="form-control"><span class="input-group-addon"><i class="fa fa-calendar"></i></span>
						</div>
                          
                        </div>
                    </div><!-- col-sm-4 -->

                </div>
             
                <br><br>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-primary">
                            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="jq-datatables-example">

                                <thead>
                                    <tr>
                                        <th>Student Name</th>
                                        <th>Attendance Date</th>
                                        <th>Attendance Day</th>
                                         <th>Attendance Day</th>
                                    </tr>
                                </thead>
                               
                                <tbody>
 <%
//                       // String buildtbl=genobj.filltbl("select SubjectId,SubjectName,SubjectFees from subjectmaster",4 , "SubjectMaster");
//                       out.print(buildtable);
//                       out.flush();
                        %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


        </form>
        <%@include file="Footer.jsp" %>
    </body>

</html>
