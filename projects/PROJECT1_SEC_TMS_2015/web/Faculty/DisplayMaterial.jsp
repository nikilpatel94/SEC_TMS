<%-- 
    Document   : DisplayMaterial
    Created on : Feb 17, 2015, 12:19:57 PM
    Author     : akash
--%>

<%@page import="com.tms.GenFun"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Material</title>
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
  <strong>Success!</strong> New Material uploaded Successfully!!!.
</div>
                <%
                }
            else if(request.getParameter("resid").toString().equals("2"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Material Updated Successfully!!!.
</div>
                <%

                }

            else if(request.getParameter("resid").toString().equals("3"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Material Deleted Successfully!!!.
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
                        String drpsearch=request.getParameter("drpSearchBy");
                        String searchvalue=request.getParameter("txtSearchValue");
                        
                        if(request.getParameter("btnProceed").equals("Search"))
                        {
                            buildtable=genobj.filltbl("Select MaterialId,Standard,subjectmaster.SubjectName,MaterialName,MaterialDiscription from db_sec_tms.materialmanagement,subjectmaster where materialmanagement.SubjectIdFK=subjectmaster.SubjectId and FacultyIdFK='"+fid+"' and "+drpsearch+" LIKE '%"+searchvalue+"%'", 6, "MaterialMaster");
                        }
                        else if(request.getParameter("btnProceed").equals("View All"))
                        {
                            buildtable=genobj.filltbl(" select MaterialId,Standard,subjectmaster.SubjectName,MaterialName,MaterialDiscription from db_sec_tms.materialmanagement,subjectmaster  where materialmanagement.SubjectIdFK=subjectmaster.SubjectId and FacultyIdFK='"+fid+"'", 6, "MaterialMaster");
                        }
                        
                    }
                    else
                        {
                            buildtable=genobj.filltbl("Select MaterialId,Standard,subjectmaster.SubjectName,MaterialName,MaterialDiscription from db_sec_tms.materialmanagement ,subjectmaster  where materialmanagement.SubjectIdFK=subjectmaster.SubjectId and FacultyIdFK='"+fid+"'", 6, "MaterialMaster");
                        }
                    %>
                    
        <form action="DisplayMaterial.jsp" class="panel form-horizontal">

            <div class="panel-heading">
                <strong><span class="panel-title">Material</span></strong>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-12">
                        <a href="MaterialMaster.jsp?reqid=0" > <strong>Upload Material</strong></a>
                    </div>
                </div>
                <hr class="no-grid-gutter-h grid-gutter-margin-b no-margin-t">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Search By:</label>
                            <select id="drpSearchBy" name="drpSearchBy" class="form-control">
                                <option value="MaterialName">Material Name</option>
                                <option value="MaterialDiscription">Material Description</option>
                                <option value="Standard">Standard</option>
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
                            <th class="text-center">Subject</th>
                            <th class="text-center">Material Name</th>
                            <th class="text-center">Material Description</th>
                        </tr>
                    </thead>

                    
                    
                    
                    
                    <tbody>
                        <%=buildtable%>
                    </tbody>
                </table>

            </div>
        </form>
        <%@include file="Footer.jsp" %>
    </body>
</html>
