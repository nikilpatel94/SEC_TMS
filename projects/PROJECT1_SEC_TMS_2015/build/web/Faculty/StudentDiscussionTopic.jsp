<%-- 
    Document   : ViewDiscussion
    Created on : Apr 2, 2015, 4:09:56 PM
    Author     : LENOVO
--%>
<%@page  import="java.util.List" %>
<%@page  import="com.tms.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
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
  <strong>Success!</strong> Answer Inserted Successfully!!!.
</div>
                <%
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
        <form action="StudentDiscussionTopic.jsp" class="panel form-horizontal">
            <%
        String sid="";
        String sname="";
        String suid="";
        if(fid!=null)
        {
          List<Object[]> rs2=null;
           rs2= conobj.FetchData("SELECT DISTINCT sm.`SubjectId`,sm.`SubjectName` FROM `facultysubjectdetail` fsd,`facultymaster` fm,`subjectmaster` sm WHERE sm.`SubjectId`=fsd.`SubjectIdFK` AND fsd.`FacultyIdFK`='"+fid+"'");
            for(Object rowObject:rs2)
                         {
                             Object[] row=(Object[]) rowObject;
                             if(row[0]!=null)
                                 suid=row[0].toString();
                             sname=row[1].toString();
                         }
        }
        %>
         <div class="panel-heading">
                <strong><span class="panel-title">View Discussion</span></strong>
            </div>
             <div class="panel-footer text-center">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="text-center">Edit</th>
                            <th class="text-center">No</th>
                            <th class="text-center">Student Name</th>
                             <th class="text-center">Stander</th>
                            <th class="text-center">Question</th>
                            <th class="text-center">Date</th>
                        </tr>
                    </thead>
                    <tbody>
                      <%
                        GenFun genobj= new GenFun();
                       String buildtbl=genobj.filltbl("select a.StudentDiscussionId,a.Std,b.StudentName,a.DiscussQuestion,a.DiscussionDate from studentdiscussion a,studentmaster b where a.StudentIdFK=b.StudentId AND a.FacultyStatus='Yes' ORDER BY a.`DiscussionDate` DESC", 6, "FacultyDiscussAnswer");
                       out.print(buildtbl);
                       out.flush();
                        %>
                    </tbody>
                </table>
<!--AND a.`SubjectIdFK`='"+suid+"'-->
            </div>
        <%@include file="Footer.jsp" %>
          </form>
    </body>
</html>
