<%-- 
    Document   : AJAXFetchFacultySubs
    Created on : 13 Feb, 2015, 10:44:47 PM
    Author     : nikil
--%>

<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>

 <%
     
                GenFun genobj=new GenFun();
                String std="",fid="";
                String buildtable="";
                
               if(request.getParameter("reqid")!=null &&request.getParameter("reqid2")!=null)
                {
                    std=request.getParameter("reqid").toString();
                  fid=request.getParameter("reqid2");
                    String builddrpsub= genobj.filldrp("select distinct SubjectId,SubjectName from subjectmaster sb,facultysubjectdetail fsd where fsd.FacultyIdFK='"+fid+"'  and fsd.SubjectIdFK=sb.SubjectId and sb.Std='"+std+"' ","");
                    if(builddrpsub!="")
                    {
                        out.print("<option >Select Subject</option>");
                        out.print(builddrpsub);
                    }
                    else
                        out.print("<option >N/A</option>");
                    System.out.println(builddrpsub);
                    out.flush();
                                           
                }
        
               else{
                   out.print("<option >Error</option>");
            }
        
        %>
        
         <%
                       // String buildtbl=genobj.filltbl("select StudentId,StudentName,StudentContactNo,StudentEmail,StudentParentName,StudentParentContactNo from studentmaster",7 , "StudentMaster");
                       out.print(buildtable);
                       out.flush();

                        %>
