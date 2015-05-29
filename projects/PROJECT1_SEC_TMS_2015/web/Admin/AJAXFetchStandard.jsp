<%-- 
    Document   : AJAXFetchStudentsAttandance
    Created on : Feb 10, 2015, 1:03:34 PM
    Author     : Administrator
--%>
<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>

                        <%
     
                GenFun genobj=new GenFun();
                String stuid="";
                String builddrpsub="";

                                
                 if(request.getParameter("reqid")!=null)
                {
                    stuid=request.getParameter("reqid").toString();
                    builddrpsub= genobj.filldrp("select distinct StudentId,Std from studentmaster where StudentId='"+stuid+"'","");
                    if(builddrpsub!="")
                    {
                        out.print("<option >Select Standard</option>");
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
                 out.print(builddrpsub);
                 out.flush();
%>