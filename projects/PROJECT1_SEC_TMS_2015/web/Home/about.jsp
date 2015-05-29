<%-- 
    Document   : about
    Created on : Mar 28, 2015, 11:54:57 AM
    Author     : akash
--%>

<%@page import="java.text.*" %>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
    </head>
    <body>
      <%@include file="HomeHader.jsp" %>
       <div class="content container">
            <div class="page-wrapper">
                <header class="page-heading clearfix">
                    <h1 class="heading-title pull-left">About Us</h1>
                    <div class="breadcrumbs pull-right">
                        <ul class="breadcrumbs-list">
                            <li class="breadcrumbs-label">You are here:</li>
                            <li><a href="Index1.jsp">Home</a><i class="fa fa-angle-right"></i></li>
                            <li class="current">About</li>
                        </ul>
                    </div><!--//breadcrumbs-->
                </header> 
                <div class="page-content">
                    <div class="row page-row">
                        <article class="welcome col-md-8 col-sm-7">                         
                            <h3 class="title">Welcome to Sahajanand Education Center</h3>
                            <p><img class="img-responsive" src="assets/images/750x300-about.jpg" alt="" /></p>
                            <p>We are vallabh-vidhya nagar based tuition class. We have best teachers who are very experienced and have very deep knowledge of their subjects. They can teach and guide students and help them achieving their desired result   </p><br>
                            <p>Following are the features provided by our tuition class.</p>
                            <ul class="custom-list-style">
                                <li><i class="fa fa-check"></i>Live Lectures</li>
                                <li><i class="fa fa-check"></i>Discussion Forum</li>
                                <li><i class="fa fa-check"></i>E-Material availability</li>
                                <li><i class="fa fa-check"></i>Online Exam</li>
                            </ul>
                            
<!--                            <blockquote class="custom-quote">
                                <p><i class="fa fa-quote-left"></i>Viverra magna pellentesque in magnis gravida sit augue felis vehicula vestibulum semper penatibus justo ornare semper Gravida felis platea arcu mus non. Montes at posuere. Natoque.</p>
                                <p class="people"><span class="name">Adam Windsor</span><br><span class="title">Principle, College Green Online</span></p>
                            </blockquote>-->
<!--                            <p>
                            Morbi semper. Hac euismod bibendum odio sed sociosqu primis magna suscipit facilisi litora viverra eget nibh praesent vehicula luctus Integer nostra ac duis metus orci.
    
    Vehicula praesent dolor quam montes fames risus interdum. Tortor lacinia sem aenean sit tellus montes velit ultricies leo eget felis mollis quam. Non odio leo tempus condimentum. Neque. Potenti ornare sapien diam hymenaeos conubia ac. Euismod, venenatis Vulputate sodales morbi aliquet sollicitudin.    
                            </p>-->
                        </article><!--//page-content-->
                        <aside class="page-sidebar  col-md-3 col-md-offset-1 col-sm-4 col-sm-offset-1">                    <!--
                            <section class="widget has-divider">
                                <h3 class="title">Job Vacancies</h3>
                                <ul class="job-list custom-list-style">
                                    <li><i class="fa fa-caret-right"></i><a href="#">Learning Support Assistant</a></li>
                                    <li><i class="fa fa-caret-right"></i><a href="#">Lecturer - Business Studies</a></li>
                                    <li><i class="fa fa-caret-right"></i><a href="#">Lecturer - Computer Science</a></li>
                                    <li><i class="fa fa-caret-right"></i><a href="#">Administrative Assistant</a></li>
                                </ul>
                                <a class="btn btn-theme" href="jobs.html">Find out more</a>
                            </section>//widget 
-->                            <section class="widget has-divider">
                                <h3 class="title">Video tour</h3>
                                <iframe class="iframe" src="http://www.youtube.com/embed/Ks-_Mh1QhMc?rel=0&amp;wmode=transparent" frameborder="0" allowfullscreen=""></iframe>
                            </section>

                        </aside>
                    </div><!--//page-row-->
                </div><!--//page-content-->
            </div><!--//page--> 
        </div><!--//content-->
    <!--//wrapper-->
    
    <!-- ******FOOTER****** --> 
      <%@include file="HomeFooter.jsp" %>
    </body>
</html>
