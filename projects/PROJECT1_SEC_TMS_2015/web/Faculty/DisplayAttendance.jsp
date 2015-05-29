<%-- 
    Document   : DisplayAttendance
    Created on : Feb 17, 2015, 11:28:00 AM
    Author     : akash
--%>
<%@page import="com.tms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Attendance</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        
<%
    String type=request.getParameter("reqid");
    //System.out.println(type);
%>          
        <form action="DisplayAttendance.jsp" class="panel form-horizontal" method="post">

            <div class="panel-heading">
                <span class="panel-title"><h4><strong><a href="DisplayAttendance.jsp?reqid=Subject" style="color: #42423A"> Attendance</a></strong></h4></span>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-2">
                        <a href="Attendance.jsp?reqid=0" > <strong>New Attendance Sheet</strong></a>
                    </div><!--
                    <div class="col-sm-3">
                            <a href="DisplayAttendance.jsp?reqid=Subject" > <strong>View Attendance by Subject</strong></a>
                    </div>
                    
                    <div class="col-sm-2">
                        <a class=".links" href="DisplayAttendance.jsp?reqid=AdvSearch" > <strong>Advanced Search Here</strong></a>
                    </div>
                    
                </div>-->
<!--                <hr class="no-grid-gutter-h grid-gutter-margin-b no-margin-t">-->
                
<!--                 <div class="row">
                     <div class="col-sm-3">
                     </div>
                    <div class="col-sm-3">
                        <input  type="submit" class="btn btn-primary btn-outline btn-flat" id="btnStudent" value="Student" name="btnProceed" />
                    </div>
                    <div class="col-sm-3">
                        <input  type="submit" class="btn btn-primary btn-outline btn-flat" id="btnDate" value="Date" name="btnProceed"  />
                    </div>
                     <div class="col-sm-3">
                     </div>-->
<!--                    <div class="col-sm-3">
                        <input  type="submit" id="btnSubject"  name="btnProceed" class="btn btn-primary btn-outline btn-flat"  value="Subject"/>
                    </div>-->
