<%-- 
    Document   : DisplaFacultySubject
    Created on : 9 Sep, 2014, 4:10:53 PM
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
  <strong>Success!</strong> Faculty-Subject Inserted Successfully!!!.
</div>
                <%
                }
            else if(request.getParameter("resid").toString().equals("2"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Faculty-Subject Updated Successfully!!!.
</div>
                <%

                }

            else if(request.getParameter("resid").toString().equals("3"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Faculty-Subject Deleted Successfully!!!.
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
        buildtable=genobj.filltbl("select fsd.FacultySubjectId,fm.FacultyName,sbm.Std,sbm.SubjectName from facultysubjectdetail fsd,facultymaster fm,subjectmaster sbm where fsd.FacultyIdFK=fm.FacultyId and fsd.SubjectIdFK=sbm.SubjectId and "+drpsearch+" LIKE '%"+searchvalue+"%'", 5, "FacultySubjectDetail");
        }
    else if(request.getParameter("btnProceed").equals("View All"))
        {
         buildtable=genobj.filltbl("select fsd.FacultySubjectId,fm.FacultyName,sbm.Std,sbm.SubjectName from facultysubjectdetail fsd,facultymaster fm,subjectmaster sbm where fsd.FacultyIdFK=fm.FacultyId and fsd.SubjectIdFK=sbm.SubjectId",5 , "FacultySubjectDetail");
        }
    else
            {
         buildtable=genobj.filltbl("select fsd.FacultySubjectId,fm.FacultyName,sbm.Std,sbm.SubjectName from facultysubjectdetail fsd,facultymaster fm,subjectmaster sbm where fsd.FacultyIdFK=fm.FacultyId and fsd.SubjectIdFK=sbm.SubjectId",5 , "FacultySubjectDetail");
        }


    }
else
    {
     buildtable=genobj.filltbl("select fsd.FacultySubjectId,fm.FacultyName,sbm.Std,sbm.SubjectName from facultysubjectdetail fsd,facultymaster fm,subjectmaster sbm where fsd.FacultyIdFK=fm.FacultyId and fsd.SubjectIdFK=sbm.SubjectId",5 , "FacultySubjectDetail");
    }

        %>
      
        <form action="DisplaFacultySubject.jsp" class="panel form-horizontal">

            <div class="panel-heading">
                <strong><span class="panel-title">Subject Details</span></strong>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-12">
                        <a href="FacultySubjectDetail.jsp?reqid=0" > <strong>Assign New Subject To Faculty</strong></a>
                    </div>
                </div>
                <hr class="no-grid-gutter-h grid-gutter-margin-b no-margin-t">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Search By:</label>
                            <select id="drpSearchBy" name="drpSearchBy" class="form-control">
                                <option value="FacultyId">Faculty ID</option>
                                <option value="FacultyName">Faculty Name</option>
                                <option value="SubjectName">Subject Name</option>
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
                           
                            <th class="text-center">Faculty Name</th>
                            <th class="text-center">Standard</th>
                            <th class="text-center">Subject Name</th>
                        </tr>
                    </thead>
                    <tbody>
                          <%
                        
                     //  String buildtbl=genobj.filltbl("select fsd.FacultySubjectId,fm.FacultyName,sbm.SubjectName from facultysubjectdetail fsd,facultymaster fm,subjectmaster sbm where fsd.FacultyIdFK=fm.FacultyId and fsd.SubjectIdFK=sbm.SubjectId",4 , "FacultySubjectDetail");
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
