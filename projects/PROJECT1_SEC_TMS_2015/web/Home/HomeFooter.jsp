<%-- 
    Document   : HomeFooter
    Created on : Oct 7, 2014, 12:28:24 PM
    Author     : STS1
--%>
    <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<script type="text/javascript" src="assets1/plugins/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="assets1/plugins/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="assets1/plugins/bootstrap/js/bootstrap.min.js"></script> 
    <script type="text/javascript" src="assets1/plugins/bootstrap-hover-dropdown.min.js"></script> 
    <script type="text/javascript" src="assets1/plugins/back-to-top.js"></script>
    <script type="text/javascript" src="assets1/plugins/jquery-placeholder/jquery.placeholder.js"></script>
    <script type="text/javascript" src="assets1/plugins/pretty-photo/js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="assets1/plugins/flexslider/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="assets1/plugins/jflickrfeed/jflickrfeed.min.js"></script> 
    <script type="text/javascript" src="assets1/js/main.js"></script>            
</div>
 <footer class="footer">
        <div class="footer-content">
            <div class="container">
                <div class="row">
                <div class="footer-col col-md-9 col-sm-12 about">
                    <div class="footer-col-inner">
                        <h3>About</h3>
                        <ul>
                            <li><a href="about.html"><i class="fa fa-caret-right"></i>About us</a></li>
                            <li><a href="contact.jsp"><i class="fa fa-caret-right"></i>Contact us</a></li>
<!--                            <li><a href="privacy.html"><i class="fa fa-caret-right"></i>Privacy policy</a></li>
                            <li><a href="terms-and-conditions.html"><i class="fa fa-caret-right"></i>Terms & Conditions</a></li>-->
                        </ul>
                    </div><!--//footer-col-inner-->
                </div><!--//foooter-col-->
                
                <div class="footer-col col-md-3 col-sm-12 contact">
                    <div class="footer-col-inner">
                        <h3>Contact us</h3>
                        <div class="row">
                            <p class="adr clearfix col-md-12 col-sm-4">
                                <i class="fa fa-map-marker pull-left"></i>        
                                <span class="adr-group pull-left">       
                                    <span class="street-address"></span>Sahjanand Education, <br>
                                    <span class="region">Vallabhvidhya Nagar-388120,Anand,</span><br>
                                    <span class="postal-code">Gujarat,</span><br>
                                    <span class="country-name">India.</span>
                                </span>
                            </p>
                            <p class="tel col-md-12 col-sm-4"><i class="fa fa-phone"></i>084 60 421800</p>
                            <p class="email col-md-12 col-sm-4"><i class="fa fa-envelope"></i><a href="mailto:desaimehul94@gmail.com">desaimehul94@gmail.com</a></p>  
                        </div> 
                    </div><!--//footer-col-inner-->            
                </div><!--//foooter-col-->   
                </div>   
            </div>        
        </div><!--//footer-content-->
        <div class="bottom-bar">
            <div class="container">
                <div class="row">
                    <%
                                    Date now = new Date(); // java.util.Date, NOT java.sql.Date or java.sql.Timestamp!
                                    //String format1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ").format(now);
                                    //String format2 = new SimpleDateFormat("EEEE, d MMM yy").format(now);
                                    String year=new SimpleDateFormat("YYYY").format(now);
                                   // String format3 = new SimpleDateFormat("yyyyMMddHHmmss").format(now);
                                 %>

                    <small class="copyright col-md-12 col-sm-12 col-xs-12"><font size="2px"><Strong>&copy; </Strong>Copyright <%=year%> Sahjanand Education Center,V.V.Nagar.| Developed By <a target="_blank" href="www.google.com">B.V.M Students</a></small>
                   
                </div><!--//row-->
            </div><!--//container-->
        </div><!--//bottom-bar-->
    </footer><!--//footer-->
    
 
    <!-- Javascript -->          

