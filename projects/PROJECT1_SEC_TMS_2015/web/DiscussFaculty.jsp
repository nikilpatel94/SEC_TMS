<%-- 
    Document   : DiscussFaculty
    Created on : Feb 16, 2015, 4:29:43 PM
    Author     : akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
        <%@include file="Header.jsp" %>
     
        <form action="../DiscussFaculty" method="post"  enctype="multipart/form-data" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="FacultyDiscussionId" value="" />

            <div class="panel-heading">
                <strong><span class="panel-title">Discuss faculty</span></strong>
            </div>

            <div class="panel-body">

                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" >Student Discussion ID*</label>
                            <select id="drpStudentDiscussionId" name="drpStudentDiscussionId" class="form-control">
                               
                                
                                <!--Fatch baki-->
                                
                                
                                
                            </select>  
                        </div>
                    </div>

                     <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" >Faculty ID*</label>
                            <select id="drpFacultyId" name="drpFacultyId" class="form-control">
                               
                                
                                <!--Fatch baki-->
                                
                                
                                
                            </select>  
                        </div>
                    </div>
                        
                </div>
            <div class="row">
                 <div class="col-sm-9">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Answer *</label>
                            <textarea class="form-control"
                                      id="txtAnswer"  name="txtAnswer" cols="100" rows="3"></textarea>
                        </div>
                    </div><!-- col-sm-6 -->
                     
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Date *</label>
                           
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
