<%-- 
    Document   : CreateInvoice
    Created on : Jan 12, 2015, 12:20:37 PM
    Author     : akash
--%>

<%@page import="com.tms.GenFun"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="com.tms.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]>         <html class="ie8"> <![endif]-->
<!--[if IE 9]>         <html class="ie9 gt-ie8"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="gt-ie8 gt-ie9 not-ie"> <!--<![endif]-->

<!-- Mirrored from infinite-woodland-5276.herokuapp.com/pages-invoice-print.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Aug 2014 09:09:23 GMT -->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Invoice Page: Sahajanand Education center</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

	<!-- Open Sans font from Google CDN -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&amp;subset=latin" rel="stylesheet" type="text/css">

	<!-- Pixel Admin's stylesheets -->
	<link href="assets/stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/pixel-admin.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/pages.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/rtl.min.css" rel="stylesheet" type="text/css">
      <style type="text/css" media="print">
        .dontprint
        { display: none; }
        a:link:after, a:visited:after 
        {
            content: "";
        }

    </style>
	<!--[if lt IE 9]>
		<script src="assets/javascripts/ie.min.js"></script>
	<![endif]-->

</head>


<body class="page-invoice page-invoice-print">
	<script>
		window.onload = function () {
			window.print();
		};
	</script>
        <div class="dontprint"><a class="noPrint" href="InvoicePage.jsp"><strong>Back</strong></a></div>
         <%              
                DBCon conobj =new DBCon();
                String stid="";
                String stfid="";
                String stname="";
                String stadd="";
                String stcno="";
                String stpcon="";
                String stschool="";
                String ststd="";
                String sttype="";
                String subname="";
                String subfee="";
                String std="";
                String totalamt="";
                
                if(request.getParameter("reqid")!=null)
                {
                List<Object[]> rs1=null;
                stid=request.getParameter("reqid").toString();
                rs1= conobj.FetchData("SELECT studentfeesdetail.StudentFeeId,StudentName,StudentAddress,StudentContactNo,StudentParentContactNo,StudentSchool,Std,StudentType FROM `db_sec_tms`.`studentmaster`,`db_sec_tms`.`studentfeesdetail` where studentmaster.StudentId='"+stid+"' And studentfeesdetail.StudentIdFK='"+stid+"'");
           
             
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                    {
                    stfid=row[0].toString();
                    stname=row[1].toString();
                    stadd=row[2].toString();
                    stcno=row[3].toString();
                    stpcon=row[4].toString();
                    stschool=row[5].toString();
                    ststd=row[6].toString();
                    sttype=row[7].toString();    
                    }
                }
               
               }
        
        
        
        %>
	<div class="invoice">
		<div class="invoice-header">
			<h3>
				<div>
					<small><strong>SEC</strong> Admin</small><br>
					INVOICE #<%=stfid%>
				</div>
			</h3>
			<address>
                            <strong>Sahajanand Education Center</strong><br>
				SAHAJANAND COMPLEX, NANA BAZAR, V.V NAGAR-388120<br>
				 Anand,Gujarat,India.
			</address>
			<div class="invoice-date">
				<small><strong>Date</strong></small><br>
				<%=new Date()%>
			</div>
		</div> <!-- / .invoice-header -->
		<div class="invoice-info">
			<div class="invoice-recipient">
				<strong><%=stname%></strong><br>
                                <%=stadd%>
			</div> <!-- / .invoice-recipient -->
                        <%
                      
                        List<Object[]> rs1=null;
                        rs1= conobj.FetchData("SELECT studentfeesdetail.StudentFeeId,StudentName,StudentAddress,StudentContactNo,StudentParentContactNo,StudentSchool,Std,StudentType,studentfeesdetail.TotalAmount FROM `db_sec_tms`.`studentmaster`,`db_sec_tms`.`studentfeesdetail` where studentmaster.StudentId='"+stid+"' And studentfeesdetail.StudentIdFK='"+stid+"'");
           
             
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                    {
                    stfid=row[0].toString();
                    stname=row[1].toString();
                    stadd=row[2].toString();
                    stcno=row[3].toString();
                    stpcon=row[4].toString();
                    stschool=row[5].toString();
                    ststd=row[6].toString();
                    sttype=row[7].toString();    
                    totalamt=row[8].toString();    
                    }
                }
                
                 GenFun genobj= new GenFun();
                String buildtable=genobj.filltbl("Select StudentMaster.Std,invoice.SubjectName,invoice.SubjectFees from invoice, StudentMaster WHERE StudentIdFK='"+stid+"' AND studentmaster.StudentId='"+stid+"';",4,"");
        %>
                                
                        
			<div class="invoice-total">
				<span></span>
				TOTAL: &#8377;<%=totalamt%>
			</div> <!-- / .invoice-total -->
		</div> <!-- / .invoice-info -->
		<hr>
		<div class="invoice-table">
			<table>
				<thead>
					<tr>
						<th>
							Standard
						</th>
						<th>
							Subjects
						</th>
						<th>
                                                     Tuition Fees    
						</th>
						
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
		</div> <!-- / .invoice-table -->
	</div> <!-- / .invoice -->
<strong> &copy; Sahajanand Education Center </strong><br> 
</body>

<!-- Mirrored from infinite-woodland-5276.herokuapp.com/pages-invoice-print.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Aug 2014 09:09:23 GMT -->
</html>