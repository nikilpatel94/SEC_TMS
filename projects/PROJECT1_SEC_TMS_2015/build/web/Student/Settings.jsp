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
               // String sname="";
                String sadd="";
                String semail="";
                String scontect="";
                String dob="";
                String spname="";
                String spcontect="";
              //  String spemail="";
                String school="";
                String spic="";
                
                
                 if(sid!=null)
                {
                     //fid=request.getParameter("reqid").toString();
                List<Object[]> rs1=null;
                rs1= conobj.FetchData("SELECT StudentAddress,StudentEmail,StudentContactNo,StudentDOB,StudentParentName,StudentParentContactNo,StudentSchool,StudentPhoto FROM studentmaster where StudentId='"+sid+"' ");
               
                
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    sadd=row[0].toString();
                    semail=row[1].toString();
                    scontect=row[2].toString();
                    dob=row[3].toString();
                    spname=row[4].toString();
                    spcontect=row[5].toString();
                    school=row[6].toString();
                    spic=row[7].toString();
                }
               
               }
        
        
        
        %>
        
<form action="../SettingStudent" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="StudentId" value="<%=sid%>" />
            <!--<input type="hidden" name="FUId" value="" />-->
            <div class="panel-heading">
                <strong>	<span class="panel-title"><h4><strong>Edit your profile</strong></h4></span></strong>
            </div>
            <div class="panel-body">

                 <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Name </label>
                            <input type="text" name="txtStudentName" value="<%=sname%>" id="txtStudentName" class="form-control" readonly>
                        </div>
                    </div><!-- col-sm-6 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-phone" class="control-label">Contact No. </label>
                            <input type="text" name="txtStudentContact" value="<%=scontect%>" id="txtStudentContact" class="form-control" readonly>
                        </div>
                    </div><!-- col-sm-6 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-email" class="control-label"><font color="blue"><Strong>Email Id</Strong></font></label>
                            <input type="text" name="txtStudentEmail" value="<%=semail%>" id="txtStudentEmail" class="form-control">
                        </div>
                    </div>
                </div>

                        
                        
                <div class="row">
                    <!-- col-sm-6 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">Date of Birth</label>
                            <input type="text" name="txtStudentDOB" value="<%=dob%>" id="txtStudentDOB" class="form-control">
                        </div>
                    </div><!-- col-sm-6 -->
                    
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">Parent Name</label>
                            <input type="text" class="form-control" value="<%=spname%>"
                                      id="txtStudentParentName" name="txtStudentParentName" readonly>
                        </div>
                    </div>
                                      
                     <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">Parent Contact</label>
                            <input type="text" class="form-control" value="<%=spcontect%>"
                                      id="txtStudentParentContactNo" name="txtStudentParentContactNo" readonly>
                        </div>
                    </div>
                </div>
                <div class="row">
                   <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">School</label>
                            <input type="text" class="form-control" value="<%=school%>"
                                      id="txtStudentSchool" name="txtStudentSchool">
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Photo</label>
                            <input id="flStudentPhoto" name="flStudentPhoto" value="<%=spic%>" class="form-control" type="file" />
                        </div>
                    </div>
                        
                     <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Display Photo</label>
                            <img id="flFacultyPhoto" name="flStudentPhotoDisplay" src="../FileUpload/StudentPhotos/<%=spic%>"  class="img-responsive" type="file" />
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
