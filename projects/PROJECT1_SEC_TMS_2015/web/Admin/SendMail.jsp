<%-- 
    Document   : SendMail
    Created on : Jan 1, 2015, 9:32:24 PM
    Author     : Nikil's Delly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Mail from you pre-authenticated account</title>
          <script type="text/javascript">
                    function resetFun()
                    {
                        document.getElementById("txtMailSubject").value="Default";
                        document.getElementById("txtDestination").value="";
                        document.getElementById("txtMailContent").value="";
                    }
                </script>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%
        try
                {
            if(request.getParameter("resid")!=null && request.getParameter("str")!=null)
            {
                if(request.getParameter("str").toString().equals("Succees"))
                {
                if(request.getParameter("resid").toString().equals("1"))
                {
                    
                %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Email sent Successfully!!!.
</div>
                <% }}}}catch(Exception ex)
                {%>
            <div clss="alert  alert-danger alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
              <strong>Error!</strong> <% ex.printStackTrace();} %> 
            </div>

       <form action="../AutoMailLogin" class="panel form-horizontal" id="jq-validation-form" >
           <input type="hidden" name="RequestCheck" value="A" />
            <div class="panel-heading">
                <strong>	<span class="panel-title">Send Mail</span></strong>
            </div>
            <div class="panel-body">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">TO *</label>
                            <input type="text" name="txtDestination" placeholder="email-address" id="txtDestination" class="form-control">
                        </div>
                    </div><!-- col-sm-6 -->
                </div>    
                
                <div class="row">
                    <div class="col-sm-8">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-phone" class="control-label">Subject</label>
                            <input type="text" name="txtMailSubject" value="default" id="txtMailSubject" class="form-control">
                        </div>
                    </div><!-- col-sm-6 -->
                </div>
                
               <div class="row">
                     <div class="col-sm-9">
                        <div class="form-group no-margin-hr">
                            <label  for="jq-validation-text" class="control-label">Content</label>
                            <textarea class="form-control"
                                      id="txtMailContent" name="txtMailContent" cols="20" rows="3"></textarea>
                        </div>
                        <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Attachment</label>
                            <input id="mailAttach" name="mailAttach" value="" class="form-control" type="file" />
                        </div>
                    </div>
                    </div><!-- col-sm-6 -->
                </div>
                
                <div class="row">
                    <div class="col-sm-12 text-center-sm">
                        <input id="btnSend" name="btnProceed" type="submit" class="btn btn-sm btn-labeled btn-success" value="Send" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="btnReset" name="btnProceed" type="button" onClick="javascript:resetFun()"
                                                                                                                                                                         value="Reset All" />
                    </div><!-- col-sm-6 -->

                </div>
                </div>
</form>
                        
<%@include file="Footer.jsp" %>
    </body>
</html>
