<%-- 
    Document   : LectureLink
    Created on : May 14, 2015, 11:08:25 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lecture Link</title>
    </head>
    <body>
         <%@include file="Header.jsp" %>
      <%
                DBCon conobj1 =new DBCon();
                String tid="";
                String date="";
                String sub="";
                
                
                if(request.getParameter("reqid")!=null)
                {
                List<Object[]> rs1=null;
                tid=request.getParameter("reqid").toString();
                rs1= conobj1.FetchData("SELECT TimeTableId,ExecutingDate,SubjectIdFK FROM `db_sec_tms`.`timetable` where FacultyIdFK='"+fid+"'And TimeTableId='"+request.getParameter("reqid")+"' ");
           
             
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                    tid=row[0].toString();
                    
                    date=row[1].toString();
                    sub=row[2].toString();
                   
                }
               
               }
               %>
 
        <form action="../LectureLink" class="panel form-horizontal">
            <input type="hidden" name="TimeTableId" value="<%=tid%>" />
         <div class="panel-heading">
                <strong><span class="panel-title">Lecture-Link</span></strong>
            </div>
                <div class="panel-body">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">subject ID *</label>
                            <input type="text" name="txtSubjectID" value="<%=sub%>" id="txtSubjectID" class="form-control" readonly>
                        </div>
                  </div> <!--col-sm-4 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Link Name *</label>
                            <input type="text" name="txtLectureLink" value="" id="txtLectureLink" class="form-control">
                        </div>
                    </div><!-- col-sm-4 -->
                     <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Date *</label>
                            <input type="text" name="txtdate" value="<%=date%>" id="txtdate" class="form-control" readonly>
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
<!--                        <div class="panel-footer text-center">
                          <input id="btnSave" name="btnProceed" type="submit" class="btn btn-md btn-labeled btn-success" value="Save" />
                        </div>  -->

                          <%
                          }
                      else
                          {
                          %>
                          
                        </div>  
                          <div class="panel-footer text-center">
                           <input id="btnUpdate" class="btn btn-md btn-labeled btn-info" name="btnProceed" type="submit" value="Update" />
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

   
        </form>
         <%@include file="Footer.jsp" %>
    </body>
</html>
