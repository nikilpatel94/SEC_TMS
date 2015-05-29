<%-- 
    Document   : RegiterStudentRequest
    Created on : Dec 8, 2014, 6:18:14 AM
    Author     : Nikil
--%>

<%@page import="com.tms.GenFun"%>
<%@page import="java.util.List"%>
<%@page import="com.tms.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Student Request</title>
    </head>
    <body>
                 <%@include file="Header.jsp" %>
        
        <%
                DBCon conobj =new DBCon();
                String tsid="";
                String tsname="";
                String tsadd="";
                String tsemail="";
                String tscno="";
                String tdob="";
                String tsparent="";
                String tsparentcno="";
                String tsparentemail="";
                String tsschool="";
                String tsphoto="";
                String tsststus="";
                String tstype="";
                String tsstd="";
                
                 if(request.getParameter("reqid")!=null)
                {
                     tsid=request.getParameter("reqid").toString();
                List<Object[]> rs1=null;
                rs1= conobj.FetchData("SELECT * FROM studentmaster_temp where StudentId='"+tsid+"'  ");
               
                
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                    tsid=row[0].toString();
                    tsname=row[1].toString();
                    tsadd=row[2].toString();
                    tsemail=row[3].toString();
                    tscno=row[4].toString();
                    tdob=row[5].toString();
                    tsparent=row[6].toString();
                    tsparentcno=row[7].toString();
                    tsparentemail=row[8].toString();
                    tsschool=row[9].toString();
                    tsphoto=row[10].toString();
                    tsststus=row[11].toString();
                    tstype=row[12].toString();
                    tsstd=row[13].toString();
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
        
        <form action="../SaveStudent" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="StudentId" value="<%=tsid%>" />

            <div class="panel-heading">
                <strong><span class="panel-title">Student Details</span></strong>
            </div>

            <div class="panel-body">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Name</label>
                            <input type="text" name="txtStudentName" value="<%=tsname%>" id="txtStudentName" class="form-control">
                        </div>
                    </div><!-- col-sm-4 -->

                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-phone" class="control-label">Contact No.</label>
                            <input type="text" name="txtStudentContactNo" value="<%=tscno%>"  id="txtStudentContactNo" class="form-control">
                        </div>
                    </div><!-- col-sm-4 -->

                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-email" class="control-label">Email Id</label>
                            <input type="text" name="txtStudentEmail" value="<%=tsemail%>"  id="txtStudentEmail" class="form-control">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Date Of Birth</label>
                            <input type="text" name="txtStudentDOB" value="<%=tdob%>"  id="txtStudentDOB" class="form-control" placeholder="YYYY-MM-DD">                    
                        </div>
                    </div><!-- col-sm-4 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">School</label>
                            <input type="text" name="txtStudentSchool" value="<%=tsschool%>"  id="txtStudentSchool" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Photo</label>
                            <input type="file" name="flStudentPhoto" value="<%=tsphoto%>"  id="flStudentPhoto" class="form-control">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Parent's Name</label>
                            <input id="txtStudentParentName" value="<%=tsparent%>"  name="txtStudentParentName" class="form-control" type="text" />
                        </div>
                    </div><!-- col-sm-4 -->
                    
                    
                    
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-phone" class="control-label">Parent's Contact No</label>
                            <input type="text" name="txtStudentParentContactNo" value="<%=tsparentcno%>"  id="txtStudentParentContactNo" class="form-control">
                        </div>
                    </div><!-- col-sm-4 -->
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-email" class="control-label">Parent's Email</label>
                            <input type="text" name="txtStudentParentEmail" value="<%=tsparentemail%>"  id="txtStudentParentEmail" class="form-control">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Address</label>
                            <textarea class="form-control"
                                      id="txtStudentAddress"  name="txtStudentAddress" cols="20" rows="3"><%=tsschool%></textarea>
                        </div>
                    </div><!-- col-sm-6 -->
                 <div class="col-sm-3">
                    <div class="form-group no-margin-hr">
                   <label class="control-label">Subscription</label>
                    <div class="radio">
                            <label class="">Full
                             <input type="radio" name="radStudentType" id="radStudentType" value="Full" checked>
                             </label>
                             <input type="radio" name="radStudentType" id="radStudentType" value="Partial" >
                             <label class="">Partial</label>

                       </div>
                       </div>
                     </div>
                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" values="<%=tsststus%>">Display Status</label>
                            <select id="drpStatus" name="drpStatus" class="form-control">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                        
                        </div>
                    </div>
                            
                     <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" values="<%=tsstd%>">Standard</label>
                            <select id="drpStatus" name="drpStatus" class="form-control">
                         <%
    try{
    GenFun obj=new GenFun();
    String q="SELECT SubjectId,std from subjectmaster;";
    String builddrp=obj.filldrp(q, "");
    out.print(builddrp);
    out.flush();
    }catch(Exception ex)
    {
        out.print(ex.toString());
    }

%>                                           

       
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
