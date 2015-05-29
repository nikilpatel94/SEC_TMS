<%-- 
    Document   : DisplayTestMaster
    Created on : Feb 17, 2015, 11:42:40 AM
    Author     : akash
--%>
<%@page  import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="com.tms.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test</title>
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
  <strong>Success!</strong> Test Name Inserted Successfully!!!.
  <H5>Navigate to <strong>Create Paper </strong>for set questions and answer for this paper.!</h5>
</div>
                <%
                }
            else if(request.getParameter("resid").toString().equals("2"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Test Name Updated Successfully!!!.
</div>
                <%

                }

            else if(request.getParameter("resid").toString().equals("3"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Test Name Deleted Successfully!!!.
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
        buildtable=genobj.filltbl("select TestId,Std,SubjectName,TestName,TotalMarks,PassingMarks from testmaster t, subjectmaster s where t.SubjectIdFK=s.SubjectId and "+drpsearch+" LIKE '%"+searchvalue+"%' and fsub.SubjectIdFK=t.SubjectIdFK and fsub.FacultyIdFK='"+fid+"'", 7, "TestMaster");
        }
    else if(request.getParameter("btnProceed").equals("View All"))
        {
         buildtable=genobj.filltbl("select TestId,Std,SubjectName,TestName,TotalMarks,PassingMarks from testmaster t, subjectmaster s where t.SubjectIdFK=s.SubjectId and fsub.SubjectIdFK=t.SubjectIdFK and fsub.FacultyIdFK='"+fid+"';",7, "TestMaster");
        }
    else
        {
         buildtable=genobj.filltbl("select TestId,Std,SubjectName,TestName,TotalMarks,PassingMarks from testmaster t, subjectmaster s where t.SubjectIdFK=s.SubjectId and fsub.SubjectIdFK=t.SubjectIdFK and fsub.FacultyIdFK='"+fid+"';",7 , "TestMaster");
        }


    }
else
    {
//     buildtable=genobj.filltbl("select TestId,Std,SubjectName,TestName,TotalMarks,PassingMarks, count(tq.TestIdFK) from testmaster t, subjectmaster s,testquestionmaster tq where t.SubjectIdFK = s.SubjectId group by tq.testidfk ;",8 , "TestMaster");
     buildtable=genobj.filltbl("select TestId,s.Std,SubjectName,TestName,TotalMarks,PassingMarks from testmaster t, subjectmaster s, facultysubjectdetail fsub where t.SubjectIdFK=s.SubjectId and fsub.SubjectIdFK=t.SubjectIdFK and fsub.FacultyIdFK='"+fid+"';",7 , "TestMaster");
    }


        %>

        
        
        
        
        <form action="DisplayTest.jsp" class="panel form-horizontal">

            <div class="panel-heading">
                <Strong><span class="panel-title">Test Page</span></strong>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-12">
                        <strong><a href="TestMaster.jsp?reqid=0" > Generate Test</a></strong>
                    </div>
                </div>
                <hr class="no-grid-gutter-h grid-gutter-margin-b no-margin-t">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Search By:</label>
                            <select id="drpSearchBy" name="drpSearchBy" class="form-control">
                                <option value="TestId">Test Id</option>
                                <option value="TestName">Test Name  </option>
                                <option value="TotalMarks">Total Marks</option>
                                <!--<option value="StudentIdFK">Student ID</option>-->
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
                            <th class="text-center">Test Id</th>
                            <th class="text-center">Standard</th>
                            <th class="text-center">Subject Name</th>
                            <th class="text-center">Test Name</th>
                            <th class="text-center">Total Marks</th>
                            <th class="text-center">Passing Marks</th>
                        </tr>
                    </thead>
                    <tbody>
                      <%
                       // String buildtbl=genobj.filltbl("select StudentId,StudentName,StudentContactNo,StudentEmail,StudentParentName,StudentParentContactNo from studentmaster",7 , "StudentMaster");
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
