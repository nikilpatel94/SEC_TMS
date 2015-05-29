<%-- 
    Document   : index
    Created on : 9 Sep, 2014, 2:41:00 PM
    Author     : STS4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.util.List" %>
<%@page  import="com.tms.*" %>
<!DOCTYPE html>
<html>
<head  profile="http://www.w3.org/2005/10/profile">
<link rel="icon" 
      type="image/png" 
      href="SEC.jpg">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sahajanand Education center</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%--<%@include file="soundtrack.m3u" %>--%>
<!--<embed type="application/x-vlc-plugin"/>-->
        <%
              request.getSession().setAttribute("sid",sid);
              request.getSession().setAttribute("sname",sname);
              
              //out.println(format3);
        %>
        
                   
<!--                <div class="container">
                     <div class="col-sm-4">
                        <div class="form-group no-margin-hr">
                            <label class="control-label" >Standard *</label>
                            <select id="drpStatus" name="drpStd" class="form-control">
                                 <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        
                        </div>
                    </div>-->
<div class="panel-body">
    <div class="row">
        
        <div class="col-md-12">
            <section>
                <div class="panel panel-primary">
                    <div class="panel-heading"><i class="menu-icon fa fa-sitemap"></i>  Today's Lecture</div>
              <div class="panel panel-primary">
                    <table class="table table-striped">
                        <tr>
                            <th>ID</th>
                             <th>Standard</th>
                             <th>Subject</th>
                                <th>Start Time</th>
                                 <th>End Time</th>
                                  <th>Lecture Link</th>
                         </tr>
                           <%
                String tid="";
                                            String subject="";
                                            String start="";
                                            String end="";
                                             String link="";
                                 try
                {
       
//      if(request.getParameter("drpStd")!=null)
//            {
           
            List<Object[]> rs1=null;
                    rs1=conobj.FetchData("SELECT  b.TimeTableId,a.Std,a.SubjectName,b.StartTime,b.EndTime,b.LectureLink from timetable b, subjectmaster a where b.DisplayStatus='Yes' and b.Std='"+std+"' and a.SubjectId=b.SubjectIdFK and b.WeekDay='"+day+"'");

//where Std='"+request.getParameter("drpStd").toString() +"'
                    for(Object rowObject:rs1)
                     {
                        Object[] row=(Object[]) rowObject;
                        if(row[0]!= null)
                        tid=row[0].toString();
                        if(row[1]!= null)
                        std=row[1].toString();
                        if(row[2]!= null)
                        subject=row[2].toString();
                        if(row[3]!= null)
                        start=row[3].toString();
                        if(row[4]!= null)
                        end=row[4].toString();
                        if(row[5]!= null)
                        link=row[5].toString();
                        
                    %>
           
                        <tr>
                            <td><%=tid%></td>
                            <td><%=std%></td>
                            <td><%=subject%></td>
                            <td><%=start%></td>
                            <td><%=end%></td>
                            <td><b><a target="_blank" href="mms://<%=link%>">Link</a></b></td>
                        </tr>
                           <%
                         }
               }
        catch(Exception ex)
                {
            %>
           


            <%
            }



        %> 
                    </table>
                </div>
            </section>
                        <br><br>

         
        </div>
    </div>
                
                
                 
                    
                 
<!--<div>
				<div class="panel panel-dark panel-light-green">
					<div class="panel-heading">
						<span class="panel-title"><i class="panel-title-icon fa fa-book"></i>You have lectures today</span>
						<div class="panel-heading-controls">
							<ul class="pagination pagination-xs">
								<li><a href="#">«</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">»</a></li>
							</ul>  / .pagination 
						</div>  / .panel-heading-controls 
					</div>  / .panel-heading 
                                       


                                        <%
//                                            String tid="";
//                                            String subject="";
//                                            String start="";
//                                            String end="";
//                                            String buildtbl="";
//                                            GenFun genobj=new GenFun();
//                                            String qry="SELECT  b.TimeTableId,a.SubjectName,a.Std,b.StartTime,b.EndTime,b.LectureLink from timetable b, subjectmaster a where b.DisplayStatus='Yes' and b.Std='"+std+"' and a.SubjectId=b.SubjectIdFK and b.WeekDay='"+day+"'";
//                                            buildtbl=genobj.filltbl(qry, 7,"");
                                            
                                        %>
					<table class="table">
						<thead>
							<tr>
                                                                <th>Time-Table ID</th>
								<th>Subject</th>
                                                                <th>Standard</th>
								<th>Start Time</th>
								<th>End Time</th>
                                                                <th>link</th>
							</tr>
						</thead>
						<tbody class="valign-middle">
<%
//                                         out.print(buildtbl);
//                                         out.flush();
      
%>
						</tbody>
					</table>
				</div>  / .panel 
			</div>-->
</div>                       
        <%@include file="Footer.jsp" %>
    </body>
</html>
