<%-- 
    Document   : SMSService
    Created on : May 13, 2015, 4:19:17 PM
    Author     : LENOVO
--%>
<%@page import="com.tms.TRYSMS"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="com.tms.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SMS Service</title>
    </head>
    <body>
          <form action="SMSService.jsp" class="panel form-horizontal">
              <%
        try
                {
            if(request.getParameter("resid")!=null && request.getParameter("str")!=null)
            {
                if(request.getParameter("str").toString().equals("Success"))
                {
            if(request.getParameter("resid").toString().equals("1"))
                {
                    
                %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Message SEND Successfully!!!.
</div>
                <%
                }
            else if(request.getParameter("resid").toString().equals("2"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Material Updated Successfully!!!.
</div>
                <%

                }

            else if(request.getParameter("resid").toString().equals("3"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Material Deleted Successfully!!!.
</div>
                <%

                }
            else
                {

                }
                }
                else
                {%>
             <div class="alert  alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Error!</strong><%=request.getParameter("str").toString()%>
    </div>              
                <%}
            }
}
        catch(Exception ex)
                {%>
            <div class="alert  alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Error!</strong> <% ex.printStackTrace(); %> !!!.
</div>


                <%}
%>        
            <div class="panel-heading">
                <strong><span class="panel-title">Test Page</span></strong>
            </div>
              
        <%
        TRYSMS obj1=new TRYSMS();
        obj1.SMSSender("mehul","mehul12345","919016813135","Hello mehul","WEBSMS","0");
        %>
          </form>
    </body>
</html>
