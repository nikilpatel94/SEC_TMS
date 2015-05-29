<%-- 
    Document   : AttendanceMaster
    Created on : Jan 17, 2015, 1:10:36 PM
    Author     : akash
--%>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/stylesheets/checkbox.css" rel="stylesheet" type="text/css">
        <title>Attendance</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
          <%
            GenFun genobj= new GenFun();
        try
        {
            if(request.getParameter("resid")!=null && request.getParameter("str")!=null)
            {
                if(request.getParameter("str").toString().equals("Success"))
                {
                    if(request.getParameter("resid").toString().equals("1"))
                    {
                    
                %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Attendance submitted  Successfully!!!.
</div>
                <%
                    }
                }    
                }
                }catch(Exception ex)
                {%>
                
                   <div class="alert  alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Error!</strong> <% ex.printStackTrace(); %> !!!.
</div>

        <%
                
                }
        %>
       
        <form action="../Attendance" class="panel form-horizontal">
        <input type="hidden" name="FacultyId" value="<%=fid%>" />
            
            <div class="panel-heading">

                <strong><span class="panel-title">Attendance Details for <%=format2%></span></strong>
            </div>
        
            <div class="panel-body">
            
          <div class="row">
                    <div class="col-sm-6">
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

                    
                    
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Select subject:</label>
                            <select id="drpFacSubs" name="drpFacSubs"  class="form-control" onchange="dirtxt3();">
                             </select>
                        </div>
                    </div><!-- col-sm-6 -->

                </div>
                            
          
            <div class="panel-footer text-center" >
                
            <div class="row">
                  <div class="col-sm-12 text-left-lg">
                <label class="control-label"align="left" >Fill Attendance</label>
                </div>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="text-center">Present</th>
                            <th class="text-center">Student ID</th>
                            <th class="text-center">Student Name</th>
                        </tr>
                    </thead>
                       <script>
                   function dirtxt3()
                        {
                            xmlhttp = GetXmlHttpObject();
                            if (xmlhttp == null)
                            {
                                alert("Your browser does not support Ajax HTTP");
                                return;
                            }
                            
                            //var emp = document.getElementById("emp_no").value;
                            var url = "";
                            var str1=document.getElementById("drpFacSubs");
                            var str=str1.options[str1.selectedIndex].value;
                            url = "AJAXFetchStudentsAttandance.jsp";
                            url = url + "?reqid="+str;

                            document.getElementById("dirdiv").innerHTML = "Loading...";
                            
                            xmlhttp.onreadystatechange = dirOutput3;
                            xmlhttp.open("GET", url, true);
                            xmlhttp.send(null);
                        }

                        function dirOutput3()
                        {
                            if (xmlhttp.readyState == 4)
                            {
                                document.getElementById("dirdiv").innerHTML = xmlhttp.responseText;
                            }
                        }

                        function GetXmlHttpObject()
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
                    <tbody id="dirdiv">
                    
                  
              
                    </tbody>
                </table>
                </div>
            </div>
               </div>
                 <div class="row">
                    <div class="col-sm-12 text-center-sm">
                        <input id="btnSearch" name="btnProceed" type="submit" class="btn btn-sm btn-labeled btn-success" value="Submit" />
                    </div><!-- col-sm-6 -->

                </div>
            </div>
        </form>
        
        <%@include file="Footer.jsp" %>
    </body>
</html>
