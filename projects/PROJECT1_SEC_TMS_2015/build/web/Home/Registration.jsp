<%-- 
    Document   : Registertion
    Created on : 2 Nov, 2014, 2:27:25 PM
    Author     : Mehul
--%>

<%@page import="com.tms.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register yourself</title>
    </head>
    <body>
        <%@include file="HomeHader.jsp"%>
        <script language="javascript" type="text/javascript">
               function validate()
     {
   //name
        if(document.getElementById("txtStudentName").value=="")
     {
         alert("Please Enter Your Name");
         document.getElementById("txtStudentName").focus();
         return false;
     }
     if(!(isNaN(document.validation.txtStudentName.value)))
     {
         alert("Name has character only!");
         return false;
     }
     
     //contect
     if(document.getElementById("txtStudentContactNo").value=="")
     {
         alert("Please Enter Your Mobile Number");
         document.getElementById("txtStudentContactNo").focus();
         return false;
     }
     if((isNaN(document.validation.txtStudentContactNo.value)))
     {
         alert("Mobile has numeric only!");
         return false;
     }
     
     //email
     var emailPat=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
     var emailid=document.getElementById("txtStudentEmail").value;
     var matchArray = emailid.match(emailPat);
     if (matchArray == null)
     {
         alert("Your email address is wrong. Please try again.");
         document.getElementById("txtStudentEmail").focus();
         return false;
     }
     
     //  DOB
     if(document.getElementById("txtStudentDOB").value=="")
     {
         alert("Please Enter Date of Birth");
         document.getElementById("txtStudentDOB").focus();
         return false;
     }
     //school
      if(document.getElementById("txtStudentSchool").value=="")
     {
         alert("Please Enter Your School Name");
         document.getElementById("txtStudentSchool").focus();
         return false;
     }
     if(!(isNaN(document.validation.txtStudentSchool.value)))
     {
         alert("Name has character only!");
         return false;
     }
     
      //parent name
        if(document.getElementById("txtStudentParentName").value=="")
     {
         alert("Please Enter Your Parent Name");
         document.getElementById("txtStudentParentName").focus();
         return false;
     }
     if(!(isNaN(document.validation.txtStudentParentName.value)))
     {
         alert("Name has character only!");
         return false;
     }
     
     //parent contect
     if(document.getElementById("txtStudentParentContactNo").value=="")
     {
         alert("Please Enter Your Mobile Number");
         document.getElementById("txtStudentParentContactNo").focus();
         return false;
     }
     if((isNaN(document.validation.txtStudentParentContactNo.value)))
     {
         alert("Mobile has numeric only!");
         return false;
     }
     
     //address
       if(document.getElementById("txtStudentAddress").value=="")
     {
         alert("Please Enter your Address");
         document.getElementById("txtStudentAddress").focus();
         return false;
     }
     return true;
 }
 </script>
      
        <form  action="../RegisterStudent" name="validation" method="post" onsubmit="return validate();" enctype="multipart/form-data">

            <div class="content container">
                <div class="page-wrapper">
                    <header class="page-heading clearfix">
                        <h1 class="heading-title pull-left">Apply Now</h1>
                    </header> 
                    <div class="page-content">
                        <div class="row page-row">
                            <article class="contact-form col-md-8 col-sm-7  page-row">  

                                <div class="panel-body">
                                 
                                    <blockquote>
                                            <label class="control-label">Select Standard *</label>   
                                            <div class="row">
                                    <div class="col-sm-2">
                                        <select id="drpStandard" name="drpStandard" class="form-control">
                                         <option value="11">11</option>
                                         <option value="12">12</option>
                                    
                                        </select>
                                    </div>
                                    </div>
                                        </blockquote>
                                                                        
                                        <br>
                                        
<!--                                        <blockquote>
                                            <label class="control-label">Subject Choice</label>   
                                            <div class="checkbox">-->
