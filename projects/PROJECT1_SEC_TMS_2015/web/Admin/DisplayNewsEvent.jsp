<%@page  import="java.util.List" %>
<%@page  import="com.tms.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>News and Events Management</title>
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
  <strong>Success!</strong> New Entry Inserted Successfully!!!.
</div>
                <%
                }
            else if(request.getParameter("resid").toString().equals("2"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Entry Updated Successfully!!!.
</div>
                <%

                }

            else if(request.getParameter("resid").toString().equals("3"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Entry Deleted Successfully!!!.
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
        buildtable=genobj.filltbl("SELECT EventId,EventName,EventLocation,EventExDate,EventStartTime,EventEndTime,a.FacultyName FROM facultymaster a,eventmaster WHERE a.FacultyId=FacultyIdFK AND "+drpsearch+" LIKE '%"+searchvalue+"%'", 8, "NewsEventMaster");
        }
    else if(request.getParameter("btnProceed").equals("View All"))
        {
         buildtable=genobj.filltbl("SELECT EventId,EventName,EventLocation,EventExDate,EventStartTime,EventEndTime,a.FacultyName FROM facultymaster a,eventmaster WHERE a.FacultyId=FacultyIdFK; ",8 , "NewsEventMaster");
        }
    else
            {
         buildtable=genobj.filltbl("select EventId,EventName,EventLocation,EventExDate,EventStartTime,EventEndTime,a.FacultyName from facultymaster a,eventmaster ",8 , "NewsEventMaster");
        }
    }
else
    {
     buildtable=buildtable=genobj.filltbl("SELECT EventId,EventName,EventLocation,EventExDate,EventStartTime,EventEndTime,a.FacultyName FROM facultymaster a,eventmaster WHERE FacultyIdFK=a.FacultyId;",8 , "NewsEventMaster");
    }
        %>
        <form action="DisplayNewsEvent.jsp" class="panel form-horizontal">

            <div class="panel-heading">
                <strong><span class="panel-title">News and Events Detail</span></strong>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-12">
                        <a href="NewsEventMaster.jsp?reqid=0" > <strong>Add New Entry</strong></a>

                    </div>
                </div>
                <hr class="no-grid-gutter-h grid-gutter-margin-b no-margin-t">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Search By:</label>
                            <select id="drpSearchBy" name="drpSearchBy" class="form-control">
                                <option value="EventId">Id</option>
                                <option value="EventName">Name</option>
                                <option value="EventExDate">Date</option>
<!--                                <option value="FacultyIdFK">Faculty Name</option>-->
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
                            <th class="text-center">Name</th>
                            <th class="text-center">Location</th>
                            <th class="text-center">Date</th>
                            <th class="text-center">Start Time</th>
                            <th class="text-center">End Time</th>
                            <th class="text-center">Associate<br>Faculty </th>
                            <!--<th class="text-center">Status</th>-->
                            
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