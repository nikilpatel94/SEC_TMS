<%-- 
    Document   : ViewTestPapaer
    Created on : 5 Apr, 2015, 2:47:22 PM
    Author     : nikil
--%>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test paper of </title>
        <script>
            function doPrint()
            {                
//                alert("In this!");
//                alert(document.getElementById("jq-validation-form"));
                document.getElementById("jq-validation-form").submit();
                  alert(document.getElementById("jq-validation-form"));
            }
        function doEnable()
        {
            var btnval=document.getElementById('btnEdit').value;
            if(btnval==='Update')
            {
                document.getElementByName('mainForm').submit();
                alert(btnval);
            }
            
            else
            {    
                alert(btnval);
            document.getElementById('btnEdit').setAttribute('value','Update');
            document.getElementById('txtTestQuestionid%').removeAttribute('disabled');
            alert(document.getElementById('txtTestQuestionid').value);
            }
        }
            
        </script>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <form class="panel form-horizontal" id="jq-validation-form" action="../GeneratePaper" name="mainForm" method="post">
        <%
            String testqnofk=request.getParameter("reqid").toString();
            String qry1="Select count(QuestionNumber) from  testquestionmaster where TestIdFK='"+testqnofk+"' group by TestIdFK";
            String qry2="SELECT `TestQuestion`,`TestOption_A`,`TestOption_B`,`TestOption_C`,`TestOption_D`,`TestAnswer` FROM `testquestionmaster` WHERE `TestIdFK`='"+testqnofk+"'";
            String total="";
            String qstn="";
            String opa="";
            String opb="";
            String opc="";
            String opd="";
            String ans="";
            int i=1;
            
            
            GenFun genobj=new GenFun();
            
             List<Object[]> rs2=null;
             rs2= conobj.FetchData(qry1);
             for(Object rowObject:rs2)
                    {
                        
                        Object[] row=(Object[]) rowObject;
                        if(row[0]!=null)
                        {
                            total=row[0].toString();
                            session.setAttribute("totalq",total);
                        }
                    }
            
                    List<Object[]> rs1=null;
                    rs1= conobj.FetchData(qry2);
                    
                %>
                
                
                    <%
                    for(Object rowObject:rs1)
                    {
                        Object[] row=(Object[]) rowObject;
                        if(row[0]!=null && i<=Integer.parseInt(total))
                        {
                            qstn=row[0].toString();
                            opa=row[1].toString();
                            opb=row[2].toString();
                            opc=row[3].toString();
                            opd=row[4].toString();
                            ans=row[5].toString();
                        }
                    
                    
                    
                    
//                    System.out.print("\nQuestion "+i+":\n"+q+"\n"+opA+" "+opB+" "+opC+" "+opD);
               
               
          if(qstn!=null &&opa!=null && opb!=null && opc!=null && opd!=null & ans!=null)
            {  
        %>
        <form class="panel form-horizontal" id="jq-validation-form">
            
            <div class="panel-heading">
                <strong><span class="panel-title">Question No: <%=i%></span></strong>
                
                
<!--                <a href="../TestQuestionMaster?link=cancel"> &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    <Strong><h7>Cancel this test</h7></strong></a>-->
                
                
            </div>

            <div class="panel-body">

              <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Test Question</label>
                            <textarea class="form-control"
                                      id="txtTestQuestionid<%=i%>"  name="txtTestQuestion" cols="100" rows="3" style="font-size:18px;
	font-family: Mark, Arial Unicode MS;
        font-weight:bold;" disabled="true"><%=qstn%></textarea>
                        </div>
                    </div>
                </div>

            <div class="panel-footer text-center">
                        
              <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Option A *</label>
                            <textarea class="form-control"
                                      id="txtOptionA"  name="txtOptionA" cols="50" rows="3" disabled="disabled"><%=opa%></textarea> 
                        </div>
                    </div><!-- col-sm-4 -->
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Option B *</label>
                            <textarea class="form-control"
                                      id="txtOptionB"  name="txtOptionB" cols="50" rows="3" disabled="disabled"><%=opb%></textarea> 
                        </div>
                    </div><!-- col-sm-4 -->
                    
                </div>

                <div class="row">
                   <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Option C *</label>
                            <textarea class="form-control"
                                      id="txtOptionC"  name="txtOptionC" cols="50" rows="3" disabled="disabled"><%=opc%></textarea> 
                        </div>
                    </div><!-- col-sm-4 -->
                    <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Option D *</label>
                            <textarea class="form-control"
                                      id="txtOptionD"  name="txtOptionD" cols="50" rows="3" disabled="disabled"><%=opd%></textarea> 
                        </div>
                    </div><!-- col-sm-4 -->
                    
                </div>

                   
                   <div class="row">
                                   <div class="col-sm-6">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Answer *</label>
                            <textarea class="form-control"
                                      id="txtOptionD"  name="txtOptionD" cols="50" rows="3" disabled="disabled"><%=ans%></textarea> 
                        </div>
                    </div><!-- col-sm-4 -->
                       
				
			
				<!-- Radio styling on button click -->
				
			</div>
                    </div>
<!--                </div>-->
                 
<!--            </div>        -->
<!--        </form>-->
        <%
               }
            
            else{
        %>
        <p>
            No Data Available!
        </p>
        <%
            }
           i++;
           %>
           
           </div>
                </form>
                <%    }
                    if(Integer.parseInt(total)>=1){
                        
                    
        %>

        <div class="row">
                    <div class="col-sm-12 text-center-sm">
                        <input id="btnEdit" name="btnProceed" type="submit" class="btn btn-sm btn-labeled btn-success" value="Edit Paper" onclick="doEnable();"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="btnUpdate" name="btnProceed" type="submit" class="btn btn-sm btn-labeled btn-info" value="Print Paper " onclick="doPrint();"/>
                    </div><!-- col-sm-6 -->
                    <%}
                    else%>
                    <div class="col-sm-12 text-center-sm">
                            No data avialable!
                    </div><!-- col-sm-6 -->
          </form>
        <%@include file="Footer.jsp" %>
    </body>
</html>
