<%-- 
    Document   : MaterialManagement
    Created on : May 13, 2015, 11:59:24 AM
    Author     : LENOVO
--%>
<%@page  import="java.util.List" %>
<%@page  import="com.tms.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Material Details</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
      
        <form action="MaterialManagement.jsp" class="panel form-horizontal">
         <div class="panel-heading">
                <strong><span class="panel-title">View Discussion</span></strong>
            </div>
            <div class="panel-body">  
    <div class="row">
        
      
       <div class="col-md-12">
                        <section>
                            <div class="panel panel-primary">
                                <div class="panel-heading"><i class="fa fa-file-text"></i>Materials</div>
                                <table class="table table-striped">
                        <tr>
                            <!--<th>No</th>-->
                            <th>Subject Name</th>
                            <th>Material Name</th>
                            <th>Date</th>
                            <th>Download</th>
                        </tr>
                <%
                DBCon conobj1= new DBCon();
                     String no="";
                     String sbname="";
                       String mname="";
                        String date="";
                         String dwn="";
                        
                                 try
                {
       
            List<Object[]> rs1=null;
                    rs1=conobj.FetchData("select s.`SubjectName`,m.`MaterialName`,m.`UploadedDate`,m.`Material` from `materialmanagement` m,`subjectmaster` s where s.`Std`='"+std+"' and m.`SubjectIdFK`=s.`SubjectId`");

                    for(Object rowObject:rs1)
                     {
                        Object[] row=(Object[]) rowObject;
                        
                        if(row[0]!= null)
                        sbname=row[0].toString();
                        if(row[1]!= null)
                        mname=row[1].toString();
                        if(row[2]!= null)
                        date=row[2].toString();
                        if(row[3]!= null)
                        dwn=row[3].toString();
                    %>
                        <tr>
                            <!--<td><%=no%></td>-->
                            <td><%=sbname%></td>
                            <td><%=mname%></td>
                            <td><%=date%></td>
                            <td><b> <a href="../FileUpload/FacultyMaterialUpload/<%=dwn%>" download>Download</a></b></td>
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
                    
                    
            
<!--             <div class="panel-footer text-center">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="text-center">No</th>
                            <th class="text-center">Subject Name</th>
                            <th class="text-center">Material Name</th>
                            <th class="text-center">Date</th>
                            <th class="text-center">Download</th>
                        </tr>
                    </thead>
                    <tbody>
                      <%
//                        GenFun genobj= new GenFun();
//                       String buildtbl=genobj.filltbl("select m.`MaterialId`,s.`SubjectName`,m.`MaterialName`,m.`UploadedDate`,m.`Material` from `materialmanagement` m,`subjectmaster` s where s.`Std`='"+std+"' and m.`SubjectIdFK`=s.`SubjectId`", 6, "");
//                       out.print(buildtbl);
//                       out.flush();
                        %>
                    </tbody>
                </table>

            </div>-->
 
                         </div>
           <%@include file="Footer.jsp" %>
        
    </body>
</html>
