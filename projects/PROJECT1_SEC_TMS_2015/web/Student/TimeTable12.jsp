<%-- 
    Document   : Time Table12
    Created on : Apr 2, 2015, 2:09:47 PM
    Author     : akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.*" %>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time Table</title>
    </head>
    <%@include file="Header.jsp" %>
    <body>
        <div class="col-md-8">
            <section>
                <div class="panel panel-primary">
                    <div class="panel-heading"><i class="fa fa-file-text"></i>  Time Table</div>
                    <table class="table table-striped">
                     
                        <tr>
                            <td></td>
                                                    
                            <th>Physics</th>
                            
                            <th>Chemistry</th>
                            
                            <th>Maths</th>
                            
                            <th>Biology</th>
                            
                            <th>English</th>
                            
                        </tr>
                        <tr>
                            <th>Monday</th>
                                <td>3:00 to 4:00</td>
                                <td>4:30 to 5:30</td>
                                <td>6:00 to 7:00</td>
                                <td>7:30 to 8:30</td>
                                <td>-----------------</td>
                        </tr>
                        <tr>
                            <th>Tuesday</th>
                                <td>3:00 to 4:00</td>
                                <td>4:30 to 5:30</td>
                                <td>6:00 to 7:00</td>
                                <td>7:30 to 8:30</td>
                                <td>2:00 to 3:00</td>
                        </tr>
                        <tr>
                            <th>Wednesday</th>
                                <td>3:00 to 4:00</td>
                                <td>4:30 to 5:30</td>
                                <td>6:00 to 7:00</td>
                                <td>7:30 to 8:30</td>
                                <td>-----Test-----</td>
                        </tr>
                        <tr>
                            <th>Thursday</th>
                                <td>-----Test-----</td>
                                <td>4:30 to 5:30</td>
                                <td>6:00 to 7:00</td>
                                <td>7:30 to 8:30</td>
                                <td>2:00 to 3:00</td>
                        </tr>
                        <tr>
                            <th>Friday</th>
                                <td>3:00 to 4:00</td>
                                <td>-----Test-----</td>
                                <td>6:00 to 7:00</td>
                                <td>7:30 to 8:30</td>
                                <td>2:00 to 3:00</td>
                        </tr>
                        <tr>
                            <th>Saturday</th>
                                <td>3:00 to 4:00</td>
                                <td>4:30 to 5:30</td>
                                <td>-----Test-----</td>
                                <td>7:30 to 8:30</td>
                                <td>-----------------</td>
                        </tr>
                        <tr>
                            <th>Sunday</th>
                                <td>3:00 to 4:00</td>
                                <td>4:30 to 5:30</td>
                                <td>6:00 to 7:00</td>
                                <td>-----Test-----</td>
                                <td>-----------------</td>
                        </tr>
                    </table>
                </div>
            </section>
        </div>
       <%@include file="Footer.jsp" %>
    </body>
</html>
