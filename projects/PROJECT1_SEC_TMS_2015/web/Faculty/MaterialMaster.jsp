<%-- 
    Document   : MaterialMaster
    Created on : Feb 16, 2015, 2:15:59 PM
    Author     : akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Materials </title>
    </head>
       <body>
        <%@include file="Header.jsp" %>
        
<%
            String mid="";
            String mname="";
            String subid="";
            String mtype="";
            String mdec="";
            String mdate="";
            String mstatus="";
            int mstd;
            String mcontent="";
            String str="";
            String btn= request.getParameter("btnProceed");
               if(request.getParameter("reqid")!=null)
                {
                List<Object[]> rs1=null;
                mid=request.getParameter("reqid").toString();
                rs1= conobj.FetchData("Select MaterialId,MaterialName,SubjectIdFK,MaterialType,MaterialDiscription,UploadedDate,DisplayStatus,Standard,Material from materialmanagement where MaterialId='"+mid+"';");
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                    mid=row[0].toString();
                    mname=row[1].toString();
                    subid= row[2].toString();
                    mtype=row[3].toString();
                    mdec=row[4].toString();
                    mdate=row[5].toString();
                    mstatus=row[6].toString();
                    mstd=Integer.parseInt(row[7].toString());
                    mcontent=row[8].toString();
                }
            }
            
%>       
        
        <script>
            init.push(function() {
                
                $("#jq-validation-form").validate({
                    ignore: '.ignore, .select2-input',
                    focusInvalid: false,
                    rules: {
                        'txtMaterialName': {
                            required: true
                        },
                        'flFile': {
                            required: true
                        },
                        'txtMaterialDescription': {
                            required: true
                        }
                        
                    }
                   
                });
            });
         </script>
        
        <form action="../MaterialMaster" method="post"  enctype="multipart/form-data" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="MaterialId" value="<%=mid%>" />
            <input type="hidden" name="FacultyIdFK" value="<%=fid%>" />
            <div class="panel-heading">
                <strong><span class="panel-title">Material's Detail</span></strong>
            </div>

            <div class="panel-body">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Material Name *</label>
                            <input type="text" name="txtMaterialName" value="<%=mname%>" id="txtMaterialName" class="form-control">
                        </div>
                    </div><!-- col-sm-4 -->

                     <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Select Standard</label>
                            <select  name="drpStd" id="drpStd" class="form-control" onchange="dirtxt30();" >
                                <option >Select Standard</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        </div>
                    </div><!-- col-sm-6 -->
                    
                    <script>
                        function dirtxt30()
                        {
                            xmlhttp = GetXmlHttpObject0();
                            
                            if (xmlhttp == null)
                            {
                                alert("Your browser does not support Ajax HTTP");
                                return;
                            }
                            //var emp = document.getElementById("emp_no").value;
                            var url = "";
                            var str1=document.getElementById("drpStd");
                            
                            var str=str1.options[str1.selectedIndex].value;
                            url = "AJAXFetchFacultySubs.jsp";
                            url = url + "?reqid="+str+"&reqid2="+<%=fid%>                            
                            document.getElementById("drpFacSubs").innerHTML = "Loading...";
                            
                            xmlhttp.onreadystatechange = dirOutput30;
                            xmlhttp.open("GET", url, true);
                            xmlhttp.send(null);
                        }

                        function dirOutput30()
                        {
                            if (xmlhttp.readyState == 4)
                            {
                                
                                 document.getElementById("drpFacSubs").innerHTML = xmlhttp.responseText;
                            }
                        }

                        function GetXmlHttpObject0()
                        {
                            if (window.XMLHttpRequest)
                            {
                                return new XMLHttpRequest();
                            }

                            if (window.ActiveXObject)
                            {
                                return new ActiveXObject("Microsoft.XMLHTTP");
                            }
                            return null;
                        }
                        </script>

                    
                    
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Select subject:</label>
                            <select id="drpFacSubs" name="drpFacSubs"  class="form-control" onchange="dirtxt3();">
                             </select>
                        </div>
                    </div><!-- col-sm-6 -->
                </div>
                            
                <div class="row">
                      <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">File</label>
                            <input id="flFile" name="flFile" value="" class="form-control" type="file" onchange="myfun();"/>
                            <script>
                                Function myfun()
                                {
                                    
                                    document.getElementById("flFile").value=<%=mcontent%>;
                                }
                            </script>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Material Description *</label>
                            <textarea class="form-control" id="txtMaterialDescription"  name="txtMaterialDescription" cols="50" rows="3" ><%=mdec%></textarea>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Material Type</label>
                            <input id="txtMaterialType"   name="txtMaterialType" class="form-control" value="<%=mtype%>" type="text" />
                        </div>
                    </div><!-- col-sm-4 -->
                    <div class="col-sm-4">
                    <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Date</label>
                           
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
                                    <input type="text" name="txtMaterialDate"    placeholder="YYYY-MM-DD" id="txtStudentDOB" class="form-control" value="<%=mdate%>"><span class="input-group-addon"><i class="fa fa-calendar"></i></span>
				</div>
                          
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" values="">Display Status</label>
                            <select id="drpStatus" name="drpStatus" class="form-control">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
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
