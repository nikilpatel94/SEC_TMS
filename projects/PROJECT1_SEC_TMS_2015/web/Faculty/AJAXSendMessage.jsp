<%-- 
    Document   : AJAXSendMessage
    Created on : May 24, 2015, 2:56:56 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.tms.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>send messages</title>
    </head>
    <body>
        <%
            System.out.println("Inside AJAx!");
            TRYSMS obj1=new TRYSMS();
            try{
            if(request.getParameter("reqid")!=null &&request.getParameter("reqid2")!=null)
                {
                   String contect=request.getParameter("reqid").toString();
                   String sms=request.getParameter("reqid2");
                   System.out.println("r1:"+contect+"r2:"+sms);
                   if(request.getParameter("reqid")!=null &&request.getParameter("reqid2")!=null)
                {
                   obj1.SMSSender("akash","9998596785","91"+contect,sms,"WEBSMS","0");
                }
               else{
                       
                   System.out.print("Error");
            }
                }
            }catch(Exception e)
            {
                System.out.println("Error "+e);
            }
        %>
    </body>
</html>
