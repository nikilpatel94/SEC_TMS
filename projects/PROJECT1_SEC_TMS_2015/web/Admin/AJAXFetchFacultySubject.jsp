<%-- 
    Document   : AJAXFetchFacultySubject
    Created on : Feb 24, 2015, 5:37:25 PM
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
                    builddrpsub= genobj.filldrp("select SubjectId,SubjectName from subjectmaster where Std='"+drpStd+"'","");
                                           
                }
        
                 else{
                     out.print("error");
                 }
        
        %>

<%
out.print(builddrpsub);
out.flush();
%>