<%-- 
    Document   : Index
    Created on : Oct 7, 2014, 12:47:57 PM
    Author     : STS1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sahajanand Education Center</title>
    </head>
    <body>
        <%@include file="HomeHader.jsp" %>
        <div class="content container">
            <div id="promo-slider" class="slider flexslider">
                <ul class="slides">
                    <li>
                        <img src="assets1/images/slides/Mac School Wallpapers Speed Up Your Computer-618026.jpeg"  alt="" />
                        <p class="flex-caption">
                            <span class="main" >Join Sahjanand Education Online</span>
                            <br />
                            <span class="secondary clearfix" >Choose from over 10 online and offline courses</span>
                        </p>
                    </li>
                    <li>
                        <img src="assets1/images/slides/Back_to_School_shopping_High_definition_wallpaper.jpg"  alt="" />
                        <p class="flex-caption">
                            <span class="main" >Come to our Open Days</span>
                            <br />
                            <span class="secondary clearfix" ></span>
                        </p>
                    </li>
                    <li>
                        <img src="assets1/images/slides/Three-children-doing-math-equation.jpg"  alt="" />
                        <p class="flex-caption">
                            <span class="main" >Discover online courses</span>
                            <br />
                            <!--<span class="secondary clearfix" >Lorem ipsum dolor sit amet, consectetur adipiscing elit</span>-->
                        </p>
                    </li>
                    <li>
                        <img src="assets1/images/slides/school-children-small1-1500x643.png"  alt="" />
<!--                        <p class="flex-caption">
                            <span class="main" >Nam ultricies accumsan pellentesque</span>
                            <br />
                            <span class="secondary clearfix" >In justo orci, ornare vitae nulla sed, suscipit suscipit augue</span>
                        </p>-->
                    </li>
                </ul><!--//slides-->
            </div><!--//flexslider-->
           <section class="promo box box-dark">        
                <div class="col-md-9">
                <h1 class="section-heading">Why Sahajanand Education Center?</h1>
                    <p>We provide the best coaching for various courses for better and bright future of yours.</p>   
                </div>  
                <div class="col-md-3">
                    <a class="btn btn-cta" href="Registration.jsp"><i class="fa fa-play-circle"></i>Apply Now</a>  
                </div>
            </section><!--//promo-->
