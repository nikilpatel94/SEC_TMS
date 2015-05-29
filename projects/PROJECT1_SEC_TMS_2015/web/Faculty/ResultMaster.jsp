<%-- 
    Document   : ResultMaster
    Created on : Feb 16, 2015, 12:57:25 PM
    Author     : akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Result</title>
    </head>
     <body>
        <%@include file="Header.jsp" %>
        
         
        <script>
            init.push(function() {
                $("#jq-validation-form").validate({
                    ignore: '.ignore, .select2-input',
                    focusInvalid: false,
                    rules: {
                        'txtMarks': {
                            required: true
                        }
                    }
                   
                });
            });
         </script>
         
         
        <form action="../ResultMaster" method="post"  enctype="multipart/form-data" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="ResultId" value="" />

            <div class="panel-heading">
                <strong><span class="panel-title">Result Details</span></strong>
            </div>

            <div class="panel-body">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" >Student ID*</label>
                            <select id="drpStudentId" name="drpStudentId" class="form-control">
                               
                                
                                <!--Fatch baki-->
                                
                                
                                
                            </select>  
                        </div>
                    </div>

                     <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" >Test ID*</label>
                            <select id="drpTestId" name="drpTestId" class="form-control">
                               
                                
                                <!--Fatch baki-->
                                
                                
                                
                            </select>  
                        </div>
                    </div>
                     <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Marks *</label>
                            <input type="text" name="txtMarks" value=""  id="txtMarks" class="form-control">
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
