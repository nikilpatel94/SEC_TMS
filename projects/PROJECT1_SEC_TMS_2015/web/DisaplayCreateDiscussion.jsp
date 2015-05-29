<%-- 
    Document   : DisplayFaculty
    Created on : 9 Sep, 2014, 3:10:58 PM
    Author     : STS4
--%>
<%@page  import="java.util.List" %>
<%@page  import="com.tms.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Management</title>
    </head>
    <body>

        <%@include file="Header.jsp" %>



         <%
            GenFun genobj= new GenFun();
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
  <strong>Success!</strong> New Faculty Inserted Successfully!!!.
</div>
                <%
                }
            else if(request.getParameter("resid").toString().equals("2"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Faculty Updated Successfully!!!.
</div>
                <%

                }

            else if(request.getParameter("resid").toString().equals("3"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Faculty Deleted Successfully!!!.
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
        
String buildtable="";
if(request.getParameter("btnProceed")!=null)
    {
        if(request.getParameter("btnProceed").equals("Search"))
        {
        String drpsearch="";
        String searchvalue="";
        drpsearch=request.getParameter("drpSearchBy");
        searchvalue=request.getParameter("txtSearchValue");
        buildtable=genobj.filltbl("select a.StudentDiscussionId,b.StudentName,a.DiscussQuestion,a.DiscussionDate from studentdiscussion a,studentmaster b where a.StudentIdFK=b.StudentId AND "+drpsearch+" LIKE '%"+searchvalue+"%'", 5, "CreateDiscussion");
        }
    else if(request.getParameter("btnProceed").equals("View All"))
        {
         buildtable=genobj.filltbl("select a.StudentDiscussionId,b.StudentName,a.DiscussQuestion,a.DiscussionDate from studentdiscussion a,studentmaster b where a.StudentIdFK=b.StudentId", 5, "CreateDiscussion");
        }
    else
            {
         buildtable=genobj.filltbl("select a.StudentDiscussionId,b.StudentName,a.DiscussQuestion,a.DiscussionDate from studentdiscussion a,studentmaster b where a.StudentIdFK=b.StudentId", 5, "CreateDiscussion");
        }


    }
else
    {
     buildtable=genobj.filltbl("select a.StudentDiscussionId,b.StudentName,a.DiscussQuestion,a.DiscussionDate from studentdiscussion a,studentmaster b where a.StudentIdFK=b.StudentId", 5, "CreateDiscussion");
    }
        %>
        <form action="DisaplayCreateDiscussion.jsp" class="panel form-horizontal">

            <div class="panel-heading">
                <strong><span class="panel-title">Faculty Details</span></strong>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-12">
                        <a href="CreateDiscussion.jsp?reqid=0" > <strong>Add New Faculty</strong></a>

                    </div>
                </div>
                <hr class="no-grid-gutter-h grid-gutter-margin-b no-margin-t">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Search By:</label>
                            <select id="drpSearchBy" name="drpSearchBy" class="form-control">
                                <option value="StudentDiscussionId">Student Discussion Id</option>
                                <option value="StudentName">Student Name</option>
                            </select>
                        </div>
                    </div><!-- col-sm-6 -->
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Search Value:</label>
                            <input type="text" name="txtSearchValue" id="txtSearchValue" class="form-control">
                        </div>
                    </div><!-- col-sm-6 -->

                </div>
                <div class="row">
                    <div class="col-sm-12 text-center-sm">
                        <input id="btnSearch" name="btnProceed" type="submit" class="btn btn-sm btn-labeled btn-success" value="Search" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="btnViewAll" name="btnProceed" type="submit" 
                                                                                                                                                                         value="View All" />
                    </div><!-- col-sm-6 -->

                </div>




            </div>


            <div class="panel-footer text-center">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="text-center">Edit</th>
                            <th class="text-center">No</th>
                            <th class="text-center">Student Name</th>
                            <th class="text-center">Question</th>
                            <th class="text-center">Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                       // String buildtbl=genobj.filltbl("select FacultyId,FacultyName,FacultyContactNo,FacultyEmail,Salary from facultymaster",6 , "FacultyMaster");
                       out.print(buildtable);
                       out.flush();
                        %>
                    </tbody>
                </table>

            </div>
        </form>
        <%@include file="Footer.jsp" %>
    </body>
</html>
