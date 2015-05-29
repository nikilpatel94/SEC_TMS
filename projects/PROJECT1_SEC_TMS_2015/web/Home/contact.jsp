<%-- 
    Document   : RequestpAGE
    Created on : Oct 7, 2014, 1:17:09 PM
    Author     : STS1
--%>
<%@page  import="java.util.List" %>
<%@page  import="com.tms.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <style type="text/css">
            html {height:100%}
            body {height:100%;margin:0;padding:0}
            #googleMap {height:100%}
        </style>
    </head>
    <body>
        <%@include file="HomeHader.jsp" %>

        <script language="javascript" type="text/javascript">
               function validate()
     {
     if(document.getElementById("txtRequestName").value=="")
     {
         alert("Please Enter Your Name");
         document.getElementById("txtRequestName").focus();
         return false;
     }
     if(!(isNaN(document.validation.txtRequestName.value)))
     {
         alert("Name has character only!");
         return false;
     }
     if(document.getElementById("txtRequestContactNo").value=="")
     {
         alert("Please Enter Your Mobile Number");
         document.getElementById("txtRequestContactNo").focus();
         return false;
     }
     if((isNaN(document.validation.txtRequestContactNo.value)))
     {
         alert("Mobile has numeric only!");
         return false;
     }
     var emailPat=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
     var emailid=document.getElementById("txtRequestEmail").value;
     var matchArray = emailid.match(emailPat);
     if (matchArray == null)
     {
         alert("Your email address is wrong. Please try again.");
         document.getElementById("txtRequestEmail").focus();
         return false;
     }
     if(document.getElementById("txtRequestFor").value=="")
     {
         alert("Please Enter Request For");
         document.getElementById("txtRequestFor").focus();
         return false;
     }
      if(document.getElementById("txtRequestDescription").value=="")
     {
         alert("Please Enter Request Description");
         document.getElementById("txtRequestDescription").focus();
         return false;
     }
//     if(document.getElementById("text_pass").value=="")
//     {
//         alert("Please Enter Your Password");
//         document.getElementById("text_pass").focus();
//         return false;
//     }
//     if(document.getElementById("text_repass").value=="")
//     {
//         alert("Please ReEnter Your Password");
//         document.getElementById("text_repass").focus();
//         return false;
//     }
//     if(document.getElementById("text_repass").value!="")
//     {
//           if(document.getElementById("text_repass").value != document.getElementById("text_pass").value)
//           {
//                alert("Confirm Password doesnot match!");
//                document.getElementById("text_repass").focus();
//                return false;
//           }
//     }
     return true;
 }
 </script>
         
        
        <div class="content container">
            <div class="page-wrapper">
                <header class="page-heading clearfix">
                    <h1 class="heading-title pull-left">Contact</h1>
                    <div class="breadcrumbs pull-right">
                        <ul class="breadcrumbs-list">
                            <li class="breadcrumbs-label">You are here:</li>
                            <li><a href="index-2.html">Home</a><i class="fa fa-angle-right"></i></li>
                            <li class="current">Contact</li>
                        </ul>
                    </div><!--//breadcrumbs-->
                </header> 
                <div class="page-content">
                    <div class="row">
                        <article class="contact-form col-md-8 col-sm-7  page-row">                            
                            <h3 class="title">Get in touch</h3>
                            <p>We’d love to hear from you.</p>
                            
                            
                          <form  action="../Contact" name="validation" method="post" onsubmit="return validate();">
                                  
                                <div class="form-group no-margin-hr">
                                        <label  class="control-label">Name *</label>
                            <input type="text" name="txtRequestName" id="txtRequestName" class="form-control">
                                </div><!--//form-group-->
                                
                                   <div  class="form-group no-margin-hr">
                                     <label class="control-label">Contact No. *</label>
                            <input type="text" name="txtRequestContactNo" id="txtRequestContactNo" class="form-control">
                                </div><!--//form-group-->
                                
                                   <div class="form-group no-margin-hr">
                                       <label class="control-label">Email Id *</label>
                            <input type="text" name="txtRequestEmail"   id="txtRequestEmail" class="form-control">
                                </div><!--//form-group-->
                                
                                   <div  class="form-group no-margin-hr">
                                    <label class="control-label">Request For *</label>
                            <input type="text" name="txtRequestFor" id="txtRequestFor" class="form-control">  
                                </div><!--//form-group-->
                                
                                
                                   <div class="form-group no-margin-hr">
                                <label class="control-label">Request Description</label>
                            <textarea class="form-control"
                                      id="txtRequestDescription"  name="txtRequestDescription" cols="20" rows="3"></textarea>
                                </div>   
                                <button name="btnProceed" type="submit" value="Send" class="btn btn-theme">Send message</button>
                            </form>                  
                        </article><!--//contact-form-->
                        <aside class="page-sidebar  col-md-3 col-md-offset-1 col-sm-4 col-sm-offset-1">
                           
                            
                            <section class="widget has-divider">
                                <h3 class="title">Postal Address</h3>
                                <p class="adr">
                                    <span class="adr-group">       
                                        <span class="street-address"></span>Sahjanand Education <br>
                                    <span class="region">Vallabhvidhya Nagar,Anand</span><br>
                                    <span class="postal-code">388120</span><br>
                                    <span class="country-name">India</span>
                                    </span>
                                </p>
                            </section><!--//widget-->     
                            
                            <section class="widget">
                                <h3 class="title">All Enquiries</h3>
                                <p class="tel"><i class="fa fa-phone"></i>Tel: 084 60 421800</p>
                                <p class="email"><i class="fa fa-envelope"></i>Email: <a href="mailto:desaimehul94@gmail.com">desaimehul94@gmail.com</a></p>
                            </section>   
                        </aside><!--//page-sidebar-->
                    </div><!--//page-row-->
                    <div class="page-row">
                        <article class="map-section">
                            <h3 class="title">How to find us</h3>
                            <div id="map">
                                 <!DOCTYPE html>
            <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=true">
            </script>


<script
src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
</script>

<script>
var myCenter=new google.maps.LatLng(22.55524184,72.9288125);

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:18,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker=new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>


<div id="googleMap" style="width:925px;height:295px;"></div>
<div id="googleMap" style="width:925px;height:295px;"></div>


                            </div><!--//map-->
                        </article><!--//map-->
                    </div><!--//page-row-->
                </div><!--//page-content-->
            </div><!--//page-wrapper--> 
        </div><!--//content-->
        </form>
                        
        <button type="submit" class="btn btn-theme">Send message</button>
        </form>  
                        </article>
                    </div>
        </div>
        <%@include file="HomeFooter.jsp" %>
    </body>
</html>
