<%-- 
    Document   : SubjectChoiceDetail
    Created on : 9 Sep, 2014, 5:10:20 PM
    Author     : STS4
--%>
<%@page  import="java.util.List" %>
<%@page  import="com.tms.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject Management</title>
    </head>
    <body>
        <%@include file ="Header.jsp"%>
        <%
        DBCon conobj= new DBCon();
        GenFun genobj= new GenFun();
    
                String subid="";
                String stdid="";
                String subchoiceid="";


                 if(request.getParameter("reqid")!=null)
                {
                     subchoiceid=request.getParameter("reqid").toString();
                List<Object[]> rs1=null;
                rs1= conobj.FetchData("SELECT * FROM `db_sec_tms`.`subjectchoicedetails` where SubjectChoiceId='"+subchoiceid+"' ");


                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                    subchoiceid=row[0].toString();
                    
                    subid=row[1].toString();
                    stdid=row[2].toString();
                   
                }

               }



        %>
        <form action="../SubjectChoiceDetails" class="panel form-horizontal">
            <input type="hidden" name="SubjectChoiceId" value="<%=subchoiceid%>" />

            <div class="panel-heading">
                <strong><span class="panel-title">Subject Choice Detail</span></strong>
            </div>
            <div class="panel-body">

                <div class="row">
                       <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            
                            <label class="control-label" value="<%=stdid%>">Student Name</label>
                            <select id="drpStudentId" name="drpStudentId" class="form-control" onchange="dirtxt3()">
                             <%
                                 String builddrp=genobj.filldrp("SELECT StudentId,StudentName FROM `db_sec_tms`.`studentmaster`", stdid);
                                out.print(builddrp);
                                out.flush();
                                %>    
                            </select>
                        </div>
                    </div>
<!--                               <script>
                        function dirtxt3()
                        {
                            xmlhttp = GetXmlHttpObject0();
                            
                            if (xmlhttp == null)
                            {
                                alert("Your browser does not support Ajax HTTP");
                                return;
                            }
                            
                            var url3 = "";
                            var str1=document.getElementById("drpStudentId");
                           
                            var str=str1.options[str1.selectedIndex].value;
//                          
                            url3 = "AJAXFetchStandard.jsp";
                            url3 = url3 + "?reqid="+str;                         
                            document.getElementById("drpStd").innerHTML = "Loading...";

                            xmlhttp.onreadystatechange = dirOutput3;
                            xmlhttp.open("GET", url3, true);
                            xmlhttp.send(null);
                        }

                        function dirOutput3()
                        {
                            if (xmlhttp.readyState == 4)
                            {
                                 document.getElementById("drpStd").innerHTML = xmlhttp.responseText;
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
                    -->
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
                    
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" value="<%=subid%>">Subject Name</label>
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
