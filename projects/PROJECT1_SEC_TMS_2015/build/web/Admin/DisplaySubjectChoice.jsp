<%-- 
    Document   : DisplaySubjectChoice
    Created on : 9 Sep, 2014, 5:08:00 PM
    Author     : STS4
--%>
<%@page  import="java.util.List" %>
<%@page  import="com.tms.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject Management</title>
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
  <strong>Success!</strong> Subject-Choice Inserted Successfully!!!.
</div>
                <%
                }
            else if(request.getParameter("resid").toString().equals("2"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Subject-Choice Updated Successfully!!!.
</div>
                <%

                }

            else if(request.getParameter("resid").toString().equals("3"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Subject-Choice Deleted Successfully!!!.
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
        buildtable=genobj.filltbl("select scd.SubjectChoiceId,sbm.Std,sbm.SubjectName,stm.StudentName from subjectchoicedetails scd,studentmaster stm,SubjectMaster sbm where scd.SubjectIdFK=sbm.SubjectId and scd.StudentIdFK=stm.StudentId and "+drpsearch+" LIKE '%"+searchvalue+"%'",5 , "SubjectChoiceDetail");
        }
    else if(request.getParameter("btnProceed").equals("View All"))
        {
         buildtable=genobj.filltbl("select scd.SubjectChoiceId,sbm.Std,sbm.SubjectName,stm.StudentName from subjectchoicedetails scd,studentmaster stm,SubjectMaster sbm where scd.SubjectIdFK=sbm.SubjectId and scd.StudentIdFK=stm.StudentId",5 , "SubjectChoiceDetail");
        }
    else
            {
         buildtable=genobj.filltbl("select scd.SubjectChoiceId,sbm.Std,sbm.SubjectName,stm.StudentName from subjectchoicedetails scd,studentmaster stm,SubjectMaster sbm where scd.SubjectIdFK=sbm.SubjectId and scd.StudentIdFK=stm.StudentId",5 , "SubjectChoiceDetail");
        }


    }
else
    {
     buildtable=genobj.filltbl("select scd.SubjectChoiceId,sbm.Std,sbm.SubjectName,stm.StudentName from subjectchoicedetails scd,studentmaster stm,SubjectMaster sbm where scd.SubjectIdFK=sbm.SubjectId and scd.StudentIdFK=stm.StudentId",5 , "SubjectChoiceDetail");
    }


        %>
        
        <form action="DisplaySubjectChoice.jsp" class="panel form-horizontal">

            <div class="panel-heading">
                <strong><span class="panel-title">Subject Choice Detail</span></strong>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-12">
                        <a href="SubjectChoiceDetail.jsp?reqid=0" > <strong>Add New Choice</strong></a>
                    </div>
                </div>
                <hr class="no-grid-gutter-h grid-gutter-margin-b no-margin-t">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Search By:</label>
                            <select id="drpSearchBy" name="drpSearchBy" class="form-control">
                                <option value="SubjectId">Subject Id</option>
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
                            <th class="text-center">Standard</th>
                            <th class="text-center">Subject Name</th>
                            <th class="text-center">Student Name</th>
                        </tr>
                    </thead>
                    <tbody>
                       <%
                       // String buildtbl=genobj.filltbl("select SubjectChoiceId,SubjectName,StudentName from subjectchoicedetails",4 , "SubjectChoiceDetail");
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
