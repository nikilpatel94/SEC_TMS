<%-- 
    Document   : DisplayStudentFee
    Created on : 9 Sep, 2014, 5:36:08 PM
    Author     : STS4
--%>
<%@page import="com.tms.TRYSMS"%>
<%@page  import="java.util.List" %>
<%@page  import="com.tms.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Management</title>
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
//                     DBCon conobj1 =new DBCon();
//                String tid="";
//                String date="";
//                String sub="";
//                
//                
//                if(request.getParameter("reqid")!=null)
//                {
//                List<Object[]> rs1=null;
//                tid=request.getParameter("reqid").toString();
//                rs1= conobj1.FetchData("SELECT TimeTableId,ExecutingDate,SubjectIdFK FROM `db_sec_tms`.`timetable` where FacultyIdFK='"+stdid+"'And TimeTableId='"+request.getParameter("reqid")+"' ");
//           
//             
//                for(Object rowObject:rs1)
//                {
//                    Object[] row=(Object[]) rowObject;
//                    if(row[0]!=null)
//                    tid=row[0].toString();
//                    
//                    date=row[1].toString();
//                    sub=row[2].toString();
//                   
//                }
//               
//               }
//                      TRYSMS obj1=new TRYSMS();
//                      obj1.SMSSender("mehul","mehul12345","919016813135","Hello mehul","WEBSMS","0");
                %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Student-fee Inserted Successfully!!!.
</div>
                <%
                }
            else if(request.getParameter("resid").toString().equals("2"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Student-fee Updated Successfully!!!.
</div>
                <%

                }

            else if(request.getParameter("resid").toString().equals("3"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Student-fee  Deleted Successfully!!!.
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
        buildtable=genobj.filltbl("select sfd.StudentFeeId,stm.StudentName,sfd.TotalAmount,sfd.PaidAmount,sfd.RemainingAmount from studentfeesdetail sfd,studentmaster stm where sfd.StudentIdFK=stm.StudentId and "+drpsearch+" LIKE '%"+searchvalue+"%'",6 , "StudentFeeDetail");
        }
    else if(request.getParameter("btnProceed").equals("View All"))
        {
         buildtable=genobj.filltbl("select sfd.StudentFeeId,stm.StudentName,sfd.TotalAmount,sfd.PaidAmount,sfd.RemainingAmount from studentfeesdetail sfd,studentmaster stm where sfd.StudentIdFK=stm.StudentId",6 , "StudentFeeDetail");
        }
    else
            {
         buildtable=genobj.filltbl("select sfd.StudentFeeId,stm.StudentName,sfd.TotalAmount,sfd.PaidAmount,sfd.RemainingAmount from studentfeesdetail sfd,studentmaster stm where sfd.StudentIdFK=stm.StudentId",6 , "StudentFeeDetail");
        }


    }
else
    {
     buildtable=genobj.filltbl("select sfd.StudentFeeId,stm.StudentName,sfd.TotalAmount,sfd.PaidAmount,sfd.RemainingAmount from studentfeesdetail sfd,studentmaster stm where sfd.StudentIdFK=stm.StudentId",6 , "StudentFeeDetail");
    }

        %>
        <form action="DisplayStudentFee.jsp" class="panel form-horizontal">

            <div class="panel-heading">
                <strong><span class="panel-title">Student Fee Detail</span></strong>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-12">
                        <a href="StudentFeeDetail.jsp?reqid=0" > <strong>Add Fee Detail</strong></a>
                    </div>
                </div>
                <hr class="no-grid-gutter-h grid-gutter-margin-b no-margin-t">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Search By:</label>
                            <select id="drpSearchBy" name="drpSearchBy" class="form-control">
                                <option value="StudentFeeId">Student Fee-ID</option>
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
                            <th class="text-center">Total Amount</th>
                            <th class="text-center">Paid Amount</th>
                            <th class="text-center">Remain Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                           <%
                       // String buildtbl=genobj.filltbl("select sfd.StudentFeeId,stm.StudentName,sfd.TotalAmount,sfd.PaidAmount,sfd.RemainingAmount from studentfeesdetail sfd,studentmaster stm where sfd.StudentIdFK=stm.StudentId",6 , "StudentFeeDetail");
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
