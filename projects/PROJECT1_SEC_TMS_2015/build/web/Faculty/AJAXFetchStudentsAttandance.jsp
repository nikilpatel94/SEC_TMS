<%-- 
    Document   : AJAXFetchStudentsAttandance
    Created on : Feb 10, 2015, 1:03:34 PM
    Author     : Administrator
--%>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>

                        <%
     
                GenFun genobj=new GenFun();
                String subid="";
                String buildtable="";

                                
                 if(request.getParameter("reqid")!=null)
                {
                    subid=request.getParameter("reqid").toString();
                    buildtable=genobj.filltbl("select stm.StudentId, stm.StudentName from studentmaster stm, subjectchoicedetails sbc where sbc.SubjectIdFK='"+subid+"' and sbc.StudentIdFK=stm.StudentId", 3, "check");
                                           
                }
        
                 else{
                     out.print("error");
                 }
        
        %>

<%
                 out.print(buildtable);
                 out.flush();
%>