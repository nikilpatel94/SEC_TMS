<%-- 
    Document   : DisplayStudent
    Created on : 9 Sep, 2014, 5:20:38 PM
    Author     : STS4
--%>
<%@page  import="java.util.List" %>
<%@page  import="com.tms.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Invoice</title>
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
  <strong>Success!</strong> Student Inserted Successfully!!!.
</div>
                <%
                }
            else if(request.getParameter("resid").toString().equals("2"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Student Updated Successfully!!!.
</div>
                <%

                }

            else if(request.getParameter("resid").toString().equals("3"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Student Deleted Successfully!!!.
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
        buildtable=genobj.filltbl("select StudentId,Std,StudentName,StudentContactNo,StudentEmail,StudentParentName,StudentParentContactNo from studentmaster where "+drpsearch+" LIKE '%"+searchvalue+"%'", 8, "CreateInvoice");
        }
    else if(request.getParameter("btnProceed").equals("View All"))
        {
         buildtable=genobj.filltbl("select StudentId,Std,StudentName,StudentContactNo,StudentEmail,StudentParentName,StudentParentContactNo from studentmaster",8 , "CreateInvoice");
        }
    else
            {
         buildtable=genobj.filltbl("select StudentId,Std,StudentName,StudentContactNo,StudentEmail,StudentParentName,StudentParentContactNo from studentmaster",8 , "CreateInvoice");
        }


    }
else
    {
     buildtable=genobj.filltbl("select StudentId,Std,StudentName,StudentContactNo,StudentEmail,StudentParentName,StudentParentContactNo from studentmaster",8 , "CreateInvoice");
    }

        %>
        <form action="InvoicePage.jsp" class="panel form-horizontal">

            <div class="panel-heading">
                <strong><span class="panel-title">Generate Student Invoice </span></strong>
            </div>
            <div class="panel-body">
<!--                <div class="row">
                    <div class="col-sm-12">
                        <a href="StudentMaster.jsp?reqid=0" > <strong>Add New Student</strong></a>

                    </div>
                </div>-->
                <hr class="no-grid-gutter-h grid-gutter-margin-b no-margin-t">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Search By:</label>
                            <select id="drpSearchBy" name="drpSearchBy" class="form-control">
                                <option value="StudentId">Student Id</option>
                                <option value="StudentName">Student Name</option>
                                <option value="Std">Standard</option>
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
                            <th class="text-center">Generate<br>Invoice</th>
                            <th class="text-center">No</th>
                            <th class="text-center">Standard</th>
                            <th class="text-center">Student Name</th>
                            <th class="text-center">Contact No</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Parent name</th>
                            <th class="text-center">Parent Contact No</th>
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
