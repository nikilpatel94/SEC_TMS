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
   <%
        try
                {
            if(request.getParameter("resid")!=null && request.getParameter("str")!=null)
            {
                if(request.getParameter("str").toString().equals("Success"))
                {
            if(request.getParameter("resid").toString().equals("2"))
                {
                    
                %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Link uploaded Successfully!!!.
</div>
                <%
                }
            else if(request.getParameter("resid").toString().equals("1"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> Link Updated Successfully!!!.
</div>
                <%

                }

            else if(request.getParameter("resid").toString().equals("3"))
                {
                 %>

                <div class="alert  alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Success!</strong> link Deleted Successfully!!!.
</div>
                <%

                }
            else
                {

                }
                }
                else
                {%>
             <div class="alert  alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Error!</strong><%=request.getParameter("str").toString()%>
    </div>              
                <%}
            }
}
        catch(Exception ex)
                {%>
            <div class="alert  alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Error!</strong> <% ex.printStackTrace(); %> !!!.
</div>
<% 
                }
%>

        <%
              request.getSession().setAttribute("fid",fid);
              request.getSession().setAttribute("fname",fname);
        %>
        	<div>
				<div class="panel panel-dark panel-light-green">
					<div class="panel-heading">
						<span class="panel-title"><i class="panel-title-icon fa fa-book"></i>You have lectures today</span>
<!--						<div class="panel-heading-controls">
							<ul class="pagination pagination-xs">
								<li><a href="#">«</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">»</a></li>
							</ul>  / .pagination 
						</div>  / .panel-heading-controls -->
					</div> <!-- / .panel-heading -->
                                       


                                        <%
                                            String tid="";
                                            String subject="";
                                            String std="";
                                            String start="";
                                            String end="";
                                            String buildtbl="";
                                            GenFun genobj=new GenFun();
                                            String qry="SELECT  b.TimeTableId,a.SubjectName,a.Std,b.StartTime,b.EndTime from timetable b, subjectmaster a where b.DisplayStatus='Yes' and b.FacultyIdFK='"+fid+"' and a.SubjectId=b.SubjectIdFK and b.WeekDay='"+day+"'";
                                            buildtbl=genobj.filltbl(qry, 6,"LectureLink");
                                            
                                        %>
					<table class="table">
						<thead>
							<tr>
                                                                <th>link</th>
                                                                <th>Time-Table ID</th>
								<th>Subject</th>
                                                                <th>Standard</th>
								<th>Start Time</th>
								<th>End Time</th>
							</tr>
						</thead>
						<tbody class="valign-middle">
<%
                                         out.print(buildtbl);
                                         out.flush();
      
%>
						</tbody>
					</table>
				</div> <!-- / .panel -->
			</div>
                                                
            
                                                
                                                
<%
                                         String[] subs;
                                         qry="";
                                       //  conobj.FetchData("")
                                         
%>                                
                                                

<!--        				<script>
					init.push(function () {
						var uploads_data = [
							{ day: '2014-03-10', v: 20 },
							{ day: '2014-03-11', v: 10 },
							{ day: '2014-03-12', v: 15 },
							{ day: '2014-03-13', v: 12 },
							{ day: '2014-03-14', v: 5  },
							{ day: '2014-03-15', v: 5  },
							{ day: '2014-03-16', v: 20 }
						];
						Morris.Line({
							element: 'hero-graph',
							data: uploads_data,
							xkey: 'day',
							ykeys: ['v'],
							labels: ['Value'],
							lineColors: ['#fff'],
							lineWidth: 2,
							pointSize: 4,
							gridLineColor: 'rgba(255,255,255,.5)',
							resize: true,
							gridTextColor: '#fff',
							xLabels: "day",
							xLabelFormat: function(d) {
								return ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov', 'Dec'][d.getMonth()] + ' ' + d.getDate(); 
							},
						});
					});
				</script>-->
				<!-- / Javascript -->

                                
                                
<%
//            String mid="";
//            String mname="";
//            String mtype="";
//            String mcount="";
//            String str="";
//            double switcher=0.0;
//
//     String query="SELECT MaterialId,MaterialName,MaterialType,count(MaterialType)  FROM db_sec_tms.materialmanagement where DisplayStatus='Yes' and FacultyIdFK='"+fid+"'"+" group by MaterialType ";
//     List<Object[]> rs1=null;
//     rs1=conobj.FetchData(query);
%>                                                
                                
                                

<!--				<div class="stat-panel">
					<div class="stat-row">
						 Small horizontal padding, bordered, without right border, top aligned text 
						<div class="stat-cell col-sm-4 padding-sm-hr bordered no-border-r valign-top">
							 Small padding, without top padding, extra small horizontal padding 
							<h4 class="padding-sm no-padding-t padding-xs-hr"><i class="fa fa-cloud-upload text-primary"></i>&nbsp;&nbsp;Uploads</h4>
							 Without margin 
							<ul class="list-group no-margin">
                                                            -->
<%
//for(Object rowObject:rs1)
//                {
//                    Object[] row=(Object[]) rowObject;
//                    switcher=Math.random();
//                    if(row[0]!=null)
//                    mid=row[0].toString();
//                    mname=row[1].toString();
//                    mtype=row[2].toString();                    
//                    mcount=row[3].toString();

%>                                                            
                                                            
								<!-- Without left and right borders, extra small horizontal padding, without background, no border radius -->
                                                                
<!--								<li class="list-group-item no-border-hr padding-xs-hr no-bg no-border-radius">
								</li>  / .list-group-item -->
                                                                
                                                                
<%
//                } 
%>
								<!-- Without left and right borders, extra small horizontal padding, without background -->
<!--            							<li class="list-group-item no-border-hr padding-xs-hr no-bg">
									Audio <span class="label label-danger pull-right">128</span>
								</li>  / .list-group-item 
								 Without left and right borders, without bottom border, extra small horizontal padding, without background 
								<li class="list-group-item no-border-hr no-border-b padding-xs-hr no-bg">
									Videos <span class="label label-success pull-right">12</span>
								</li>  / .list-group-item -->
							<!--</ul>-->
						<!--</div>  /.stat-cell -->
						<!-- Primary background, small padding, vertically centered text -->
<!--						<div class="stat-cell col-sm-8 bg-primary padding-sm valign-middle">
							<div id="hero-graph" class="graph" style="height: 230px;"></div>
						</div>-->
					<!--</div>-->
				<!--</div>  /.stat-panel -->

        <%@include file="Footer.jsp" %>
    </body>
</html>
