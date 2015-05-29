<%-- 
    Document   : DiscussionAnswer
    Created on : Feb 16, 2015, 4:18:48 PM
    Author     : akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Discuss Answer</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
 <div>
        <form action="" class="panel form-horizontal" id="jq-validation-form">
            
             <div class="panel-heading">
                <strong><span class="panel-title">Discussed Answer</span></strong>
            </div>
            
            <div class="panel-body">
                
                
                
                <div class="row">
                    <div class="col-md-8">
                        <section>
                            <div class="panel panel-primary">
                                <div class="panel-heading"><i class="fa fa-file-text"></i>Discussion </div>
                                <table class="table table-striped">
                                    <tr>
                                        <th>Student Name</th>
                                        <th>Standard</th>
                                        <th>Date</th>
                                        <th>Question</th>
                                        <th>Answer</th>
                                    </tr> 
                
                <%         
                    String stid1= "";
                    String stname = "";
                    String sstd = "";
                    String dque = "";
                    String ans = "";
                    String date = "";
                    try {

                        if (request.getParameter("reqid") != null) {
                            List<Object[]> rs1 = null;
                            rs1 = conobj.FetchData("SELECT b.StudentId,b.StudentName,b.Std,a.DiscussionDate,a.DiscussQuestion,c.Answer FROM studentdiscussion a,studentmaster b,discussionanswer c WHERE b.StudentId=a.StudentIdFK AND a.`StudentDiscussionId`=c.`StudentDiscussionIdFK` AND StudentDiscussionId='"+request.getParameter("reqid").toString()+"'");

           //where Std='"+request.getParameter("drpStd").toString() +"'
                            for (Object rowObject : rs1) {
                                Object[] row = (Object[]) rowObject;
                                if (row[0] != null) {
                                    stid1 = row[0].toString();
                                }
                                if (row[3] != null) {
                                    date = row[3].toString();
                                }
                                if (row[1] != null) {
                                    stname = row[1].toString();
                                }
                                if (row[2] != null) {
                                    sstd = row[2].toString();
                                }
                                if (row[4] != null) {
                                    dque = row[4].toString();
                                }
                                if (row[5] != null) {
                                    ans = row[5].toString();
                                }
                %>
                
                                    <tr>
                                        <td><%=stname%></td> 
                                        <td><%=sstd%></td>
                                        <td><%=date%></td>
                                        <td><%=dque%></td>
                                        <td><%=ans%></td>
                                    </tr>

                


                <%
                        }
                    }
                    }
                    catch(Exception e)
                    {
                        out.println("Error");
                    }

                %>    
                
                                </table>
                            </div>
                        </section>
                        <br><br>


                    </div>
                </div>


            </div>
                
                
        </form>
 </div>
        <div>
          <form action="../DiscussAnswer" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="StudentDiscussAnswerId" value="" /> 
            <input type="hidden" name="StudentDiscussionId" value="<%=request.getParameter("reqid")%>" />
            <input type="hidden" name="StudetIdFK" value="<%=sid%>" />
            <div class="panel-heading">
                <strong><span class="panel-title">Discussed Answer</span></strong>
            </div>
             <div class="panel-body">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Answer *</label>
                            <textarea class="form-control"
                                      id="txtAnswer"  name="txtAnswer" cols="100" rows="3"></textarea>
                        </div>
                    </div><!-- col-sm-6 -->

                    <div class="col-sm-3">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Date *</label>

                            <!-- Javascript -->
                            <script>
                                init.push(function () {
                                    var options = {
                                        todayBtn: "linked",
                                        orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
                                    }
                                    $('#bs-datepicker-example').datepicker(options);

                                    $('#bs-datepicker-component').datepicker({format: 'yyyy-mm-dd', startDate: '-3d'});

                                    var options2 = {
                                        orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
                                    }
                                    $('#bs-datepicker-range').datepicker(options2);

                                    $('#bs-datepicker-inline').datepicker();
                                });
                            </script>
                            <!-- / Javascript -->
                            <div class="input-group date" id="bs-datepicker-component">
                                <input type="text" name="txtStudentDate" value=""   placeholder="YYYY-MM-DD" id="txtStudentDate" class="form-control"><span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                            </div>

                        </div>
                    </div><!-- col-sm-4 -->
                </div>

            <div class="panel-footer text-center">
               <%
                try
                       
               
                          {%>
                        <div class="panel-footer text-center">
                          <input id="btnSave" name="btnProceed" type="submit" class="btn btn-md btn-labeled btn-success" value="Save" />
                        </div>  

                          <%
}
                catch(Exception ex)
                        {
                    ex.printStackTrace();
                    }
                %>
              


            </div>
             </div>
        </form>
        </div>
                
        <%@include file="Footer.jsp" %>

    </body>
</html>
