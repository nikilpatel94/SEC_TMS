<%-- 
    Document   : calander
    Created on : Mar 29, 2015, 11:07:01 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <script>
					init.push(function () {
						var options = {
							todayBtn: "linked",
							orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
						}
						$('#bs-datepicker-example').datepicker(options);

						$('#bs-datepicker-component').datepicker();

						var options2 = {
							orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
						}
						$('#bs-datepicker-range').datepicker(options2);

						$('#bs-datepicker-inline').datepicker();
					});
				</script>
				<!-- / Javascript -->

				<div class="panel">
					
					<div class="panel-body">
						<hr class="panel-wide">

						<!-- As component -->
						<h6 class="text-muted text-semibold text-xs" style="margin:20px 0 10px 0;">AS COMPONENT</h6>

						<div class="input-group date" id="bs-datepicker-component">
							<input type="text" class="form-control"><span class="input-group-addon"><i class="fa fa-calendar"></i></span>
						</div>

						

					</div>
				</div>
        <%@include file="Footer.jsp" %>
    </body>
</html>
