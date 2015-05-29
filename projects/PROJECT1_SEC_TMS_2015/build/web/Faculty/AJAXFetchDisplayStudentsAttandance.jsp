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
                    buildtable=genobj.filltbl("select c.StudentName,a.AttendanceDate,a.AttendanceDay from attendancemaster a,studentmaster c where  a.StudentIdFK=c.StudentId AND a.SubjectIdFK='"+subid+"'",4 , "");
                                           
                }
        
                 else{
                     out.print("error");
                 }
        
        %>

<%
                 out.print(buildtable);
                 out.flush();
%>