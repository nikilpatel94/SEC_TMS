 <%-- 
    Document   : FacultyMaster
    Created on : 9 Sep, 2014, 3:23:18 PM
    Author     : STS4
--%>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Management</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        
        <%
                DBCon conobj =new DBCon();
                String fid="";
                String fname="";
                String fadd="";
                String femail="";
                String fcno="";
                String fqu="";
                String fexp="";
                String fpic="";
                String fstatus="";
                String sal="";
                
                
                 if(request.getParameter("reqid")!=null)
                {
                     fid=request.getParameter("reqid").toString();
                List<Object[]> rs1=null;
                rs1= conobj.FetchData("SELECT * FROM facultymaster where FacultyId='"+fid+"'  ");
               
                
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                        fid=row[0].toString();
                    fname=row[1].toString();
                    fadd=row[2].toString();
                    femail=row[3].toString();
                    fcno=row[4].toString();
                    fqu=row[5].toString();
                    fexp=row[6].toString();
                    fpic=row[7].toString();
                    fstatus=row[8].toString();
                    sal=row[9].toString();
                }
               
               }
        
        
        
        %>
        
        <script>
            init.push(function() {
                $("#txtFacultyContact").mask("9999999999");
                $('#jq-validation-select2').select2({allowClear: true, placeholder: 'Select a country...'}).change(function() 
                {
                    $(this).valid();
                });
                // Add phone validator
                $.validator.addMethod(
                        "phone_format",
                        function(value, element) {
                            var check = false;
                            return this.optional(element) || /^\d{3}\d{3}\d{4}$/.test(value);
                        },
                        "Invalid phone number."
                        );

                // Setup validation
                $("#jq-validation-form").validate({
                    ignore: '.ignore, .select2-input',
                    focusInvalid: false,
                    rules: {
                        'txtFacultyName': {
                            required: true
                        },
                        'txtFacultyAddress': {
                            required: true
                        },
                        'txtFacultySalary': {
                            required: true
                        },
                        'txtFacultyEmail': {
                            required: true,
                            email: true
                        },
                        'txtFacultyContact': {
                            required: true,
                            phone_format: true
                        },
                        'txtFacultyQulification': {
                            required: true
                        },
                        'txtFacultyEx': {
                            required: true
                        }
                    }
                   
                });
            });
         </script>
        
        <form action="../FacultyMaster" class="panel form-horizontal" id="jq-validation-form" method="post"  enctype="multipart/form-data">
            <input type="hidden" name="FacultyId" value="<%=fid%>" />
            <div class="panel-heading">
                <strong>	<span class="panel-title">Faculty Details</span></strong>
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
                        <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">Address *</label>
                            <textarea class="form-control"
                                      id="txtFacultyAddress" name="txtFacultyAddress" cols="20" rows="3"><%=fadd%></textarea>
                        </div>
                    </div><!-- col-sm-6 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Photo</label>
                            <input id="flFacultyPhoto" name="flFacultyPhoto" value="<%=fpic%>" class="form-control" type="file" />
                        </div>
                    </div>
                        
                     <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Display Photo</label>
                            <img id="flFacultyPhoto" name="flFacultyPhotoDisplay" src="../FileUpload/FacultyPhotos/<%=fpic%>"  class="img-responsive" type="file" />
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
                    
<!--            <div class="row">
                   <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Assigned UserName *</label>
                            <input type="text" name="txtFacultyUserName"  id="txtFacultyUserName" class="form-control">
                        </div>
                    </div>
                        
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Password *</label>
                            <input type="password" name="txtFacultyPassword"  id="txtFacultyPassword" class="form-control">
                        </div>
                    </div>    
               </div>                   -->
                        
                        
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
