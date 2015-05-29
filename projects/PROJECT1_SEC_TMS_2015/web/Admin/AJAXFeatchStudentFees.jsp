<%-- 
    Document   : FeatchStudentFees
    Created on : May 21, 2015, 9:25:03 PM
    Author     : LENOVO
--%>

<%@page import="java.util.List"%>
<%@page import="com.tms.*"%>

 <%

     System.out.print("Inside");
                DBCon conobj =new DBCon();
                List<Object[]> rs1=null;
                String sid= request.getParameter("reqid");
                String totamt="";
                String buildrow="";
                String remain="";
                String inputbox="<div class=\"row\"><div class=\"col-sm-4\"><div class=\"form-group no-margin-hr\"><label for=\"jq-validation-text\" class=\"control-label\">Total Amount</label><input type=\"text\" name=\"txtTotalAmount\" id=\"txtTotalAmount\" class=\"form-control\" value=\"";
                String inputbox1="<div class=\"col-sm-4\"><div class=\"form-group no-margin-hr\"><label for=\"jq-validation-text\" class=\"control-label\">Remaining Amount</label><input type=\"text\" name=\"txtRemainingAmount\" id=\"txtRemainingAmount\" class=\"form-control\" value=\"";
                String inputbox2="<div class=\"col-sm-4\"><div class=\"form-group no-margin-hr\"><label for=\"jq-validation-text\" class=\"control-label\">Paid Amount</label><input type=\"text\" name=\"txtPaidAmount\" id=\"txtPaidAmount\" class=\"form-control\" value=\"";
               
    try{
                 if(request.getParameter("reqid")!=null)
                {
                    // sfid=request.getParameter("reqid").toString();r
                    //query here with two variables
                rs1= conobj.FetchData("select DISTINCT sfd.TotalAmount,sfd.RemainingAmount from studentmaster stm, studentfeesdetail sfd where sfd.StudentIdFK='"+sid+"'");

                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                        totamt=row[0].toString();
                        remain=row[1].toString();
                    
                        inputbox+=totamt+"\" readonly>";
                        inputbox1+=remain+"\" readonly>";
                        inputbox2+="\" >";
                        //inputbox+=totamt+"\" readonly></input></div >(here is div of paid amt)(here is new division with remaing amt that is fetched same as above)";
                       // inputbox+=totamt+"\" readonly></input></div >";
                    }
               }
                 //conditionon two variable here
                 //if((sid.equals("") || sid==null)&& (remainig amt.eqausl))
                  buildrow+=inputbox+"</div>"+"</div>"+inputbox1+"</div>"+"</div>"+inputbox2+"</div>"+"</div>";
                     if((sid.equals("") || sid==null))
                 {
                     inputbox+="\" readonly placeholder=\"N/A\"></input>";
                     inputbox1+="\" readonly placeholder=\"N/A\"></input>";
                     //inputbox+="\" readonly placeholder=\"N/A\"></input>(div of paid amt)(another div for remaingn athat is fetched with value N/A)";
                     out.print(inputbox);
                     out.print(inputbox1);
                 }
                     
                 else
                 {    
                     out.print(buildrow);
                 }

}catch(Exception e)
               {}


        %>