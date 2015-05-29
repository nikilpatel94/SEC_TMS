<%-- 
    Document   : Event
    Created on : Oct 10, 2014, 7:35:52 AM
    Author     : guest1
--%>
<%@page import="java.text.*" %>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sahajanand Education Center</title>
    </head>
    
    <%
        DBCon conobj= new DBCon();
//        GenFun genobj=new GenFun();
        String eid="";
        String ename="";
        String esub="";
        String estart="";
        String eend="";
        String eloc="";
        String eexedate="";
        String efac="";
        String estatus="";
        Date d;
        try
        {
                List<Object[]> rs1=null;
                rs1= conobj.FetchData("SELECT * FROM eventmaster where DisplayStatus='yes'");
               %>
                
    <body>
        <%@include file="HomeHader.jsp" %>
       <div class="content container">
            <div class="page-wrapper">
                <header class="page-heading clearfix">
                    <h1 class="heading-title pull-left">Events</h1>
                </header> 
                <div class="page-content">
                    <div class="row page-row">
                        <div class="events-wrapper col-md-8 col-sm-7">   
                               
                                   <%
                                   if(rs1!=null)
                                   {
                                    
                                  
                                    
                                        for(Object rowObject:rs1)
                                        {  
                                            Object[] row=(Object[]) rowObject;
                                            if(row[0]!=null)
                                                eid=row[0].toString();
                                            ename=row[1].toString();
                                            esub=row[2].toString();
                                            estart=row[3].toString();
                                            eend=row[4].toString();
                                            eloc=row[5].toString();
                                            eexedate=row[6].toString();
                                            estatus=row[7].toString();
                                    //out.print(eexedate+"\n");
                                    d= new SimpleDateFormat("yyyy-mm-dd").parse(eexedate);
                                   //out.print("\nD is:"+  d.toString());
                                   //String format1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ").format(now);
                                    //String format2 = new SimpleDateFormat("EEEE, d MMM yy").format(now);
                                    String currdate=new SimpleDateFormat("d ").format(d);
                                    //out.print(currdate);
                                    String currmon=new SimpleDateFormat("MMM").format(d);   
                                    //out.print(currmon);
                                   // String format3 = new SimpleDateFormat("yyyyMMddHHmmss").format(now);
                                 %>
                            <article lass="events-item page-row has-divider clearfix">
                                <div class="date-label-wrapper col-md-1 col-sm-2">
                                    <p class="date-label">
                                        <span class="month"><%=currmon%></span>
                                        <span class="date-number"><%=currdate%></span>
                                    </p>
                                </div><!--//date-label-wrapper-->
                                <div class="details col-md-11 col-sm-10">
                                    <h3 class="title"><strong><%=ename%></strong></h3>
                                    <p class="meta"><span class="time"><i class="fa fa-clock-o"></i><%=estart%> - <%=eend%></span><span class="Class">&nbsp;<i class="fa fa-map-marker"></i><b>&nbsp;<%=eloc%></b></span></p>  
                                        <p class="desc"><%= esub%><strong></strong> </p>                       
                                </div><!--//details-->
                            </article><!--//events-item-->
                            
                            <%

                                        }  %>  
                                        <br><br>
                                   <%}
        }catch(Exception ex)
        {
            out.print("Soemthing is wrong!   "+ex.toString());
        }
        %>
<!--                            <ul class="pagination">
                                <li class="disabled"><a href="#">&laquo;</a></li>
                                <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">&raquo;</a></li>
                            </ul>-->
                            
                        </div><!--//events-wrapper-->
                        <aside class="page-sidebar  col-md-3 col-md-offset-1 col-sm-4 col-sm-offset-1">                    
                            <section class="widget has-divider">
                                <h3 class="title">Video tour</h3>
                                <iframe class="iframe" src="http://www.youtube.com/embed/Ks-_Mh1QhMc?rel=0&amp;wmode=transparent" frameborder="0" allowfullscreen=""=""></iframe>
                                <br>
                                <iframe class="iframe" src="http://www.youtube.com/embed/Ks-_Mh1QhMc?rel=0&amp;wmode=transparent" frameborder="0" allowfullscreen=""=""></iframe>
                            </section>
                            <!--//widget-->
<!--                            <section class="widget has-divider">
                                <h3 class="title">Latest News</h3>
                                <article class="news-item row">       
                                    <figure class="thumb col-md-2">
                                        <img src="assets/images/news/news-thumb-1.jpg" alt="" >
                                    </figure>
                                    <div class="details col-md-10">
                                        <h4 class="title"><a href="news-single.html">Morbi bibendum consectetuer vulputate sollicitudin</a></h4>
                                    </div>
                                </article>//news-item
                                <article class="news-item row">       
                                    <figure class="thumb col-md-2">
                                        <img src="assets/images/news/news-thumb-2.jpg" alt="" >
                                    </figure>
                                    <div class="details col-md-10">
                                        <h4 class="title"><a href="news-single.html">Sed tincidunt urna eget turpis pretium hendrerit</a></h4>
                                    </div>
                                </article>//news-item
                                <article class="news-item row">       
                                    <figure class="thumb col-md-2">
                                        <img src="assets/images/news/news-thumb-3.jpg" alt="" >
                                    </figure>
                                    <div class="details col-md-10">
                                        <h4 class="title"><a href="news-single.html">Duis scelerisque erat iaculis</a></h4>
                                    </div>
                                </article>//news-item
                                <article class="news-item row">       
                                    <figure class="thumb col-md-2">
                                        <img src="assets/images/news/news-thumb-4.jpg" alt="" >
                                    </figure>
                                    <div class="details col-md-10">
                                        <h4 class="title"><a href="news-single.html">Duis scelerisque erat iaculis</a></h4>
                                    </div>
                                </article>//news-item
                            </section>//widget-->
                        </aside>
                    </div><!--//page-row-->
                </div><!--//page-content-->
            </div><!--//page--> 
        </div><!--//content-->
        <%@include file="HomeFooter.jsp" %>
    </body>
</html>
