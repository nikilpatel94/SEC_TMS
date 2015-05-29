<%-- 
    Document   : CreateDisaussion
    Created on : Apr 2, 2015, 2:17:02 PM
    Author     : LENOVO
--%>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Discussion</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <form action="../CreateDiscussion" enctype="multipart/form-data" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="StudentDiscussionId" value="" />
             <input type="hidden" name="StudentIdFK" value="<%=sid%>" />
             
            <div class="panel-heading">
                <strong><span class="panel-title">Create Discussion</span></strong>
            </div>

            <div class="panel-body">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Standard</label>
                            <select id="drpStd" name="drpStd" value="" class="form-control" onchange="dirtxt30();">
                                <option value="">Select Standard</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        </div>
                   </div>
                                      <script>
                        function dirtxt30()
                        {
                            xmlhttp = GetXmlHttpObject0();
                            
                            if (xmlhttp == null)
                            {
                                alert("Your browser does not support Ajax HTTP");
                                return;
                            }
                           
                            var url3 = "";
                            var str1=document.getElementById("drpStd");
                           
                            var str=str1.options[str1.selectedIndex].value;
                            url3 = "AJAXFetchSubjectForSubjectChoiceDetail.jsp";
                            url3 = url3 + "?reqid="+str;                         
                            document.getElementById("drpSubjectId").innerHTML = "Loading...";

                            xmlhttp.onreadystatechange = dirOutput30;
                            xmlhttp.open("GET", url3, true);
                            xmlhttp.send(null);
                            
                        }

                        function dirOutput30()
                        {
                            if (xmlhttp.readyState == 4)
                            {
                                 document.getElementById("drpSubjectId").innerHTML = xmlhttp.responseText;
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
                            <label class="control-label" value="">Subject Name</label>
                            <select id="drpSubjectId" name="drpSubjectId" value="" class="form-control">
                            
                            </select>
                        </div>
                    </div>
                 
                        <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Discussion Date *</label>
                           
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
                                <input type="text" name="txtStudentDate" value=""   placeholder="YYYY-MM-DD" id="txtStudentDate" class="form-control"><span class="input-group-addon"><i class="fa fa-calendar"></i></span>
						</div>
                          
                        </div>
                    </div><!-- col-sm-4 -->
                </div>
            <div class="row">
                 <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" values="">Discussion Topic</label>
                             <input type="text" name="txtDiscussionTopic" id="txtDiscussionTopic" class="form-control">
                        </div>
                    </div>
                  <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" values="">Include Faculty?</label>
                            <select id="drpFaStatus" name="drpFaStatus" value="" class="form-control">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                        
                        </div>
                    </div>
                 <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Discussion Question *</label>
                            <textarea class="form-control"
                                      id="txtDiscussionQuestion"  name="txtDiscussionQuestion" cols="100" rows="3"></textarea>
                        </div>
                    </div><!-- col-sm-6 -->
                   
<!--                     <div class="col-sm-2">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" values="">Display Status</label>
                            <select id="drpStatus" name="drpStatus" class="form-control">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                        
                        </div>-->
                    <!--</div>-->
            </div>
            <div class="panel-footer text-center">
                  <%
                try
                        {
                if(request.getParameter("reqid")!=null)
                    {
                      if(request.getParameter("reqid").toString().equals("0"))
                          {%>
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
