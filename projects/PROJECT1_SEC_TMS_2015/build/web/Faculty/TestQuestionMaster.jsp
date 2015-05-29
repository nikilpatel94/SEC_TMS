<%-- 
    Document   : TestQuestionMaster
    Created on : Feb 16, 2015, 11:35:27 AM
    Author     : akash
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="com.tms.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Question Master </title>
    </head>
    
    
    <body>
        <%@include file="Header.jsp" %>
<%  
       int total=0;
       if(request.getSession().getAttribute("totalq")!=null) 
        total=Integer.parseInt((String)(request.getSession().getAttribute("totalq")));     
    String tqid="";
                String tid="";
                String faid="";
                String tque="";
                String topa="";
                String topb="";
                String topc="";
                String topd="";
        if(request.getParameter("pgctr")==null || request.getParameter("pgctr").equals(""))
        {
                DBCon conobj1 =new DBCon(); 
                GenFun genobj= new GenFun();
            
                
            
                String tqstatus="";
                
                 if(request.getParameter("reqid")!=null)
                {
                     tqid=request.getParameter("reqid").toString();
                List<Object[]> rs1=null;
                rs1= conobj1.FetchData("SELECT * FROM testquestionmaster where TestQuestionId='"+tqid+"' ");
             
                
                
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                        tqid=row[0].toString();
                       tid=row[1].toString();
                       faid=row[2].toString();
                       tque=row[3].toString();
                       topa=row[4].toString();
                       topb=row[5].toString();
                       topc=row[6].toString();
                       topd=row[7].toString();
                    
                       tqstatus=row[8].toString();
                    }
               }
        
        
        
        %>
        
        <script>
            init.push(function() {
//                $("#txtQuestionNo").mask("99");
//                $.validator.addMethod(
//                        "phone_format",
//                        function(value, element) {
//                            var check = false;
//                            return this.optional(element) || /^\d{3}\$/.test(value);
//                        },
//                        "Invalid Question Number!."
//                        );

                $("#jq-validation-form").validate({
                    ignore: '.ignore, .select2-input',
                    focusInvalid: false,
                    rules: {
                        
                        'txtQuestionNo':{
                              required: true
                        }
                        
                    }
                   
                });
            });
         </script>
         
                 
         <form name="questionsetform" action="../TestQuestionMaster" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="pgctr" value="0" />
            <div class="panel-heading">
                <strong><span class="panel-title">Create Paper of marks</span></strong>
                
                
            </div>

            <div class="panel-body">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Test Name </label>
                             <select id="drpTestId" name="drpTestId" class="form-control">
                               <%
                               String builddrp=genobj.filldrp("SELECT TestId,TestName FROM `db_sec_tms`.`testmaster` t,facultysubjectdetail fsub  where fsub.SubjectIdFK=t.SubjectIdFK and fsub.FacultyIdFK='"+fid+"' and t.TestId not in (select testidfk from testquestionmaster);", tid);
                             out.print(builddrp);
                             out.flush();
                            %>
                            </select>  
                        </div>
                    </div><!-- col-sm-4 -->

                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Number of questions* </label>
                            <div class="form-group no-margin-hr">
    
                                <input type="text" maxlength="3" name="txtQuestionNo" id="txtQuestionNo" class="form-control">
                        </div>

                        </div>
                    </div><!-- col-sm-4 -->
                
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" values="<%=tqstatus%>">Display Status</label>
                            <select id="drpStatus" name="drpStatus" class="form-control">
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                            </select>
                        
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center-sm">
                        <input id="btnSubmit" name="btnProceed" type="submit" class="btn btn-sm btn-labeled btn-success" value="SetQuestions" />
                    </div><!-- col-sm-6 -->

                </div>
            </div>

        </form>
                                                       <%
        }
                                    
    //
        else if(Integer.parseInt(request.getParameter("pgctr"))>=1 && Integer.parseInt(request.getParameter("pgctr"))<=total)
        {
         
        
                %>
                
        <script>
            init.push(function() {
                $("#jq-validation-form").validate({
                    ignore: '.ignore, .select2-input',
                    focusInvalid: false,
                    rules: {
                        
                        'txtQuestionNo':{
                              required: true
                        },
                        
                        'txtTestQuestion': {
                            required: true
                        },
                        'txtOptionA': {
                            required: true
                        },
                        'txtOptionB': {
                            required: true
                        },
                        'txtOptionC': {
                            required: true
                        },
                        'txtOptionD': {
                            required: true
                        }
                    }
                   
                });
            });
         </script>
              
        <form name="questionsetform" action="../TestQuestionMaster" method="post"   class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="pgctr" value="<%=request.getParameter("pgctr")%>" />
            <div class="panel-heading">
                <strong><span class="panel-title">Question No: <%= request.getParameter("pgctr") %> out of <%=total%></span></strong>
                
                
                <a href="../TestQuestionMaster?link=cancel"> &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    <Strong><h7>Cancel this test</h7></strong></a>
                
                
            </div>

            <div class="panel-body">

              <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Test Question</label>
                            <textarea class="form-control"
                                      id="txtTestQuestion"  name="txtTestQuestion" cols="100" rows="3" style="font-size:18px;
	font-family: Mark, Arial Unicode MS;
	font-weight:bold;"><%=tque%></textarea>
                        </div>
                    </div>
                </div>

            <div class="panel-footer text-center">
                        
              <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Option A *</label>
                            <textarea class="form-control"
                                      id="txtOptionA"  name="txtOptionA" cols="50" rows="3"><%=topa%></textarea> 
                        </div>
                    </div><!-- col-sm-4 -->
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Option B *</label>
                            <textarea class="form-control"
                                      id="txtOptionB"  name="txtOptionB" cols="50" rows="3"><%=topb%></textarea> 
                        </div>
                    </div><!-- col-sm-4 -->
                    
                </div>

                <div class="row">
                   <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Option C *</label>
                            <textarea class="form-control"
                                      id="txtOptionC"  name="txtOptionC" cols="50" rows="3"><%=topc%></textarea> 
                        </div>
                    </div><!-- col-sm-4 -->
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Option D *</label>
                            <textarea class="form-control"
                                      id="txtOptionD"  name="txtOptionD" cols="50" rows="3"><%=topd%></textarea> 
                        </div>
                    </div><!-- col-sm-4 -->
                    
                </div>

                   
                   <div class="row">
			<div class="col-md-1">
				<!-- Radio styling -->
                                   <label class="control-label">Answer *</label>
                       
                       
				<p>
					<label class="radio">
						<input type="radio" name="radioAns" class="px" value="A">
						<span class="lbl">A</span>
					</label>
					<label class="radio">
						<input type="radio" name="radioAns" class="px" value="B">
						<span class="lbl">B</span>
					</label>
					<label class="radio">
						<input type="radio" name="radioAns" class="px" value="C">
						<span class="lbl">C</span>
					</label>
                                        <label class="radio">
						<input type="radio" name="radioAns" class="px" value="D">
						<span class="lbl">D</span>
					</label>

				</p>
				<hr>
				<!-- Radio styling on button click -->
				
			</div>
                    </div>
                </div>
                 
<script>
function goBack() {
    window.history.back()
}
</script>
                 <div class="row">
                    <div class="col-sm-12 text-center-sm">
                        <input id="btnPrevQuestion" class="btn btn-md btn-labeled btn-info" name="btnProceed" type="submit" value="Prev. Question" onclick="goBack()"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="btnNextQuestion" name="btnProceed" type="submit" class="btn btn-md btn-labeled btn-success" value="Next Question" />
                    </div><!-- col-sm-6 -->

                </div>
            </div>        
        </form>
        <%
        }
         else
         {
          %>

<!--<div id="myModal" class="modal fade" tabindex="-1" role="dialog" style="display: none;">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">Modal Heading</h4>
					</div>
					<div class="modal-body">
						<h4>Text in a modal</h4>
						<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>

						<h4>Popover in a modal</h4>
						<p>This <a href="#" role="button" class="btn btn-default popover-test" title="" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title">button</a> should trigger a popover on click.</p>

						<h4>Tooltips in a modal</h4>
						<p><a href="#" class="tooltip-test" title="" data-original-title="Tooltip">This link</a> and <a href="#" class="tooltip-test" title="" data-original-title="Tooltip">that link</a> should have tooltips on hover.</p>

						<hr>

						<h4>Overflowing text to show scroll behavior</h4>
						<p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
						<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
						<p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
						<p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
						<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
						<p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
						<p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
						<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
						<p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
					</div>  / .modal-body 
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div>
				</div>  / .modal-content 
			</div>  / .modal-dialog 
		</div>  /.modal 
		 / Modal 
                  
          
          
          -->
          
    <form name="finalGenerateJSP" action="../GeneratePaper"   class="panel form-horizontal">
             
        <div class="row" style="border-top: 1px solid #eee; padding: 15px 10px; margin: 0 -18px">
		<div class="col-sm-12">
			<div class="note note-info">You have reached the limit of question!<code>Press "Generate Paper" Button to generate paper.</code>.</div>
			<div id="ui-default-colors"></div>
		</div>
	</div>              
              
        
        
            <div class="row">
			<div class="col-md-12">
				
			<center>	<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Generate</button></center>
			</div>
		</div>

        
        
        
        </form>
         
          <%
//             out.println("You have reached the limit of question!");
                
                  }  
                            
                            
                            %>
<%@include file="Footer.jsp" %>
    </body>
</html>
