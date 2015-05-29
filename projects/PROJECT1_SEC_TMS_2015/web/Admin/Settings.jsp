<%-- 
    Document   : Settings
    Created on : Dec 28, 2014, 7:45:37 PM
    Author     : Nikil's Delly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Settings</title>
    </head>
    <body>
<form action="../Settings" class="panel form-horizontal" id="jq-validation-form" method="post"  enctype="multipart/form-data">
            <input type="hidden" name="FacultyId" value="<%=fid%>" />
            <div class="panel-heading">
                <strong>	<span class="panel-title">Admin Detail</span></strong>
            </div>
            <div class="panel-body">

                 <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Admin Name *</label>
                            <input type="text" name="txtFacultyName" value="<%=fname%>" id="txtFacultyName" class="form-control">
                        </div>
                    </div><!-- col-sm-6 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-phone" class="control-label">Contact No. *</label>
                            <input type="text" name="txtFacultyContact" value="<%=fcno%>" id="txtFacultyContact" class="form-control">
                        </div>
                    </div><!-- col-sm-6 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-email" class="control-label">Email Id *</label>
                            <input type="text" name="txtFacultyEmail" value="<%=femail%>" id="txtFacultyEmail" class="form-control">
                        </div>
                    </div>
                </div>

                        
                        
                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">Salary *</label>
                            <input type="text" name="txtFacultySalary" value="<%=sal%>" id="txtFacultySalary" class="form-control">
                        </div>
                    </div>
                    <!-- col-sm-6 -->
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">Experience  *</label>
                            <input type="text" name="txtFacultyEx" value="<%=fexp%>" id="txtFacultyEx" class="form-control">
                        </div>
                    </div><!-- col-sm-6 -->
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Display Status</label>
                            <select id="drpStatus" name="drpStatus" value="<%=fstatus%>" class="form-control">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">Qualification *</label>
                            <input type="text" class="form-control" value="<%=fqu%>"
                                      id="txtFacultyQulification" name="txtFacultyQulification">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">Address *</label>
                            <textarea class="form-control"
                                      id="txtFacultyAddress" name="txtFacultyAddress" cols="20" rows="3"><%=fadd%></textarea>
                        </div>
                    </div><!-- col-sm-6 -->
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Photo</label>
                            <input id="flFacultyPhoto" name="flFacultyPhoto" value="<%=fpic%>" class="form-control" type="file" />
                        </div>
                    </div>
                        
                     <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Display Photo</label>
                            <img id="flFacultyPhoto" name="flFacultyPhotoDisplay" src="../FileUpload/FacultyPhotos/<%=fpic%>"  class="img-responsive" type="file" />
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
    </body>
</html>
