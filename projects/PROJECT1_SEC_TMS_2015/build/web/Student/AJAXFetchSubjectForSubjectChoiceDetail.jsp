<%-- 
    Document   : AJAXFetchSubjectForSubjectChoiceDetail
    Created on : Mar 5, 2015, 2:18:12 PM
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