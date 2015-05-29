<%-- 
    Document   : AJAXFetchSubjectChoiceDetail
    Created on : Feb 25, 2015, 4:47:05 PM
    Author     : LENOVO
--%>

<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>

<%
     
                GenFun genobj=new GenFun();
                String drpStd="";
                String builddrpsub="";
                
                 if(request.getParameter("reqid")!=null)
                {
                    drpStd=request.getParameter("reqid").toString();
                    builddrpsub= genobj.filldrp("SELECT StudentId,StudentName FROM studentmaster where Std='"+drpStd+"'","");
                                           
                }
        
                 else{
                     out.print("error");
                 }
        
        %>

<%
out.print(builddrpsub);
out.flush();
%>