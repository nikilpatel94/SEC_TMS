<%-- 
    Document   : index
    Created on : 9 Sep, 2014, 2:41:00 PM
    Author     : STS4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.util.List" %>
<%@page  import="com.tms.*" %>
<!DOCTYPE html>
<html>
<head  profile="http://www.w3.org/2005/10/profile">
<link rel="icon" 
      type="image/png" 
      href="SEC.png">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sahajanand Education center</title>
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
            
                 if(request.getParameter("resid").toString().equals("2"))
                 {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Request Updated Successfully with appropriate feedback !!!.
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
        try{
        if(request.getParameter("btnProceed")!=null)
        {
        if(request.getParameter("btnProceed").equals("Search"))
        {
        String drpsearch="";
        String searchvalue="";
        drpsearch=request.getParameter("drpSearchBy");
        searchvalue=request.getParameter("txtSearchValue");
        buildtable=genobj.filltbl("select Id,Name,MobileNo,Email,RequestFor,Status from requestmaster where "+drpsearch+" LIKE '%"+searchvalue+"%'", 7, "RequestMaster");
        }
        else if(request.getParameter("btnProceed").equals("View All"))
        {
         buildtable=genobj.filltbl("select Id,Name,MobileNo,Email,RequestFor,Status from requestmaster",7 , "RequestMaster");
        }
        else
        {
         buildtable=genobj.filltbl("select Id,Name,MobileNo,Email,RequestFor,Status from requestmaster where Status='pending'",7 , "RequestMaster");
        }


    }
else
    {
     buildtable=genobj.filltbl("select Id,Name,MobileNo,Email,RequestFor,Status from requestmaster where Status='pending'",7 , "RequestMaster");
    }
        
        }catch(Exception ex)
        {
            System.out.println(ex);
        }
        %>
        <form action="index.jsp" class="panel form-horizontal">

            <div class="panel-heading">
                <strong><span class="panel-title">Request Details</span></strong>
            </div>
            <div class="panel-body">
                <div class="row">
                </div>
                <hr class="no-grid-gutter-h grid-gutter-margin-b no-margin-t">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Search By:</label>
                            <select id="drpSearchBy" name="drpSearchBy" class="form-control">
                                <option value="Id">Id</option>
                                <option value="Name">Name</option>
                                <option value="MobileNo">Mobile No.</option>
                                <option value="Email">Email ID.</option>                             
                                <option value="RequestFor">Request for</option>
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
                        <input id="btnSearch" name="btnProceed" type="submit" class="btn btn-sm btn-labeled btn-success" value="Search" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="btnViewAll" name="btnProceed" type="submit" value="View All" />
                    </div><!-- col-sm-6 -->

                </div>




            </div>


            <div class="panel-footer text-center">
                <label class="control-label" >Pending Requests</label>
                <br>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="text-center">Select</th>
                            <th class="text-center">No</th>
                            <th class="text-center">Name</th>
                            <th class="text-center">Contact No</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Request For</th>
                            <th class="text-center">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                          <%
                       out.print(buildtable);
                       out.flush();
                                       
                        %>
                       </tbody>
                </table>

            </div>
                       
            <br>
            
            
<%            
        try{
    
     buildtable=genobj.filltbl("select  StudentId, StudentName, StudentAddress, StudentEmail, StudentContactNo, StudentDOB, StudentParentName, StudentParentContactNo, StudentParentEmail, StudentSchool,  StudentType, Std from `db_sec_tms`.`studentmaster_temp` ",13 ,"RegiterStudentRequest");
     
        }catch(Exception ex)
        {
            System.out.println(ex);
        }
        %>
   
            
            
            
        
<!--            <div class="panel-footer text-center">
            <label class="control-label" >Registration Requests</label>
           
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="text-center">Select</th>
                            <th class="text-center">No</th>
                            <th class="text-center">Name</th>
                            <th class="text-center">Address</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Contact No</th>
                            <th class="text-center">DOB</th>
                            <th class="text-center">Contact No</th>
                            <th class="text-center">Parent Contact</th>
                            <th class="text-center">Parent Email</th>
                            <th class="text-center">School</th>
                            <th class="text-center">Type</th>
                            <th class="text-center">Std</th>
                        </tr>
                    </thead>
                    <tbody>
                          <%
 //                       out.print(buildtable);
   //                    out.flush();
                                       
                        %>
                       </tbody>
                </table>

            </div>-->
            
        </form>        

        <%@include file="Footer.jsp" %>
    </body>
</html>
