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
                <div class="tab-content tab-content-bordered panel-padding">
                    
                 <%         
                    String stid1= "";
                    String stname = "";
//                    String sstd = "";
                    String dque = "";
//                    String ans = "";
                    String qdate = "";
                    String pic = "";
                    
                        if (request.getParameter("reqid") != null) {
                            List<Object[]> rs1 = null;
                            rs1 = conobj.FetchData("SELECT b.StudentId,b.StudentName,b.StudentPhoto,a.DiscussionDate,a.DiscussQuestion FROM studentdiscussion a,studentmaster b WHERE b.StudentId=a.StudentIdFK AND StudentDiscussionId='"+request.getParameter("reqid").toString()+"'");

           //where Std='"+request.getParameter("drpStd").toString() +"'
                            for (Object rowObject : rs1) {
                                Object[] row = (Object[]) rowObject;
                                if(row[0]!=null)
                                    stid1 = row[0].toString();
                                stname = row[1].toString();
                                pic = row[2].toString();
                                qdate = row[3].toString();
                                dque = row[4].toString();
                            }
                %>
						<div class="widget-article-comments tab-pane panel no-padding no-border fade active in" id="profile-tabs-board">
                 
							<div class="comment">

								<img src="../FileUpload/StudentPhotos/<%=pic%>" alt="" class="comment-avatar">
								<div class="comment-body">
									<form action="#" id="leave-comment-form" class="comment-text no-padding no-border expanding-input expanded">
                                                                            <div class="comment-text">
										<div class="comment-heading">
											<a href="#" title=""><%=stname%></a><span><%=qdate%></span>
										</div>
                                                                                <textarea class="form-control" 
                                                                                          id="txtQuestion"  name="txtQuestion" cols="20" rows="1" readonly><%=dque%></textarea>
                                                                            <!--<input type="text" name="txtQuestion" id="txtQuestion" class="form-control" value="" readonly>-->

									</div>
<!--										<div class="expanding-input-hidden expanding-input-content" style="margin-top: 10px;">
											<label class="checkbox-inline pull-left">
												<input type="checkbox" class="px">
												<span class="lbl">Private message</span>
											</label>
											<button class="btn btn-primary pull-right">Leave Message</button>
										</div>-->
									</form>
								</div> <!-- / .comment-body -->
							</div>
<% 
                        }
    else
    {
            out.println("Sucsess");
    }%>
                                                    <hr class="no-panel-padding-h panel-wide">

                
                <%         
                    String stid2= "";
                    String stname1 = "";
                    String sstd = "";
//                    String dque = "";
                    String ans = "";
                    String dadate = "";
                    String pic1 = "";
                    String utype="";
                    
                    try {

                        if (request.getParameter("reqid") != null) {
                            List<Object[]> rs2 = null;
                            rs2 = conobj.FetchData("(SELECT b.StudentId,b.StudentName,c.DiscussionAnswerDate,c.Answer,b.StudentPhoto,l.UserType FROM studentdiscussion a,discussionanswer c,studentmaster b,`login` l WHERE b.`StudentId`=c.`StudetIdFK` AND l.`UserName`=b.`StudentEmail` AND a.`StudentDiscussionId`=c.`StudentDiscussionIdFK` AND StudentDiscussionId='"+request.getParameter("reqid").toString()+"') UNION (SELECT f.`FacultyId`,f.`FacultyName`,d.`FacultyDiscussionDate`,d.`FacultyAnswer`,f.`FacultyPhoto`,l.UserType FROM studentdiscussion a,`facultydiscussion` d,`facultymaster` f,`login` l WHERE f.`FacultyId`=d.`FacultyIdFK`  AND StudentDiscussionId='"+request.getParameter("reqid").toString()+"' AND l.`UserName`=f.`FacultyEmail` AND a.`StudentDiscussionId`=d.`StudentDiscussionIdFK`)");

           //where Std='"+request.getParameter("drpStd").toString() +"'
                            for (Object rowObject : rs2) {
                                Object[] row = (Object[]) rowObject;
                                if (row[0] != null) {
                                    stid2 = row[0].toString();
                                }
                                 if (row[1] != null) {
                                    stname1 = row[1].toString();
                                }
                                if (row[2] != null) {
                                    dadate = row[2].toString();
                                }
                                if (row[3] != null) {
                                    ans = row[3].toString();
                                }
                                 if (row[4] != null) {
                                    pic1 = row[4].toString();
                                }
                                 if (row[5] != null) {
                                    utype = row[5].toString();
                                }
                %>
                
                             <div class="comment">
                                 <%if(utype.equals("S"))
                                 {
                                 %>
								<img src="../FileUpload/StudentPhotos/<%=pic1%>" alt="" class="comment-avatar">
                                  <%
                                 }
                                 else if(utype.equals("F")){
                                  %>
                                  <img src="../FileUpload/FacultyPhotos/<%=pic1%>" alt="" class="comment-avatar">
				<%
                                 }
                                %>		
                                  <div class="comment-body">
									<form action="#" id="leave-comment-form" class="comment-text no-padding no-border expanding-input expanded">
                                                                            <div class="comment-text">
										<div class="comment-heading">
											<a href="#" title=""><%=stname1%></a><span><%=dadate%></span>
										</div>
                                                                                 <textarea class="form-control" 
                                                                                          id="txtAwnser"  name="txtAwnser" cols="20" rows="1" readonly><%=ans%></textarea>
                                                                                 <!--<input type="text" name="txtAwnser" id="txtAwnser" class="form-control" value="" readonly>-->
									</div>
									</form>
								</div> <!-- / .comment-body -->

                                                </div>
               
                <%
                        }
                    }
                    }
                    catch(Exception e)
                    {
                        out.println("Error");
                    }

                %>    
                   </div> 
                    </div>
                </div>
        </form>
 </div>
        <div>
          <form action="../FacultyDiscussAnswer" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="FacultyDiscussionId" value="" /> 
            <input type="hidden" name="StudentDiscussionIdFK" value="<%=request.getParameter("reqid")%>" />
            <input type="hidden" name="FacultyIdFK" value="<%=fid%>" />
            <input type="hidden" name="FacultyDiscussionTime" value="<%=format3%>" />
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
                                <input type="text" name="txtFacultyDate" value=""   placeholder="YYYY-MM-DD" id="txtFacultyDate" class="form-control"><span class="input-group-addon"><i class="fa fa-calendar"></i></span>
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
