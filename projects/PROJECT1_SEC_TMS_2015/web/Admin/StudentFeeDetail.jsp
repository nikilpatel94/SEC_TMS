<%-- 
    Document   : StudentFeeDetail
    Created on : 9 Sep, 2014, 5:40:04 PM
    Author     : STS4
--%>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>
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

                DBCon conobj =new DBCon();
                List<Object[]> rs1=null;
                String sfid="";
                String stdid="";
                String stdname="";
                String total="";
                String paidamt="";
                String remainamt="";
                String date="";
                String paydetail="";
                String paymode="";
    try{
                 if(request.getParameter("reqid")!=null)
                {
                    // sfid=request.getParameter("reqid").toString();r
                rs1= conobj.FetchData("SELECT * FROM `db_sec_tms`.`studentfeesdetail`  where StudentFeeId='"+request.getParameter("reqid").toString()+"' ");

                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                        sfid=row[0].toString();
                        stdid=row[1].toString();
                        total=row[2].toString();
                        paidamt=row[3].toString();
                        remainamt=row[4].toString();
                        date=row[5].toString();
                        paydetail=row[6].toString();
                        paymode=row[7].toString();
                        
                    
                    }
               }

        



}catch(Exception e)
               {}


        %>
        
     <script>
            init.push(function() {
                // Setup validation
                $("#jq-validation-form").validate({
                    ignore: '.ignore, .select2-input',
                    focusInvalid: false,
                    rules: {
                        
                        'txtPaidAmount': {
                            required: true
                        },
                        
                        'txtDateOfPayment': {
                            required: true
                            
                        },
                        'drpPaymentMode': {
                            required: true
                        },
                        'txtPaymentDetail': {
                            required: true
                        }
                    }
                   
                });
            });
      
        </script>
        
        <form action="../StudentFeesDetail" class="panel form-horizontal" id="jq-validation-form">
            <input type="hidden" name="StudentFeeId" value="<%=sfid%>" />

            <div class="panel-heading">
                <strong><span class="panel-title">Student Fee Detail</span></strong>
            </div>
            <div class="panel-body">

                <div class="row">
                    <div class="col-sm-4">
                       <%
                            if(request.getParameter("reqid").equals("1"))
                            {
                                rs1=conobj.FetchData("SELECT StudentName from studentmaster where StudentId='"+stdid+"'");
                                for(Object rowObject:rs1)
                                {
                                    Object[] row=(Object[]) rowObject;
                                    if(row[0]!=null)
                                        stdname=row[0].toString();
                                }
                       %>
                       <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Student Name</label>
                            <input type="text" name="txtTotalAmount" id="txtTotalAmount" class="form-control" value="<%=stdname%>" readonly>
                        </div>
                       
                        </div>
                         <%}else{%>
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Student Name</label>
                            <select id="drpStudentId" value="<%=stdid%>" name="drpStudentId" class="form-control" onchange="dirtxt30();">
                          <%
                          
GenFun genobj= new GenFun();
String builddrp= genobj.filldrp("select StudentId,StudentName from studentmaster", stdid);
out.print(builddrp);
out.flush();
                           %>
                            </select>
                        </div>
                    </div>

                      <%}%>
                            <!--                  <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Student Name</label>
                            <input type="text" name="txtStudentName" id="txtStudentName" class="form-control" value="<%=sfid%>">
                        </div>
                    </div>-->
                </div>
   <%
                            if(request.getParameter("reqid").equals("0"))
                            {
                                %>
               
                <script>
                        function dirtxt30()
                        {
                            xmlhttp = GetXmlHttpObject0();
                            
                            if (xmlhttp == null)
                            {
                                alert("Your browser does not support Ajax HTTP");
                                return;
                            }
                            //var emp = document.getElementById("emp_no").value;
                            var url = "";
                            var str1=document.getElementById("drpStudentId");
                            var str=str1.options[str1.selectedIndex].value;
                            //alert("Str:"+str)
                            url = "AJAXFeatchStudentFees.jsp";
                            url = url + "?reqid="+str;
                            //alert(url);
                            document.getElementById("totalamt").innerHTML = "Loading...";
                            
                            xmlhttp.onreadystatechange = dirOutput30;
                            xmlhttp.open("GET", url, true);
                            xmlhttp.send(null);
                        }

                        function dirOutput30()
                        {
                            if (xmlhttp.readyState == 4)
                            {
                                
                                 document.getElementById("totalamt").innerHTML = xmlhttp.responseText;
                            }
                        }

                        function GetXmlHttpObject0()
                        {
                            if (window.XMLHttpRequest)
                            {
                                return new XMLHttpRequest();
                            }

                            if (window.ActiveXObject)
                            {
                                return new ActiveXObject("Microsoft.XMLHTTP");
                            }
                            return null;
                        }
                        </script>
                             
                <div class="row" id="totalamt">
                   
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Total Amount</label>
                            <input type="text" name="txtTotalAmount" id="txtTotalAmount" class="form-control"  readonly>
                        </div>
                    </div>
                    <div class="col-sm-4">
                    <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Remaining Amount</label>
                            <input type="text" name="txtRemainingAmount" id="txtRemainingAmount" class="form-control" readonly>
                        </div>
                    </div>
                           
                         <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Paid Amount</label>
                            <input type="text" name="txtPaidAmount" id="txtPaidAmount" class="form-control" >
                        </div>
                    </div>
                    
                    </div>
                         <%  }
                            else{
                       %>
                       <div class="row">                         
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr" >
                            <label for="jq-validation-text" class="control-label">Total Amount</label>
                            <input type="text" name="txtTotalAmount" id="txtTotalAmount" class="form-control" value="<%=total%>"readonly>
                        </div>
                    </div>
                      <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Remaining Amount</label>
                            <input type="text" name="txtRemainingAmount" id="txtRemainingAmount" class="form-control" value="<%=remainamt%>" readonly>
                        </div>
                    </div>
                          <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Paid Amount</label>
                            <input type="text" name="txtPaidAmount" id="txtPaidAmount" class="form-control" value="<%=paidamt%>">
                        </div>
                    </div>
                         </div>
                       <%
                            }
                       %>
               

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label for="jq-validation-text" class="control-label">Date Of Payment</label>
                            <input type="text" name="txtDateOfPayment" id="txtDateOfPayment" class="form-control" value="<%=date%>" placeholder="YYYY-MM-DD">
                        </div>
                    </div>		

                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label">Payment Mode</label>
                            <select id="drpPaymentMode" name="drpPaymentMode" class="form-control" value="<%=paymode%>">
                                <option value="Cash">Cash</option>
                                <option value="Cheque">Cheque</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" for="jq-validation-text">Payment Detail</label>
                            <textarea class="form-control"
                                      id="txtPaymentDetail" name="txtPaymentDetail" cols="20" rows="2"><%=paydetail%></textarea>
                        </div>
                    </div>		

                </div>
            </div>

            <div class="panel-footer text-center">
                 <%
                try
                        {
                if(request.getParameter("reqid")!=null)
                    {
                      if(request.getParameter("reqid").toString().equals("0"))
                          {%>

                          <input id="btnSave" name="btnProceed" type="submit" class="btn btn-md btn-labeled btn-success" value="Save" />


                          <%
                          }
                      else
                          {
                          %>

                           <input id="btnUpdate" class="btn btn-md btn-labeled btn-info" name="btnProceed" type="submit" value="Update" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="btnDelete" class="btn btn-md btn-labeled btn-danger" name="btnProceed" type="submit" value="Delete" />				

                          <%

                          }


                    }
                else
                        {%>
                      <input id="btnSave" name="btnProceed" type="submit" class="btn btn-md btn-labeled btn-success" value="Save" />


                        <%
                        }
}
                catch(Exception ex)
                        {
                    ex.printStackTrace();
                    }
                %>
              
            </div>
        </form>
        <%@include file="Footer.jsp" %>
    </body>
</html>
