<%-- 
    Document   : Settings
    Created on : Dec 28, 2014, 7:45:37 PM
    Author     : Nikil's Delly
--%>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Settings</title>
    </head>
    
    <body>
         <%@include file="Header.jsp" %>
        
                <%
                String fadd="";
                String femail="";
                String fcno="";
                String fqu="";
                String fexp="";
                String fstatus="";
                String sal="";
                
                
                 if(fid!=null)
                {
                     //fid=request.getParameter("reqid").toString();
                List<Object[]> rs1=null;
                rs1= conobj.FetchData("SELECT FacultyAddress,FacultyEmail,FacultyContactNo,FacultyQualification,FacultyExperience,FacultyPhoto,Salary FROM facultymaster where FacultyId='"+fid+"' ");
               
                
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    fadd=row[0].toString();
                    femail=row[1].toString();
                    fcno=row[2].toString();
                    fqu=row[3].toString();
                    fexp=row[4].toString();
                    fpic=row[5].toString();
                    sal=row[6].toString();
                }
               
               }
        
        
        
        %>
        
<form action="../FacultyProfileSettings" class="panel form-horizontal" id="jq-validation-form" method="post"  enctype="multipart/form-data">
            <input type="hidden" name="FacultyId" value="<%=fid%>" />
            <input type="hidden" name="FUId" value="<%=funame%>" />
            <div class="panel-heading">
                <strong>	<span class="panel-title"><h4><strong>Edit your profile</strong></h4></span></strong>
            </div>
            <div class="panel-body">

                 <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Name *</label>
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
                            <label for="jq-validation-email" class="control-label"><font color="blue"><Strong>Email Id *</Strong></font></label>
                            <input type="text" name="txtFacultyEmail" value="<%=femail%>" id="txtFacultyEmail" class="form-control">
                        </div>
                    </div>
                </div>

                        
                        
                <div class="row">
                    <!-- col-sm-6 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">Experience  *</label>
                            <input type="text" name="txtFacultyEx" value="<%=fexp%>" id="txtFacultyEx" class="form-control">
                        </div>
                    </div><!-- col-sm-6 -->
                    
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">Qualification *</label>
                            <input type="text" class="form-control" value="<%=fqu%>"
                                      id="txtFacultyQulification" name="txtFacultyQulification">
                        </div>
                    </div>
                                      
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label"><font color="blue"><Strong>Account password*</strong></font></label>
                            <input type="text" name="txtFacultyPassword"  id="txtFacultyPassword" class="form-control">
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
               
                      <input id="btnUpdate" name="btnProceed" type="submit" class="btn btn-md btn-labeled btn-success" value="Update" />
              
            </div>
        </form>                
                <%@include file="Footer.jsp" %>
    </body>
</html>
