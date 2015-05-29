<%-- 
    Document   : GeneratePaper
    Created on : 16 Mar, 2015, 1:16:57 AM
    Author     : nikil
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
	<title>Question Paper:Sahajanand Education center</title>
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
        <div class="dontprint"><a class="noPrint" href="DisplayTest.jsp"><strong>Back</strong></a></div>
        <div>
            <h2><strong><center>Sahjanand Education Center</center></strong></h2>
            <%
                DBCon conobj =new DBCon();
                String totalmarks="";
                    String subjectname="";
                    String passingmarks="" ;
                String testid=(String)request.getSession().getAttribute("TestId");
                System.out.println("\ntestid:"+testid);
                try{
                    
                    if(testid!=null)
                    {
                    List<Object[]> rs1=null;
                    rs1= conobj.FetchData("SELECT subjectmaster.SubjectName,testmaster.TotalMarks,testmaster.PassingMarks FROM `db_sec_tms`.`subjectmaster` ,`db_sec_tms`.`testmaster` where subjectmaster.SubjectId=testmaster.SubjectIdFK AND testmaster.TestId='"+testid+"' AND DisplayStatus='Yes'; ;");
                    for(Object rowObject:rs1)
                    {
                        Object[] row=(Object[]) rowObject;
                        subjectname=row[0].toString();
                        totalmarks=row[1].toString();
                        passingmarks=row[2].toString();
                    }
                    }
                }catch(Exception ex)
                {
                    
                }
            %>
            
            <h4 align="left"><strong>Subject Name:<%= subjectname%></strong></h4>
            <h4 align="right"><strong>Total Marks:<%= totalmarks%></strong></h4>
            <h4 align="right"><strong>Passing Marks:<%= passingmarks%></strong></h4>
        </div>
<%
    String str=request.getParameter("val");
%>
<%= str%>
</body>

<!-- Mirrored from infinite-woodland-5276.herokuapp.com/pages-invoice-print.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 29 Aug 2014 09:09:23 GMT -->
</html>