<%
/*    try{
    GenFun obj=new GenFun();
    String q="SELECT SubjectId,SubjectName,SubjectFees from subjectmaster;";
    String buildCheck= obj.fillCheck(q);
    out.print(buildCheck);
    out.flush();
    }catch(Exception ex)
    {
        out.print(ex.toString());
    }
*/
%>                                           
<!--                                        </blockquote>
                                        
                                        <blockquote>
                                            <script language="javascript" type="text/javascript">
                                                var total;
                                                var str="";
                                             function checkTotal(amt,id){
                                                 str= str+"\n"+(id+":"+amt);
                                                 document.getElementById("invisible").innerHTML =str;
                                                    if(document.getElementByName(id).checked=== true)
                                                    {
                                                             total=toal+amt;
                                                    }
                                                    else if(document.getElementByName(id).checked === false)
                                                    {
                                                             if(amt>0)
                                                                total=total-amt;
                                                    }
                                                    else{
                                                        document.getElementById("invisible").innerHTML = "N/A";
                                                    }
                                                    document.getElementById("invisible").innerHTML = total;
                                            }
                                        </script>
                                        
                                            <label class="control-label">Fee Details</label>   
                                            <section class="widget has-divider">
                                        <h3 class="title"></h3>
                                        
                                        <p class="adr" id="invisible">
                                            <span class="adr-group">       
                                            <span class="street-address" ></span> <br>
                                            <span class="region" ></span><br>
                                            <span class="postal-code" ></span><br>
                                            <span class="country-name"></span>
                                            </span>
                                        </p>
                                </section>//widget     
                                            
                                        </blockquote>
                                        
                                        
                                        
                                        
                                        
                                        
                                     -->
                                     
                                <blockquote> 
                                    <div class="form-group no-margin-hr">
                                        <label class="control-label">Name *</label>
                                        <input type="text" name="txtStudentName" id="txtStudentName" class="form-control">
                                    </div>

                                    <div class="form-group no-margin-hr">
                                        <label class="control-label">Contact No. *</label>
                                        <input type="text" name="txtStudentContactNo" id="txtStudentContactNo" class="form-control">
                                    </div>

                                    <div class="form-group no-margin-hr">
                                        <label  class="control-label">Email Id *</label>
                                        <input type="text" name="txtStudentEmail" id="txtStudentEmail" class="form-control">
                                    </div>

                                    <div class="form-group no-margin-hr">
                                        <label  class="control-label">Date Of Birth *</label>
                                        <input type="text" name="txtStudentDOB" id="txtStudentDOB" class="form-control" placeholder="YYYY-MM-DD">                    
                                    </div>

                                    <div class="form-group no-margin-hr">
                                        <label class="control-label">School *</label>
                                        <input type="text" name="txtStudentSchool" id="txtStudentSchool" class="form-control">
                                    </div>

                                    <div class="form-group no-margin-hr">
                                        <label class="control-label">Photo *</label>
                                        <input type="file" name="flStudentPhoto"  id="flStudentPhoto" class="form-control">
                                    </div>

                                    <div class="form-group no-margin-hr">
                                        <label  class="control-label">Parent's Name *</label>
                                        <input id="txtStudentParentName" name="txtStudentParentName" class="form-control" type="text" />
                                    </div>

                                    <div class="form-group no-margin-hr">
                                        <label  class="control-label">Parent's Contact No *</label>
                                        <input type="text" name="txtStudentParentContactNo"  id="txtStudentParentContactNo" class="form-control">
                                    </div>

                                    <div class="form-group no-margin-hr">
                                        <label class="control-label">Parent's Email *</label>
                                        <input type="text" name="txtStudentParentEmail" id="txtStudentParentEmail" class="form-control">
                                    </div>

                                    <div class="form-group no-margin-hr">
                                        <label class="control-label">Address *</label>
                                        <textarea class="form-control"
                                                  id="txtStudentAddress"  name="txtStudentAddress" cols="20" rows="3"></textarea>
                                    </div>

                          </blockquote>
                                    
                         <blockquote>

                                     <div class="form-group no-margin-hr">
                   <label class="control-label">Subscription *</label>
                    <div class="radio">
                            <label class="">Full
                             <input type="radio" name="radStudentType" id="radStudentType" value="Full" checked>
                             </label>
                      </div>
                   <div>
                             <input type="radio" name="radStudentType" id="radStudentType" value="Partial" >
                             <label class="">Partial</label>

                       </div>
                                     </div>
                          </blockquote>

                                    <button name="btnProceed" type="submit" value="Send" class="btn btn-theme">Submit</button>

                                </div>

                                </form>
                            </article>
                            <aside class="page-sidebar  col-md-3 col-md-offset-1 col-sm-4 col-sm-offset-1">
                                <!--                            <section class="widget has-divider">
                                                                <h3 class="title">Download Prospectus</h3>
                                                                <p>Donec pulvinar arcu lacus, vel aliquam libero scelerisque a. Cras mi tellus, vulputate eu eleifend at, consectetur fringilla lacus. Nulla ut purus.</p>
                                                                <a class="btn btn-theme" href="#"><i class="fa fa-download"></i>Download now</a>
                                                            </section>//widget   -->

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
                        </div>

                    </div>
                </div>
            </div>

            <%@include file="HomeFooter.jsp" %>
    </body>
</html>
