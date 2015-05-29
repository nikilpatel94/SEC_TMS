<%-- 
    Document   : ViewFaculty
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
        <form action="ViewFaculty.jsp" method="post">
       
                <%
                DBCon conobj= new DBCon();
                     String fid="";
                      String fname="";
                       String fadd="";
                        String femail="";
                         String fcontact="";
                          String fqua="";
                           String fex="";
                            String fphoto="";
                            String std="";
                                 try
                {
       
//      if(request.getParameter("drpStd")!=null)
//            {
           
            List<Object[]> rs1=null;
                    rs1=conobj.FetchData("SELECT * FROM facultymaster where DisplayStatus='Yes'");

//where Std='"+request.getParameter("drpStd").toString() +"'
                    for(Object rowObject:rs1)
                     {
                        Object[] row=(Object[]) rowObject;
                        if(row[0]!= null)
                        fid=row[0].toString();
                        if(row[1]!= null)
                        fname=row[1].toString();
                        if(row[2]!= null)
                        fadd=row[2].toString();
                        if(row[3]!= null)
                        femail=row[3].toString();
                        if(row[4]!= null)
                        fcontact=row[4].toString();
                        if(row[5]!= null)
                        fqua=row[5].toString();
                        if(row[6]!= null)
                        fex=row[6].toString();
                        if(row[7]!= null)
                        fphoto=row[7].toString();
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
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-2">
            <section>
                <img src="../FileUpload/FacultyPhotos/<%=fphoto%>" alt="avatar" class="img-responsive imageborder">
            </section>
            
        </div>
        <div class="col-md-8">
            <section>
                <div class="panel panel-primary">
                    <div class="panel-heading"><i class="fa fa-user"></i> <%=fname%></div>
                    <table class="table table-striped">
                        <tr>
                            <th>Name</th>
                            <td><%=fname%></td>
                        </tr>
                        <tr>
                            <th>Email</th>
                            <td><%=femail%></td>
                        </tr>
                        <tr>
                            <th>Contact</th>
                            <td><%=fcontact%></td>
                        </tr>
                        
                        <tr>
                            <th>Qualification</th>
                            <td><%=fqua%></td>
                        </tr>
                        <tr>
                            <th>More Info</th>
                            <td><b><a href="FacultyDetails.jsp?fid=<%=fid%>">Click Here</a></b></td>
                        </tr>
                    </table>
                </div>
            </section>
                        <br><br>

         
        </div>
    </div>
                
                
                 
                    
                    <%
                         }



//            }
//                else
//                {
//                    response.sendRedirect("Index1.jsp");
//                }
                    
                
                
               }
        catch(Exception ex)
                {
            %>
           


            <%
            }



        %> 
                    
                    
                    
                    
                    
         </form>           

        
        <%@include file="HomeFooter.jsp" %>
    </body>
</html>
