
<%-- 
    Document   : ViewSubject
    Created on : 15 Mar, 2015, 1:47:13 PM
    Author     : Hp
--%>

<%@page import="java.text.*" %>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Info.</title>
    </head>
    <body>
        <%@include file="HomeHader.jsp" %>
        <form action="ViewSubject.jsp" method="post">
       
                <%
                DBCon conobj= new DBCon();
                     String sid="";
                      String subname="";
                       String subfees="";
                            String std="";
                            String fname="";
                            String fphoto="";
                                 try
                {
       
       if(request.getParameter("reqid")!=null)
            {
           
            List<Object[]> rs1=null;
                    rs1=conobj.FetchData("SELECT a.SubjectId,a.SubjectName,a.SubjectFees,b.FacultyName,a.Std,b.FacultyPhoto FROM facultymaster b,facultysubjectdetail c,subjectmaster a WHERE a.`SubjectId`=c.`SubjectIdFK` AND c.`FacultyIdFK`=b.`FacultyId` AND a.DisplayStatus='Yes' AND b.DisplayStatus='Yes' AND a.Std='"+request.getParameter("reqid").toString()+"'");

//where Std='"+request.getParameter("drpStd").toString() +"'
                    for(Object rowObject:rs1)
                     {
                        Object[] row=(Object[]) rowObject;
                        if(row[0]!= null)
                        sid=row[0].toString();
                        if(row[3]!= null)
                        fname=row[3].toString();
                        if(row[1]!= null)
                        subname=row[1].toString();
                        if(row[2]!= null)
                        subfees=row[2].toString();
                        if(row[4]!= null)
                        std=row[4].toString();
                        if(row[5]!= null)
                        fphoto=row[5].toString();
                    %>
                   
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-2">
            <section>
                Faculty's Photo<br>
                <img src="../FileUpload/FacultyPhotos/<%=fphoto%>" alt="avatar" class="img-responsive imageborder">
            </section>
            
        </div>
        <div class="col-md-8">
            <section>
                <div class="panel panel-primary">
                    <div class="panel-heading"><i class="fa fa-file-text"></i>  General Information of Subject</div>
                    <table class="table table-striped">
                        <tr>
                             <th>Faculty Name</th>
                            <td><%=fname%></td>
                            
                        </tr>
                         <tr>
                             <th>Standard</th>
                            <td><%=std%></td>
                            
                        </tr>
                        <tr>
                           <th>Subject Name</th>
                            <td><%=subname%></td>
                        </tr>
                        <tr>
                            <th>Subject Fee</th>
                            <td><%=subfees%></td>
                        </tr>
                    </table>
                </div>
            </section>
                        <br><br>

         
        </div>
    </div>

                
                
                 
                    
                    <%
                         }



            }
                else
                {
                     List<Object[]> rs1=null;
                    rs1=conobj.FetchData("SELECT a.SubjectId,a.SubjectName,a.SubjectFees,b.FacultyName,a.Std,b.FacultyPhoto FROM facultymaster b,facultysubjectdetail c,subjectmaster a WHERE a.`SubjectId`=c.`SubjectIdFK` AND c.`FacultyIdFK`=b.`FacultyId` AND a.DisplayStatus='Yes' AND b.DisplayStatus='Yes'");
                    for(Object rowObject:rs1)
                     {
                        Object[] row=(Object[]) rowObject;
                        if(row[0]!= null)
                        sid=row[0].toString();
                        if(row[3]!= null)
                        fname=row[3].toString();
                        if(row[1]!= null)
                        subname=row[1].toString();
                        if(row[2]!= null)
                        subfees=row[2].toString();
                        if(row[4]!= null)
                        std=row[4].toString();
                        if(row[5]!= null)
                        fphoto=row[5].toString();                    
               
                    %>
               <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-2">
            <section>
                Faculty's Photo<br>
                <img src="../FileUpload/FacultyPhotos/<%=fphoto%>" alt="avatar" class="img-responsive imageborder">
            </section>
            
        </div>
        <div class="col-md-8">
            <section>
                <div class="panel panel-primary">
                    <div class="panel-heading"><i class="fa fa-file-text"></i>  General Information of Subject</div>
                    <table class="table table-striped">
                        <tr>
                             <th>Faculty Name</th>
                            <td><%=fname%></td>
                            
                        </tr>
                         <tr>
                             <th>Standard</th>
                            <td><%=std%></td>
                            
                        </tr>
                        <tr>
                           <th>Subject Name</th>
                            <td><%=subname%></td>
                        </tr>
                        <tr>
                            <th>Subject Fee</th>
                            <td><%=subfees%></td>
                        </tr>
                    </table>
                </div>
            </section>
                        <br><br>

         
        </div>
    </div>

         
            
            
            
            <%
             }
                }
                
                
               }
        catch(Exception ex)
                {
                    out.print("Error");
            %>
           


            <%
            }



        %> 
                    
                    
                    
                    
                    
         </form>           

        
        <%@include file="HomeFooter.jsp" %>
    </body>
</html>
