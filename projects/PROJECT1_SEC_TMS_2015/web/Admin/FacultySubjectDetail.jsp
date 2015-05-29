<%-- 
    Document   : FacultySubjectDetail
    Created on : 9 Sep, 2014, 4:14:03 PM
    Author     : STS4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Management</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        
        <%
                DBCon conobj =new DBCon();
                String fid="";
                String facsubid="";
                String sbid="";
                 String std="";               
                 if(request.getParameter("reqid")!=null)
                {
                     facsubid=request.getParameter("reqid").toString();
                List<Object[]> rs1=null;
                rs1= conobj.FetchData("SELECT * FROM facultysubjectdetail where FacultySubjectId='"+facsubid+"' ");
             
                
                
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                        facsubid=row[0].toString();
                        fid=row[1].toString();
                    sbid=row[2].toString();
                  //  std=row[3].toString();
                    }
               }
        
        
        
        %>

        <form action="../facultysubjectdetail" class="panel form-horizontal">
            <input type="hidden" name="FacultySubjectId" value="<%=facsubid%>" />

            <div class="panel-heading">
                <strong><span class="panel-title">Faculty-Subject Detail</span></strong>
            </div>
            <div class="panel-body">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" value="<%=fid%>" >Faculty Name</label>
                            <select id="drpFacultyId" name="drpFacultyId" class="form-control">
                           <%
GenFun genobj= new GenFun();
String builddrp= genobj.filldrp("select FacultyId,FacultyName from facultymaster", fid);
out.print(builddrp);
out.flush();

                           %>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-4">
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
                            //var emp = document.getElementById("emp_no").value;
                            var url = "";
                            var str1=document.getElementById("drpStd");
                            
                            var str=str1.options[str1.selectedIndex].value;
                            url = "AJAXFetchFacultySubject.jsp";
                            url = url + "?reqid="+str;                         
                            document.getElementById("drpSubjectId").innerHTML = "Loading...";
                            
                            xmlhttp.onreadystatechange = dirOutput30;
                            xmlhttp.open("GET", url, true);
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

                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" value="<%=sbid%>">Subject Name</label>
                            <select id="drpSubjectId" name="drpSubjectId" class="form-control">
                                
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
