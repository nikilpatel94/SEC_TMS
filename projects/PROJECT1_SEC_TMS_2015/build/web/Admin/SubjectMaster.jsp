<%-- 
    Document   : SubjectMaster
    Created on : 9 Sep, 2014, 4:55:17 PM
    Author     : STS4
--%>

<%@page import="com.tms.GenFun"%>
<%@page import="java.util.List"%>
<%@page import="com.tms.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject Management</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
         <%
                DBCon conobj =new DBCon();
                String sbid="";
                String std="";
                String sbfee="";
                String sbname="";
                String startdate="";
                String enddate="";
                String display="";
                 if(request.getParameter("reqid")!=null)
                {
                
                List<Object[]> rs1=null;
                rs1= conobj.FetchData("SELECT * FROM `db_sec_tms`.`subjectmaster` where SubjectId='"+request.getParameter("reqid").toString()+"' ");
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                        sbid=row[0].toString();
                        sbfee=row[1].toString();
                        sbname=row[2].toString();
                        display=row[3].toString();
                        std=row[4].toString();
                        startdate=row[5].toString();
                        enddate=row[6].toString();
                    }
               }
                 System.out.println("Stand:"+std+","+"displaystatus:"+display);
        
        
        
        %>
        
         <script>
             init.push(function() {
                // Setup validation
                $("#jq-validation-form").validate({
                    ignore: '.ignore, .select2-input',
                    focusInvalid: false,
                    rules: {
                        'txtSubjectName': {
                            required: true
                        },
                        'txtSubjectFees': {
                            required: true
                        },
                        'txtSubjectStart': {
                            required: true
                        },
                        'txtSubjectEnd': {
                            required: true
                        },
                        'drpStatus': {
                            required: true
                        }
                    }
                   
                });
      });
      
        </script>
        
        <form action="../SubjectMaster" class="panel form-horizontal" id="jq-validation-form">
           <input type="hidden" name="SubjectId" value="<%=sbid%>" />

            <div class="panel-heading">
                <strong><span class="panel-title"><a href="DisplaySubject.jsp" style="color: #42423A"> Subject Details</a></span></strong>
            </div>
            <div class="panel-body">

                <div class="row">
                     <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Standard</label>
                            <select id="drpStatus" name="drpStd" class="form-control">
                                 <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <%
//                                GenFun genobj=new GenFun();
//                                String filldrp="<option value=\"\">N/A</option>";
//                                filldrp=genobj.filldrp("select distinct Std from subjectmaster",std);
//                                out.print(filldrp);
                                %>
                            </select>
                        </div>
                   </div>
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Name</label>
                            <input type="text" name="txtSubjectName" value="<%=sbname%>" id="txtSubjectName" class="form-control">
                        </div>
                    </div><!-- col-sm-4 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Fees</label>
                            <input type="text" name="txtSubjectFees" value="<%=sbfee%>" id="txtSubjectFees" class="form-control">
                        </div>
                    </div><!-- col-sm-6 -->
                </div>
                        <div class="row">
                            
                            
                                
                      <div class="col-sm-4">
                           <label class="control-label">Start Date</label>
                            <div class="input-append date" id="dp3" data-date-format="dd-mm-yyyy">
                                <input type="text" name="txtSubjectStart"    class="form-control" placeholder="YYYY-MM-DD" id="txtSubjectStartDate"  value="<%=startdate%>">
<!--                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>-->
				</div>
                      </div>          
                       <div class="col-sm-4">   
                             <label class="control-label">End Date</label>    
                              <div class="input-append date" id="dp3" data-date-format="dd-mm-yyyy">
                                    <input type="text" name="txtSubjectEnd"    class="form-control" placeholder="YYYY-MM-DD" id="txtSubjectEndDate" value="<%=enddate%>">
<!--                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>-->
				</div>
                             </div>         
                                
                       <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Display Status</label>
                            <select id="drpStatus" name="drpStatus"  class="form-control">
                                <option value="Yes" <%if(display.equals("Yes")){%> selected="true"<%}%>>Yes</option>
                                <option value="No" <%if(display.equals("No")){%> selected="true"<%}%>>No</option>
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