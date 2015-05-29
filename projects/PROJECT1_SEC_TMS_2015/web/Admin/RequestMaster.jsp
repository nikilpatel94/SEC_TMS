<%-- 
    Document   : RequestMaster
    Created on : Oct 6, 2014, 3:34:20 PM
    Author     : STS1
--%>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Management</title>
    </head>
    
    
    
    <body>
        <%@include file="Header.jsp" %>
        <%
                DBCon conobj =new DBCon();
                String reqid="";
                String reqname="";
                String reqmobile="";
                String reqemail="";
                String reqfor="";
                String reqdesc="";
                String reqstatus="";
                String reqanswer="";
                
                 if(request.getParameter("reqid")!=null)
                {
                     reqid=request.getParameter("reqid").toString();
                    List<Object[]> rs1=null;
                rs1= conobj.FetchData("SELECT * FROM requestmaster where Id='"+reqid+"'  ");
               
                
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                    reqid=row[0].toString();
                    reqname=row[1].toString();
                    reqmobile=row[2].toString();
                    reqemail=row[3].toString();
                    reqfor=row[4].toString();
                    reqdesc=row[5].toString();
                    reqstatus=row[6].toString();
                    if(row[7]!=null)
                        reqanswer=row[7].toString();
                  
                }
               
               }
        
        
        
        %>
        
        
        
         <form action="../DisplayRequest" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="ReqId" value="<%=reqid%>" />
            <div class="panel-heading">
                <strong>	<span class="panel-title">Request Details</span></strong>
            </div>
            <div class="panel-body">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Name</label>
                            <input type="text" name="txtReqName" value="<%=reqname%>" id="txtFacultyName" class="form-control" readonly>
                        </div>
                    </div><!-- col-sm-6 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-phone" class="control-label">Contact No.</label>
                            <input type="text" name="txtReqMobile" value="<%=reqmobile%>" id="txtFacultyContact" class="form-control"readonly>
                        </div>
                    </div><!-- col-sm-6 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-email" class="control-label">Email Id</label>
                            <input type="text" name="txtReqEmail" value="<%=reqemail%>" id="txtFacultyEmail" class="form-control"readonly>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                    <div class="form-group no-margin-hr">
                            <label for="jq-validation-phone" class="control-label">Request For</label>
                            <input type="text" name="drpRequestFor" value="<%=reqfor%>" id="txtFacultyContact" class="form-control"readonly>
                        </div>
                     </div>
                     <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Description</label>
                            <textarea class="form-control"
                                      id="txtStudentAddress"  name="txtRequestDescription" cols="20" rows="3" readonly><%=reqdesc%></textarea>
                        </div>
                    </div><!-- col-sm-6 -->
                    <div class="col-sm-4">
                    <div class="form-group no-margin-hr">
                            <label class="control-label">Display Status</label>
                            <select id="drpStatus" name="drpReqStatus"  class="form-control">
                                <option value="pending">Pending</option>
                                <option value="rejected">Rejected</option>
                                <option value="accepted">Accepted</option>

                            </select>
                        </div>
                   
                   </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        
                      <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Answer</label>
                            <textarea class="form-control"
                                      id="txtStudentAddress"  name="txtReqAnswer" cols="20" rows="3"><%=reqanswer%></textarea>
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
                      %>

                          <input id="btnUpdate" class="btn btn-md btn-labeled btn-info" name="btnProceed" type="submit" value="Update" />


                          
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="btnDelete" class="btn btn-md btn-labeled btn-danger" name="btnProceed" type="submit" value="Delete" />				

                          <%
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
