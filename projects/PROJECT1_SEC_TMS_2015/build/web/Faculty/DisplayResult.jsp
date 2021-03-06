<%-- 
    Document   : DisplayResult
    Created on : Feb 17, 2015, 12:13:55 PM
    Author     : akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test</title>
    </head>
        <body>
        <%@include file="Header.jsp" %>
        <form action="DisplayResult.jsp" class="panel form-horizontal">

            <div class="panel-heading">
                <strong><span class="panel-title">Test Page</span></strong>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-12">
                        <a href="ResultMaster.jsp?reqid=0" > <strong>Result</strong></a>
                    </div>
                </div>
                <hr class="no-grid-gutter-h grid-gutter-margin-b no-margin-t">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Search By:</label>
                            <select id="drpSearchBy" name="drpSearchBy" class="form-control">
                                <option value="StudentIdFK">Student Id</option>
                                <option value="TestIdFK">Test ID</option>
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
                            <th class="text-center">Student Id</th>
                            <th class="text-center">Student Name</th>
                            <th class="text-center">Obtained Marks</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- built table baki-->
                    </tbody>
                </table>

            </div>
        </form>
        <%@include file="Footer.jsp" %>
    </body>
</html>
