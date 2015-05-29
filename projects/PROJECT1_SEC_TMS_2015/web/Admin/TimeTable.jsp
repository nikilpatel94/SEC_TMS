<%-- 
    Document   : TimeTable
    Created on : 9 Sep, 2014, 5:55:54 PM
    Author     : STS4
--%>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time Table Management</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        
         <%
                DBCon conobj =new DBCon();
                GenFun genobj=new GenFun();
                
                String tid="";
                String fid="";
                String sid="";
                String stime="";
                String etime="";
                String wday="";
                String eday="";
                String distatus="";
                String std="";
                 if(request.getParameter("reqid")!=null)
                {
                    tid=request.getParameter("reqid").toString();
                List<Object[]> rs1=null;
                rs1= conobj.FetchData("SELECT * FROM `db_sec_tms`.`timetable` where TimeTableId='"+tid+"' ");
               
                
                
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                        tid=row[0].toString();
                        fid=row[1].toString();
                        sid=row[2].toString();
                        stime=row[3].toString();
                        etime=row[4].toString();
                        wday=row[5].toString();
                        eday=row[6].toString();
                        distatus=row[7].toString();
                        std=row[8].toString();
                    
                    }
               }
        
        
        
        %>
        
        <script>
            init.push(function() {
                $("#jq-validation-form").validate({
                    ignore: '.ignore, .select2-input',
                    focusInvalid: false,
                    rules: {
                        'txtStartTime': {
                            required: true
                        },
                        'txtEndTime': {
                            required: true
                        },
                        'txtExecutingDay': {
                            required: true
                        }
                    }
                   
                });
            });
      
        </script>
        
        <form action="../Timetable" class="panel form-horizontal"id="jq-validation-form">
            <input type="hidden" name="TimeTableId" value="<%=tid%>" />

            <div class="panel-heading">
                <strong><span class="panel-title">Time Table</span></strong>
            </div>
            <div class="panel-body">

                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" value="<%=fid%>">Faculty Name</label>
                            <select id="drpFacultyId" name="drpFacultyId" class="form-control">
                                <%
String builddrp= genobj.filldrp("select FacultyId,FacultyName from facultymaster", fid);
out.print(builddrp);
out.flush();

                           %>
                            </select>
                        </div>
                    </div>
                   <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Standard</label>
                            <select id="drpStd" name="drpStd" class="form-control" onchange="dirtxt30();">
                                <option value="">Select Standard</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        </div>
                   </div>
                                      <script>
                        function dirtxt30()
                        {
                            xmlhttp = GetXmlHttpObject0();
                            
                            if (xmlhttp == null)
                            {
                                alert("Your browser does not support Ajax HTTP");
                                return;
                            }
                           
                            var url3 = "";
                            var str1=document.getElementById("drpStd");
                           
                            var str=str1.options[str1.selectedIndex].value;
                            url3 = "AJAXFetchSubjectForSubjectChoiceDetail.jsp";
                            url3 = url3 + "?reqid="+str;                         
                            document.getElementById("drpSubjectId").innerHTML = "Loading...";

                            xmlhttp.onreadystatechange = dirOutput30;
                            xmlhttp.open("GET", url3, true);
                            xmlhttp.send(null);
                            
                        }

                        function dirOutput30()
                        {
                            if (xmlhttp.readyState == 4)
                            {
                                 document.getElementById("drpSubjectId").innerHTML = xmlhttp.responseText;
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
                    
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" value="<%=sid%>">Subject Name</label>
                            <select id="drpSubjectId" name="drpSubjectId" class="form-control">
                            
                            </select>
                        </div>
                    </div>
                 
          
                            
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" value="<%=wday%>">Week Day</label>
                            <select id="drpWeekDay" name="drpWeekDay" class="form-control">
                                <option value="Monday">Monday</option>
                                <option value="Tuesday">Tuesday</option>
                                <option value="Wednesday">Wednesday</option>
                                <option value="Thursday">Thursday</option>
                                <option value="Friday">Friday</option>
                                <option value="Saturaday">Saturday</option>
                                <option value="Sunday">Sunday</option>
                                <!-- Week Day(drop down manu) -->
                            </select>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label" >Start Time</label>
                            <input type="text" name="txtStartTime" id="txtStartTime" class="form-control" placeholder="HH:MM:SS" value="<%=stime%>">
                        </div>
                    </div><!-- col-sm-2 -->
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label" >End Time</label>
                            <input type="text" name="txtEndTime" id="txtEndTime" class="form-control" placeholder="HH:MM:SS" value="<%=etime%>">
                        </div>
                    </div><!-- col-sm-6 -->

                    
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label" >Executing Date</label>
                            <input type="text" name="txtExecutingDay" id="txtExecutingDay" class="form-control" placeholder="YYYY-MM-DD" value="<%=eday%>">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" >Display Status</label>
                            <select id="drpStatus" name="drpStatus" class="form-control" value="<%=distatus%>">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>


            <div class="panel-footer text-center">
              <%
                try
                        {
                if(request.getParameter("reqid")!=null)
                    {
                      if(request.getParameter("reqid").toString().equals("0"))
                          {%>

                          <input id="btnSave" name="btnProceed" type="submit" class="btn btn-md btn-labeled btn-success" value="Save" />


                          <%
                          }
                      else
                          {
                          %>

                           <input id="btnUpdate" class="btn btn-md btn-labeled btn-info" name="btnProceed" type="submit" value="Update" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="btnDelete" class="btn btn-md btn-labeled btn-danger" name="btnProceed" type="submit" value="Delete" />				

                          <%

                          }


                    }
                else
                        {%>
                      <input id="btnSave" name="btnProceed" type="submit" class="btn btn-md btn-labeled btn-success" value="Save" />


                        <%
                        }
}
                catch(Exception ex)
                        {
                    ex.printStackTrace();
                    }
                %>
                    
            </div>
        </form>
        <%@include file="Footer.jsp" %>
    </body>
</html>