<!--            <section class="news">
                <h1 class="section-heading text-highlight"><span class="line">Latest News</span></h1>     
                <div class="carousel-controls">
                    <a class="prev" href="#news-carousel" data-slide="prev"><i class="fa fa-caret-left"></i></a>
                    <a class="next" href="#news-carousel" data-slide="next"><i class="fa fa-caret-right"></i></a>
                </div>//carousel-controls 
                <div class="section-content clearfix">
                    <div id="news-carousel" class="news-carousel carousel slide">
                        <div class="carousel-inner">
                            <div class="item active"> 
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Phasellus scelerisque metus</a></h2>
                                    <img class="thumb" src="assets1/images/news/news-thumb-1.jpg"  alt="" />
                                    <p>Suspendisse purus felis, porttitor quis sollicitudin sit amet, elementum et tortor. Praesent lacinia magna in malesuada vestibulum. Pellentesque urna libero.</p>
                                    <a class="read-more" href="news-single.html">Read more<i class="fa fa-chevron-right"></i></a>                
                                </div>//news-item
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Morbi at vestibulum turpis</a></h2>
                                    <p>Nam feugiat erat vel neque mollis, non vulputate erat aliquet. Maecenas ac leo porttitor, semper risus condimentum, cursus elit. Vivamus vitae libero tellus.</p>
                                    <a class="read-more" href="news-single.html">Read more<i class="fa fa-chevron-right"></i></a>
                                    <img class="thumb" src="assets1/images/news/news-thumb-2.jpg"  alt="" />
                                </div>//news-item
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Aliquam id iaculis urna</a></h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam bibendum mauris eget sapien consectetur pellentesque. Proin elementum tristique euismod. </p>
                                    <a class="read-more" href="news-single.html">Read more<i class="fa fa-chevron-right"></i></a>
                                    <img class="thumb" src="assets1/images/news/news-thumb-3.jpg"  alt="" />
                                </div>//news-item
                            </div>//item
                            <div class="item"> 
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Phasellus scelerisque metus</a></h2>
                                    <img class="thumb" src="assets1/images/news/news-thumb-4.jpg"  alt="" />
                                    <p>Suspendisse purus felis, porttitor quis sollicitudin sit amet, elementum et tortor. Praesent lacinia magna in malesuada vestibulum. Pellentesque urna libero.</p>
                                    <a class="read-more" href="news-single.html">Read more<i class="fa fa-chevron-right"></i></a>                
                                </div>//news-item
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Morbi at vestibulum turpis</a></h2>
                                    <p>Nam feugiat erat vel neque mollis, non vulputate erat aliquet. Maecenas ac leo porttitor, semper risus condimentum, cursus elit. Vivamus vitae libero tellus.</p>
                                    <a class="read-more" href="news-single.html">Read more<i class="fa fa-chevron-right"></i></a>
                                    <img class="thumb" src="assets1/images/news/news-thumb-5.jpg"  alt="" />
                                </div>//news-item
                                <div class="col-md-4 news-item">
                                    <h2 class="title"><a href="news-single.html">Aliquam id iaculis urna</a></h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam bibendum mauris eget sapien consectetur pellentesque. Proin elementum tristique euismod. </p>
                                    <a class="read-more" href="news-single.html">Read more<i class="fa fa-chevron-right"></i></a>
                                    <img class="thumb" src="assets1/images/news/news-thumb-6.jpg"  alt="" />
                                </div>//news-item
                            </div>//item
                        </div>//carousel-inner
                    </div>//news-carousel
                </div>//section-content     
            </section>//news-->
             <div class="row cols-wrapper">
                <div class="col-md-4">
                    <section class="events">
                        <h1 class="section-heading text-highlight"><span class="line">Events</span></h1>
                        <div class="section-content">
                            <div class="event-item">
                                <p class="date-label">
                                    <span class="month">NOV</span>
                                    <span class="date-number">20</span>
                                </p>
                                <div class="details">
                                    <h2 class="title">UP-Coming Exams</h2>
                                    <p class="time"><i class="fa fa-clock-o"></i>09:45am - 04:00pm</p>
                                    <p class="location"><i class="fa fa-map-marker"></i>Class</p>                            
                                </div><!--//details-->
                            </div><!--event-item-->  
                            <div class="event-item">
                                <p class="date-label">
                                    <span class="month">OCT</span>
                                    <span class="date-number">10</span>
                                </p>
                                <div class="details">
                                    <h2 class="title">Open Day</h2>
                                    <p class="time"><i class="fa fa-clock-o"></i>10:00am - 05:00pm</p>
                                    <p class="location"><i class="fa fa-map-marker"></i>library</p>                            
                                </div><!--//details-->
                            </div><!--event-item-->
                            <div class="event-item">
                                <p class="date-label">
                                    <span class="month">SEP</span>
                                    <span class="date-number">27</span>
                                </p>
                                <div class="details">
                                    <h2 class="title">Science-fair</h2>
                                    <p class="time"><i class="fa fa-clock-o"></i>10:00am - 6:00pm</p>
                                    <p class="location"><i class="fa fa-map-marker"></i>College Campus</p>                            
                                </div><!--//details-->
                            </div><!--event-item-->
                            <div class="event-item">
                                <p class="date-label">
                                    <span class="month">AUG</span>
                                    <span class="date-number">17</span>
                                </p>
                                <div class="details">
                                    <h2 class="title">Science Seminar</h2>
                                    <p class="time"><i class="fa fa-clock-o"></i>10:00pm On-words</p>
                                    <p class="location"><i class="fa fa-map-marker"></i>Library</p>                            
                                </div><!--//details-->
                            </div><!--event-item-->
                            <a class="read-more" href="Event.jsp">All events<i class="fa fa-chevron-right"></i></a>
                        </div><!--//section-content-->
                    </section><!--//events-->
                </div><!--//col-md-3-->
                <div class="col-md-8">
<!--                   <section class="course-finder">
                        <h1 class="section-heading text-highlight"><span class="line">Course Finder</span></h1>
                        <div class="section-content">
                            <form class="course-finder-form" action="Index1.jsp" method="get">
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 subject">
                                        <select class="form-control subject">
                                            <option>Biological Sciences</option>
                                            <option>Mathematics</option>
                                            <option>Physics</option>
                                            <option>Chemistry</option>
                                        </select>
                                    </div> 
                                    <div class="col-md-7 col-sm-7 keywords">
                                        <input class="form-control pull-left" type="text" placeholder="Search keywords" />
                                        <button type="submit" class="btn btn-theme"><i class="fa fa-search"></i></button>
                                    </div> 
                                </div>                     
                            </form>//course-finder-form
                            <a class="read-more" href="courses.html">View all our courses<i class="fa fa-chevron-right"></i></a>
                        </div>//section-content
                    </section>//course-finder-->
                   <section class="video">
                        <h1 class="section-heading text-highlight"><span class="line">Video you may like</span></h1>
                        <div class="carousel-controls">
                            <a class="prev" href="#videos-carousel" data-slide="prev"><i class="fa fa-caret-left"></i></a>
                            <a class="next" href="#videos-carousel" data-slide="next"><i class="fa fa-caret-right"></i></a>
                        </div><!--//carousel-controls-->
                        <div class="section-content">    
                           <div id="videos-carousel" class="videos-carousel carousel slide">
                                <div class="carousel-inner">
                                    <div class="item active">            
                                       <iframe width="560" height="315" src="//www.youtube.com/embed/JC82Il2cjqA" frameborder="1" allowfullscreen></iframe>
                                    </div><!--//item-->
                                    <div class="item">            
                                        <iframe width="560" height="315" src="//www.youtube.com/embed/Yexc19j3TjE" frameborder="0" allowfullscreen></iframe>
                                    </div><!--//item-->
                                    <div class="item">            
                                        <iframe width="560" height="315" src="//www.youtube.com/embed/GRp92HXDlgY" frameborder="0" allowfullscreen></iframe>
                                    </div><!--//item-->
                                </div><!--//carousel-inner-->
                           </div><!--//videos-carousel-->                            
