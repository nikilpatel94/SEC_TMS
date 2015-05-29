<%-- 
    Document   : LoginFinal
    Created on : Oct 6, 2014, 1:51:12 PM
    Author     : STS1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
         <link href="assets/stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
         
    </head>
      <body>
    
<div class="container"> 
    <hr class="prettyline">
    <br>
    <center>
        <div>
            <a href="../Home/Index1.jsp"><img src="assets/oie_transparent.png" alt="image"></a>
        </div>
    <h1><b>Welcome to Sahajanand Education Center</b></h1>
    <h3>You need to sign in for this service</h3></h3>
    
    <br>
    <br>
  <button class="btn btn-primary btn-lg" href="#signup" data-toggle="modal" data-target=".bs-modal-sm">Sign In</button>
  </center>
  <br>
    <hr class="prettyline">
 </div>
  <em>
      <center> ©ANIMA developers BVM Enginering College V.V.Nagar, Anand-388001,Gujarat, India.</center>
    </em>

<!-- Modal -->

<div class="modal fade bs-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
        <br>
        <div class="bs-example bs-example-tabs">
            <ul id="myTab" class="nav nav-tabs">
              <li class="active"><a href="#signin" data-toggle="tab">Sign In</a></li>
           <!--   <li class=""><a href="#signup" data-toggle="tab">Register</a></li>
              <li class=""><a href="#why" data-toggle="tab">Why?</a></li>-->
            </ul>
        </div>
      <div class="modal-body">
        <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in" id="why">
        <p>We need this information so that you can receive access to the site and its content. Rest assured your information will not be sold, traded, or given to anyone.</p>
        <p></p><br> Please contact <a mailto:href="JoeSixPack@Sixpacksrus.com"></a>JoeSixPack@Sixpacksrus.com</a> for any other inquiries.</p>
        </div>
            <a id='signup' href="#"><div class="tab-pane fade active in" id="signin"></a>
            
            
            <form class="form-horizontal" id="loginform" action="../LoginFinal" method="Post">
<!--                <div class="alert alert-danger">
                        <button type="button" class="close" data-dismiss="alert">×</button>
			<strong>Invalid credentials!</strong> Please check UserId and/or Password.
		</div>-->

            <fieldset>
            <!-- Sign In Form -->
            <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="userid">UserId:</label>
              <div class="controls">
                <input required="" id="username" name="username" type="text" class="form-control" placeholder="UserID" class="input-medium" required="">
              </div>
            </div>

            <!-- Password input-->
            <div class="control-group">
              <label class="control-label" for="passwordinput">Password:</label>
              <div class="controls">
                <input required="" id="password" name="password" class="form-control" type="password" placeholder="Password" class="input-medium">
              </div>
            </div>

            <!-- Multiple Checkboxes (inline) -->
<!--            <div class="control-group">
              <label class="control-label" for="rememberme"></label>
              <div class="controls">
                <label class="checkbox inline" for="rememberme-0">
                  <input type="checkbox" name="rememberme" id="rememberme-0" value="Remember me">
                  Remember me
                </label>
              </div>
            </div>-->

            <!-- Button -->
            <div class="control-group">
              <label class="control-label" for="signin"></label>
              <div class="controls">
                <button id="signin" name="signin" class="btn btn-success" >Sign In</button>
              </div>
            </div>
            
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
                            var str1=document.getElementById("password");
                            var str2=document.getElementById("username");
                            //var str=str1.options[str1.selectedIndex].value;
                            url = "AJAXFetchFacultySubs.jsp";
                            url = url + "?reqid="+str1+"&reqid2="+str2                            
                            document.getElementById("drpFacSubs").innerHTML = "Loading...";
                            
                            xmlhttp.onreadystatechange = dirOutput30;
                            xmlhttp.open("GET", url, true);
                            xmlhttp.send(null);
                        }

                        function dirOutput30()
                        {
                            if (xmlhttp.readyState == 4)
                            {
                                
                                 document.getElementById("drpFacSubs").innerHTML = xmlhttp.responseText;
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

                    

            
            </fieldset>
            </form>
        </div>
        <div class="tab-pane fade" id="signup">
            <form class="form-horizontal">
            <fieldset>
            <!-- Sign Up Form -->
            <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="Email">Email:</label>
              <div class="controls">
                <input id="Email" name="Email" class="form-control" type="text" placeholder="JoeSixpack@sixpacksrus.com" class="input-large" required="">
              </div>
            </div>
            
            <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="userid">Alias:</label>
              <div class="controls">
                <input id="userid" name="userid" class="form-control" type="text" placeholder="JoeSixpack" class="input-large" required="">
              </div>
            </div>
            
            <!-- Password input-->
            <div class="control-group">
              <label class="control-label" for="password">Password:</label>
              <div class="controls">
                <input id="password" name="password" class="form-control" type="password" placeholder="********" class="input-large" required="">
                <em>1-8 Characters</em>
              </div>
            </div>
            
            <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="reenterpassword">Re-Enter Password:</label>
              <div class="controls">
                <input id="reenterpassword" class="form-control" name="reenterpassword" type="password" placeholder="********" class="input-large" required="">
              </div>
            </div>
            
            <!-- Multiple Radios (inline) -->
            <br>
            <div class="control-group">
              <label class="control-label" for="humancheck">Humanity Check:</label>
              <div class="controls">
                <label class="radio inline" for="humancheck-0">
                  <input type="radio" name="humancheck" id="humancheck-0" value="robot" checked="checked">I'm a Robot</label>
                <label class="radio inline" for="humancheck-1">
                  <input type="radio" name="humancheck" id="humancheck-1" value="human">I'm Human</label>
              </div>
            </div>
            
            <!-- Button -->
            <div class="control-group">
              <label class="control-label" for="confirmsignup"></label>
              <div class="controls">
                <button id="confirmsignup" name="confirmsignup" class="btn btn-success">Sign Up</button>
              </div>
            </div>
            </fieldset>
            </form>

      </div>
    </div>
      </div>
      <div class="modal-footer">
      <center>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </center>
      </div>
    </div>
  </div>
</div>
<%@include file="Footer.jsp" %>
    </body>
    
</html>
