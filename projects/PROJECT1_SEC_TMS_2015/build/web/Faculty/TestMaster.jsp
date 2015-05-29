    <%-- 
    Document   : TestMaster
    Created on : Feb 16, 2015, 11:44:42 AM
    Author     : akash
--%>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Master</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        
        <%
                DBCon conobj1 =new DBCon(); 
                String tid="";
                String tname="";
                String sbid="";
                String tmarks="";
                String qmarks="";
                               
                 if(request.getParameter("reqid")!=null)
                {
                     tid=request.getParameter("reqid").toString();
                     session.setAttribute("TestId", tid);
                List<Object[]> rs1=null;
                rs1= conobj1.FetchData("SELECT * FROM testmaster where TestId='"+tid+"' ");
             
                
                
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                        tid=row[0].toString();
                       tname=row[1].toString();
                       tmarks=row[2].toString();
                       qmarks=row[3].toString();
                    }
               }
        
        
        
        %>
        
         
        <script>
            init.push(function() {
                $("#jq-validation-form").validate({
                    ignore: '.ignore, .select2-input',
                    focusInvalid: false,
                    rules: {
                        'txtTestName': {
                            required: true
                        },
                        'txtTotalMarks': {
                            required: true
                        },
                        'txtQualificationMarks': {
                            required: true
                        }
                    }
                   
                });
            });
         </script>
         
         
         <form action="../TestMaster" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="TestId" value="<%=tid%>" />

            <div class="panel-heading">
                <span class="panel-title"><strong>Test Detail</strong></span>
            </div>

            <div class="panel-body">

                <%
                    if(! request.getParameter("reqid").toString().equals("0"))
                    {
                %>
                
                <div class="row">
                    <div class="col-sm-12">
                        <a href="ViewTestPapaer.jsp?reqid=<%=request.getParameter("reqid") %>" > <strong>View Test paper for this test</strong></a>
                    </div>
                </div>
                <hr class="no-grid-gutter-h grid-gutter-margin-b no-margin-t">
                
                <%  
                    
                    }
                %>
                <div class="row">
                    
                    <div class="col-sm-5">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Select Standard*</label>
                            <select  name="drpStd" id="drpStd" class="form-control" onchange="dirtxt30();">
                                <option >Select Standard</option>
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

                    <div class="col-sm-2">
                    </div><!-- col-sm-4 -->
                 
                    
                    <div class="col-sm-5">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Select subject*</label>
                            <select id="drpFacSubs" name="drpFacSubs"  class="form-control" onchange="dirtxt3();">
                             </select>
                        </div>
                    </div><!-- col-sm-6 -->

                </div>
                            
          
                
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

                       
                <div class="row">
                    <div class="col-sm-4">
                           <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Test Name *</label>
                            <input type="text" name="txtTestName" value="<%=tname%>" id="txtTestName" class="form-control">
                        </div>
                    </div><!-- col-sm-4 -->
               
                     
                    
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Total Marks *</label>
                            <input type="text" name="txtTotalMarks" value="<%=tmarks%>"  id="txtTotalMarks" class="form-control">
                        </div>
                    </div>
                    
                    <div class="col-sm-4">
                       <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Qualification Marks *</label>
                            <input type="text" name="txtQualificationMarks" value="<%=qmarks%>"  id="txtQualificationMarks" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-1">
                    </div><!-- col-sm-4 -->
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
                </div>
        </form>
        <%@include file="Footer.jsp" %>
   
    </body>
</html>