<!--                </div>-->

                
                <%

                    if(type!=null)
                    {
                        
                        if(type.equals("Subject")){
                                         %> 
<!--                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label"><font size="3.5px"><b>Select Standard and subject from below</b></font></label>
                        </div>
                    </div> col-sm-6 
                </div>                
                -->
                <!--<div id="myid" style="display:none">hi</div>-->
                </div>
<hr>
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
                            <select id="drpFacSubs" name="drpFacSubs"  class="form-control" onchange="dirtxt300('<%= type%>' );">
                             </select>
                        </div>
                    </div><!-- col-sm-6 -->

                </div>
                            
          
            <div class="panel-footer text-center" >
             
		<script>
			init.push(function () {
				$('#jq-datatables-example').dataTable();
				$('#jq-datatables-example_wrapper .table-caption').text('Attendance Table');
				$('#jq-datatables-example_wrapper .dataTables_filter input').attr('placeholder', 'Search...');
			});
		</script>  
           
                
                
                
                
<!--                <div class="row">
                    <div  align="left">
                        <a><strong>View Attendance </strong></a>
                    </div>
                </div>-->

                    <script>
                   function dirtxt300(type)
                        {
                             
                            xmlhttp = GetXmlHttpObject();
                            if (xmlhttp == null)
                            {
                                alert("Your browser does not support Ajax HTTP");
                                return;
                            }
                            var url = "";
                            var str1=document.getElementById("drpFacSubs");
                            var str=str1.options[str1.selectedIndex].value;
                            url = "AJAXDisplayAttendaceTable.jsp";
                            url = url + "?sub="+str+"&type="+type+"&faculyid="+<%= fid%>;                            
                            //url = url +"?sub="+str+"&type="+;
                            //alert("Inside of Student type!");
                            document.getElementById("dirdiv").innerHTML = "<tr>Loading...</tr></tbody>";
                            xmlhttp.onreadystatechange = dirOutput3;
                            xmlhttp.open("GET", url, true);
                            xmlhttp.send(null);
                        }

                        function dirOutput3()
                        {
                            if (xmlhttp.readyState == 4)
                            {
                              //  alert("2nd alert!");
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

                    
                    
                    <br><br>
				<div class="table-primary">
                                    <div class="table-header">
                                        <div class="table-caption">
                                            Attendance Table
                                        </div>
                                    </div>
                                    <table class="table table-bordered">                   
                				<thead>
							<tr>
								<th ><center>Student ID</center></th>
								<th><center>Student Name</center></th>
								<th><center>Attended lecs./%</center></th>
							</tr>
						</thead>
		       
                                                                                                
                                                
                    <tbody id="dirdiv">
                        <tr><td>No data available</td><td></td><td></td></tr>
                    </tbody>
                </table>
                </div>
                    
            
                  

				                 
						
                </div>
							
				                            <%
                        }
                        else if(type.equals("AdvSearch"))
                        {
                        
                 %>
 <br><br>
                 <div class="row"> 
                    <div class="col-sm-4">
                    <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Date</label>
                           
			<!-- Javascript -->
<!--				<script>
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
				</script>-->
				<!-- / Javascript -->
                                <div class="input-append date" id="dp3" data-date-format="dd-mm-yyyy">
                                    <input type="text" name="txtAttendanceDate"    class="form-control" placeholder="YYYY-MM-DD" id="txtAttendanceDate" >
<!--                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>-->
				</div>
                          
                        </div>
                    </div>

                     
                     
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
                            <select id="drpFacSubs" name="drpFacSubs"  class="form-control" onchange="dirtxt3('<%= type%>' );">
                             </select>
                        </div>
                    </div><!-- col-sm-6 -->

                    
               
                    
                    
                    
                    
                </div>
                            
          
            <div class="panel-footer text-center" >
             
		<script>
			init.push(function () {
				$('#jq-datatables-example').dataTable();
				$('#jq-datatables-example_wrapper .table-caption').text('Attendance Table');
				$('#jq-datatables-example_wrapper .dataTables_filter input').attr('placeholder', 'Search...');
			});
		</script>  
           
                
                
                
                
                <div class="row">
                    <div  class="col-sm-3">
                        <a href=""><strong>View Attendance by <%=type%></strong></a>
                    </div>
                    <div  class="col-sm-2">
                    <button class="btn btn-labeled btn-primary"><span class="btn-label icon fa fa-camera-retro"></span>Print</button>&nbsp;&nbsp;
                    </div>
                </div>
                    <div class="row">
                        
                        </div>

                    <br><br>
				<div class="table-primary">
                                    <div class="table-header">
                                        <div class="table-caption">
                                            Attendance Table
                                        </div>
                                    </div>
                                    <table class="table table-bordered">                   
                				<thead>
							<tr>
								<th ><center>Student ID</center></th>
								<th><center>Student Name</center></th>
								<th><center>Date</center></th>
                                                                <th><center>Day</center></th>
								<th><center>Status</center></th>
							</tr>
						</thead>
		       
                                                
                                                <script>
                   function dirtxt3(type)
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
                            var date=document.getElementById("txtAttendanceDate").value;
                            alert("Select date is :"+date);
                            url = "AJAXDisplayAttendaceTable.jsp";
                            url = url + "?sub="+str+"&type="+type+"&faculyid="+<%= fid%>+"&date="+date;                            
                            //url = url +"?sub="+str+"&type="+;
                            alert("str1:"+str1+"  selected:"+str+"  URL:"+url);
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
		
 <%                       
                        
                        }  
                        
                    }
                    else{
                    //for fetching total attendace fo this year for the subjects
                        try{
                     DBCon cononbj=new DBCon();
                     String subs[][]=new String[10][2];
                     String years[]=new String[2];
                     int ct=0;
                     List<Object[]> rs=null;
                     rs=conobj.FetchData("SELECT DISTINCT Subjectname ,`subjectmaster`.Std FROM `facultysubjectdetail`,`subjectmaster` WHERE facultyidfk='"+fid+"' AND subjectmaster.subjectid=facultysubjectdetail.subjectidfk");
                     for(Object rowObject:rs)
                     {
                         Object[] row=(Object[])rowObject;
                         if(row[0]!=null)
                             subs[ct][0]=row[0].toString();
                         if(row[1]!=null)
                             subs[ct][1]=row[1].toString();
                         ct++;
                     }
                            %>
                
	<div class="table-primary">
                                    <div class="table-header">
                                        <div class="table-caption">
                                            Attendance Table for year
                                        </div>
                                    </div>
                                    <table class="table table-bordered">                   
                				<thead>
							<tr>
								<th ><center>Student ID</center></th>
								<th><center>Student Name</center></th>
                                                                <%
                                                                    for(int i=0;i<ct&& i<subs.length;i++)
                                                                    {
                                                                 %>
								<th><center><%=subs[i][0]%>&nbsp;(Std:<Strong><%=subs[i][1]%></strong>)</center></th>
                                                                <%  }%>
							</tr>
						</thead>

                    <tbody id="dirdiv">
                    
                    </tbody>
                </table>
             
                </div>

<hr class="no-grid-gutter-h grid-gutter-margin-b no-margin-t">
            
            <div id="printdiv">
            <div class="widget-article-comments tab-pane panel no-padding no-border fade in active" id="profile-tabs-board">


                            <div class="form-group no-margin-hr">
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-2" ><label >Select Format*</label></div>
                                    <div class="col-sm-4">
                                        <select id="drpStatus" name="drpStatus" class="form-control">
                                            <option value="" selected="pdf">pdf</option>

                                            <option value="excel">Excel</option>
                                        </select>
                                    </div>

                                </div>
                            </div>


                            <div class="form-group no-margin-hr">
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-2" ><label >Enter Path*</label></div>
                                    <div class="col-sm-4">

                                        <input type="text" name="folderPath"    class="form-control" id="folderPath" >

                                    </div>
                                </div>
                            </div>

                                    <div class="form-group no-margin-hr">
                                        <div class="row">
                                            <div class="col-sm-3"></div>
                                            <div class="col-sm-2" ></div>
                                            <div class="col-sm-4">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                
                            
                                                <input  type="submit" class="btn btn-success" id="btnSendSMS" value="Send" name="btnProceed" /> 
<!--                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input  type="reset" class="btn btn-danger" id="btnSendSMS" value="Cancle" name="btnProceed" /> -->
                                            </div>
                                        </div>
                                    </div>



                                        <!--<hr class="no-panel-padding-h panel-wide">-->

                                    </div>     
            </div>
                            
                </form>
                            <%}catch(Exception ex){
                                out.print(ex.toString());
                            }
                   
                    }%>
        <%@include file="Footer.jsp" %>
    </body>

</html>