<!--                            <p class="description">Aenean feugiat a diam tempus sodales. Quisque lorem nulla, ultrices imperdiet malesuada at, suscipit vel lorem. Nulla dignissim nisi ac aliquet semper.</p>-->
                        </div><!--//section-content-->
                    </section><!--//video-->
                </div>
<!--                <div class="col-md-3">
                    <section class="links">
                        <h1 class="section-heading text-highlight"><span class="line">Quick Links</span></h1>
                        <div class="section-content">
                            <p><a href="#"><i class="fa fa-caret-right"></i>E-learning Portal</a></p>
                            <p><a href="#"><i class="fa fa-caret-right"></i>Gallery</a></p>
                            <p><a href="#"><i class="fa fa-caret-right"></i>Job Vacancies</a></p>
                            <p><a href="Event.jsp"><i class="fa fa-caret-right"></i>Contact</a></p>
                        </div>//section-content
                    </section>//links
                    <section class="testimonials">
                        <h1 class="section-heading text-highlight"><span class="line"> Testimonials</span></h1>
                        <div class="carousel-controls">
                            <a class="prev" href="#testimonials-carousel" data-slide="prev"><i class="fa fa-caret-left"></i></a>
                            <a class="next" href="#testimonials-carousel" data-slide="next"><i class="fa fa-caret-right"></i></a>
                        </div>//carousel-controls
                        <div class="section-content">
                            <div id="testimonials-carousel" class="testimonials-carousel carousel slide">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <blockquote class="quote">                                  
                                            <p><i class="fa fa-quote-left"></i>I’m very happy interdum eget ipsum. Nunc pulvinar ut nulla eget sollicitudin. In hac habitasse platea dictumst. Integer mattis varius ipsum, posuere posuere est porta vel. Integer metus ligula, blandit ut fermentum a, rhoncus in ligula. Duis luctus.</p>
                                        </blockquote>                
                                        <div class="row">
                                            <p class="people col-md-8 col-sm-3 col-xs-8"><span class="name">Marissa Spencer</span><br /><span class="title">Curabitur commodo</span></p>
                                            <img class="profile col-md-4 pull-right" src="assets1/images/testimonials/profile-1.png"  alt="" />
                                        </div>                               
                                    </div>//item
                                    <div class="item">
                                        <blockquote class="quote">
                                            <p><i class="fa fa-quote-left"></i>
                                            I'm very pleased commodo gravida ultrices. Sed massa leo, aliquet non velit eu, volutpat vulputate odio. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse porttitor metus eros, ut fringilla nulla auctor a.</p>
                                        </blockquote>
                                        <div class="row">
                                            <p class="people col-md-8 col-sm-3 col-xs-8"><span class="name">Marco Antonio</span><br /><span class="title"> Gravida ultrices</span></p>
                                            <img class="profile col-md-4 pull-right" src="assets1/images/testimonials/profile-2.png"  alt="" />
                                        </div>                 
                                    </div>//item
                                    <div class="item">
                                        <blockquote class="quote">
                                            <p><i class="fa fa-quote-left"></i>
                                            I'm delighted commodo gravida ultrices. Sed massa leo, aliquet non velit eu, volutpat vulputate odio. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse porttitor metus eros, ut fringilla nulla auctor a.</p>
                                        </blockquote>
                                        <div class="row">
                                            <p class="people col-md-8 col-sm-3 col-xs-8"><span class="name">Kate White</span><br /><span class="title"> Gravida ultrices</span></p>
                                            <img class="profile col-md-4 pull-right" src="assets1/images/testimonials/profile-3.png"  alt="" />
                                        </div>                 
                                    </div>//item
                                    
                                </div>//carousel-inner
                            </div>//testimonials-carousel
                        </div>//section-content
                    </section>//testimonials
                </div>//col-md-3-->
            </div><!--//cols-wrapper-->
        </div>
        <%@include file="HomeFooter.jsp" %>
    </body>
</html>
