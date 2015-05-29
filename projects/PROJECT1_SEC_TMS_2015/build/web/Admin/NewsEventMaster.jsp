<%-- 
    Document   : NewsEvent
    Created on : Jan 17, 2015, 7:04:44 PM
    Author     : Nikil's Delly
--%>

<%@page import="com.tms.GenFun"%>
<%@page import="com.tms.DBCon"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>News and Events</title>
    </head>
    
    <body>
        <%@include file="Header.jsp" %>
            <%
                DBCon conobj =new DBCon();
                GenFun genobj=new GenFun();
                String eid="";
                String fid="";
                String ename="";
                String esub="";
                String estart="";
                String eend="";
                String eloc="";
                String eexedate="";
                String estatus="";
                
                
                 if(request.getParameter("reqid")!=null)
                {
                     eid=request.getParameter("reqid").toString();
                List<Object[]> rs1=null;
                rs1= conobj.FetchData("SELECT * FROM eventmaster where EventId='"+eid+"'  ");
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                        eid=row[0].toString();
                    ename=row[1].toString();
                    esub=row[2].toString();
                    estart=row[3].toString();
                    eend=row[4].toString();
                    eloc=row[5].toString();
                    eexedate=row[6].toString();
                    estatus=row[7].toString();
                }
               
               }
        
        
        
        %>
    
<form action="../NewsEventMaster" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="EventId" value="<%=eid%>" />
            <div class="panel-heading">
                <strong>	<span class="panel-title">Event Details</span></strong>
            </div>
            <div class="panel-body">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Event Name *</label>
                            <input type="text" name="txtEventName" value="<%=ename%>" id="txtEventName" class="form-control">
                        </div>
                    </div><!-- col-sm-6 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-phone" class="control-label">Location *</label>
                            <input type="text" name="txtEventLocation" value="<%=eloc%>" id="txtEventLocation" class="form-control">
                        </div>
                    </div><!-- col-sm-6 -->
                    
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Display Status</label>
                            <select id="drpStatus" name="drpStatus" value="<%=estatus%>" class="form-control">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                        </div>
                    </div>
                </div>

                        
                        
                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">Start Time  *</label>
                            <input type="text" name="txtEventStartTime" value="<%=estart%>" id="txtEventStartTime" class="form-control" placeholder="HH:MM">
                        </div>
                    </div><!-- col-sm-6 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">End Time  *</label>
                            <input type="text" name="txtEventEndTime" value="<%=eend%>" id="txtEventEndTime" class="form-control" placeholder="HH:MM">
                        </div>
                    </div><!-- col-sm-6 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">Execution Date *</label>
                            <input type="text" class="form-control" value="<%=eexedate%>" id="txtEventExeDate" name="txtEventExeDate" placeholder="YYYY-MM_DD">
                        </div>
                    </div>
                </div>
                                      
                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">Event Subject *</label>
                            <textarea class="form-control"
                                      id="txtEventSubject" name="txtEventSubject" cols="20" rows="3"><%=esub%></textarea>
                        </div>
                    </div><!-- col-sm-6 -->
                        
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" value="<%=fid%>">Associate Faculty Name</label>
                            <select id="drpFacultyId" name="drpFacultyId" class="form-control">
       <%
            String builddrp= genobj.filldrp("select FacultyId,FacultyName from facultymaster", fid);
            out.print(builddrp);
            out.flush();
           %>
                        </select>
                        </div>
                    </div>
               </div>        

                <!--</div>-->
                                

            
                <%
                try
                        {
                if(request.getParameter("reqid")!=null)
                    {
                      if(request.getParameter("reqid").toString().equals("0"))
                          {%>
                                
                        
                        <div class="panel-footer text-center">
                          <input id="btnSave" name="btnProceed" type="submit" class="btn btn-md btn-labeled btn-success" value="Save" />
                        </div>  

                          <%
                          }
                      else
                          {
                          %>
                          
                        </div>  
                          <div class="panel-footer text-center">
                           <input id="btnUpdate" class="btn btn-md btn-labeled btn-info" name="btnProceed" type="submit" value="Update" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="btnDelete" class="btn btn-md btn-labeled btn-danger" name="btnProceed" type="submit" value="Delete" />				
                          </div>
                          <%

                          }


                    }
                else
                        {%>
                        </div>
                        <div class="panel-footer text-center">
                      <input id="btnSave" name="btnProceed" type="submit" class="btn btn-md btn-labeled btn-success" value="Save" />
                      </div>

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
