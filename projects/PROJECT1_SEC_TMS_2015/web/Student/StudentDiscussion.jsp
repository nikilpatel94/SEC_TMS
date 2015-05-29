<%-- 
    Document   : StudentDiscussion
    Created on : Feb 16, 2015, 3:59:49 PM
    Author     : akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Discussion</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        
         
        <script>
            init.push(function() {
                $("#jq-validation-form").validate({
                    ignore: '.ignore, .select2-input',
                    focusInvalid: false,
                    rules: {
                        'txtDiscussionQuestion': {
                            required: true
                        }
                    }
                   
                });
            });
         </script>
         
         
        <form action="../StudentDiscussion" method="post"  enctype="multipart/form-data" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="StudentDiscussionId" value="" />

            <div class="panel-heading">
                <strong><span class="panel-title">Student Discussion</span></strong>
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
                            <label class="control-label" >Subject ID*</label>
                            <select id="drpSubjectId" name="drpSubjectId" class="form-control">
                               
                                
                                <!--Fatch baki-->
                                
                                
                                
                            </select>  
                        </div>
                    </div>
                        <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Date Of Birth *</label>
                           
			<!-- Javascript -->
				<script>
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
				</script>
				<!-- / Javascript -->
                                <div class="input-group date" id="bs-datepicker-component">
                                <input type="text" name="txtStudentDOB" value=""   placeholder="YYYY-MM-DD" id="txtStudentDOB" class="form-control"><span class="input-group-addon"><i class="fa fa-calendar"></i></span>
						</div>
                          
                        </div>
                    </div><!-- col-sm-4 -->
                </div>
            <div class="row">
                 <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Discussion Question *</label>
                            <textarea class="form-control"
                                      id="txtDiscussionQuestion"  name="txtDiscussionQuestion" cols="100" rows="3"></textarea>
                        </div>
                    </div><!-- col-sm-6 -->
                     <div class="col-sm-2">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" values="">Faculty Status</label>
                            <select id="drpFaStatus" name="drpFaStatus" class="form-control">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                        
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
