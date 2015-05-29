<%-- 
    Document   : StudentMaster
    Created on : 9 Sep, 2014, 5:23:53 PM
    Author     : STS4
--%>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Management</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        
       
        <%
                DBCon conobj =new DBCon();
                String stid="";
                String stname="";
                String stadd="";
                String stemail="";
                String stcno="";
                String stdob="";
                String stpname="";
                String stpcon="";
                String stpemail="";
                String stschool="";
                String stpic="";
                String ststatus="";
                String ststd="";
                
                if(request.getParameter("reqid")!=null)
                {
                List<Object[]> rs1=null;
                stid=request.getParameter("reqid").toString();
                rs1= conobj.FetchData("SELECT * FROM `db_sec_tms`.`studentmaster` where StudentId='"+stid+"' ");
           
             
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                    stid=row[0].toString();
                    
                    stname=row[1].toString();
                    stadd=row[2].toString();
                    stemail=row[3].toString();
                    stcno=row[4].toString();
                    stdob=row[5].toString();
                    stpname=row[6].toString();
                    stpcon=row[7].toString();
                    stpemail=row[8].toString();
                    stschool=row[9].toString();
                    stpic=row[10].toString();
                    ststatus=row[11].toString();
                    ststd=row[12].toString();
                }
               
               }
        
        
        
        %>
        
        <script>
            init.push(function() {
                $("#txtStudentContactNo").mask("9999999999");
                $("#txtStudentParentContactNo").mask("9999999999");
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
                        'txtStudentName': {
                            required: true
                        },
                        'txtStudentDOB': {
                            required: true
                        },
                        'txtStudentContactNo': {
                            required: true
                        },
                        'txtStudentParentContactNo': {
                            required: true
                        },
                        'txtStudentParentName': {
                            required: true
                            
                        },
                        'txtStudentEmail': {
                            required: true,
                            email: true
                        },
                        'txtStudentParentEmail': {
                            required: true,
                            email: true
                        },
                        'txtStudentSchool': {
                            required: true,
                            
                        },
                        'txtStudentAddress': {
                            required: true
                        }
                    }
                   
                });
            });
         </script>
        
        <form action="../StudentMaster" method="post"  enctype="multipart/form-data" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="StudentId" value="<%=stid%>" />

            <div class="panel-heading">
                <strong><span class="panel-title">Student Details</span></strong>
            </div>

            <div class="panel-body">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Name *</label>
                            <input type="text" name="txtStudentName" value="<%=stname%>" id="txtStudentName" class="form-control">
                        </div>
                    </div><!-- col-sm-4 -->

                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-phone" class="control-label">Contact No. *</label>
                            <input type="text" name="txtStudentContactNo" value="<%=stcno%>"  id="txtStudentContactNo" class="form-control">
                        </div>
                    </div><!-- col-sm-4 -->

                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-email" class="control-label">Email Id *</label>
                            <input type="text" name="txtStudentEmail" value="<%=stemail%>"  id="txtStudentEmail" class="form-control">
                        </div>
                    </div>
                </div>

                <div class="row">
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

						$('#bs-datepicker-component').datepicker();

						var options2 = {
							orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
						}
						$('#bs-datepicker-range').datepicker(options2);

						$('#bs-datepicker-inline').datepicker();
					});
				</script>
                                <!-- / Javascript -->
	<div class="input-group date" id="bs-datepicker-component">
            <input type="text" name="txtStudentDOB" value="<%=stdob%>" placeholder="YYYY-MM-DD" id="txtStudentDOB" class="form-control"><span class="input-group-addon"><i class="fa fa-calendar"></i></span>
						</div>
                          
                        </div>
                    </div><!-- col-sm-4 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">School *</label>
                            <input type="text" name="txtStudentSchool" value="<%=stschool%>"  id="txtStudentSchool" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" >Standard *</label>
                            <select id="drpStatus" name="drpStd" class="form-control">
                                 <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                         <%
//    try{
//    GenFun obj=new GenFun();
//    String q="SELECT Distinct SubjectId,std from subjectmaster;";
//    String builddrp=obj.filldrp(q, "");
//    out.print(builddrp);
//    out.flush();
//    }catch(Exception ex)
//    {
//        out.print(ex.toString());
//    }

%>                                           

       
                            </select>
                        
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Parent's Name *</label>
                            <input id="txtStudentParentName" value="<%=stpname%>"  name="txtStudentParentName" class="form-control" type="text" />
                        </div>
                    </div><!-- col-sm-4 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-phone" class="control-label">Parent's Contact No *</label>
                            <input type="text" name="txtStudentParentContactNo" value="<%=stpcon%>"  id="txtStudentParentContactNo" class="form-control">
                        </div>
                    </div><!-- col-sm-4 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-email" class="control-label">Parent's Email *</label>
                            <input type="text" name="txtStudentParentEmail" value="<%=stpemail%>"  id="txtStudentParentEmail" class="form-control">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Address *</label>
                            <textarea class="form-control"
                                      id="txtStudentAddress"  name="txtStudentAddress" cols="20" rows="3"><%=stadd%></textarea>
                        </div>
                    </div><!-- col-sm-6 -->
                 <div class="col-sm-2">
                    <div class="form-group no-margin-hr">
                   <label class="control-label">Subscription *</label>
                    <div class="radio">
                            <label class="">Full
                             <input type="radio" name="radStudentType" id="radStudentType" value="Full" checked>
                             </label>
                             <input type="radio" name="radStudentType" id="radStudentType" value="Partial" >
                             <label class="">Partial</label>

                       </div>
                       </div>
                     </div>
                    <div class="col-sm-2">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" values="<%=ststatus%>">Display Status</label>
                            <select id="drpStatus" name="drpStatus" class="form-control">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                        
                        </div>
                    </div>
                            
                     <div class="col-sm-3">
                         <div class="form-group no-margin-hr">
                            <label class="control-label">Photo</label>
                            <input type="file" name="flStudentPhoto"   id="flStudentPhoto" class="form-control">
                        </div>
                        
                    </div>       
                    <div class="col-sm-2">
                         <div class="form-group no-margin-hr">
                            <label class="control-label">Display Photo</label>
<!--                            <input type="hidden" id="txtPhoto" name="txtPhoto" value="<%=stpic%>"/>
                            <img id="flFacultyPhoto" name="flFacultyPhotoDisplay" src="../FileUpload/FacultyPhotos/"  class="img-responsive" type="file" />-->
                            <img  name="flStudentPhotodisplay" src="../FileUpload/StudentPhotos/<%=stpic%>"  id="flStudentPhoto" class="img-responsive">
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
                    
<!--            <div class="row">
                   <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Assigned UserName *</label>
                            <input type="text" name="txtStudentUserName"  id="txtStudentUserName" class="form-control">
                        </div>
                    </div>
                        
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Password *</label>
                            <input type="password" name="txtStudentPassword"  id="txtStudentPassword" class="form-control">
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
