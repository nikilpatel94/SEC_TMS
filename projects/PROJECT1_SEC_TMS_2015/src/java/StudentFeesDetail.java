/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.tms.DBCon;
import com.tms.TRYSMS;
import com.tms.General;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author STS
 */
public class StudentFeesDetail extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         String sfid= request.getParameter("StudentFeeId");
         String dsid= request.getParameter("drpStudentId");  
         //String stamount= request.getParameter("txtTotalAmount");
         String spamount= request.getParameter("txtPaidAmount");  
        // String sramount= request.getParameter("txtRemainingAmount");  
         String sdop= request.getParameter("txtDateOfPayment");  
         String spdetail= request.getParameter("txtPaymentDetail");  
         String dpmode= request.getParameter("drpPaymentMode");  
         String str="";
         String str1="";
         String contect="";
         String msg="";
         String btn= request.getParameter("btnProceed");
        double totalfees=0.0;
        double remainingfees=0.0;
        
        
        try {
             DBCon conobj= new DBCon();
             General gobj=new General();
             TRYSMS obj1=new TRYSMS();
           totalfees=gobj.calculateFees(Integer.parseInt(dsid));
           remainingfees= totalfees-Double.parseDouble(spamount);
        
            if(btn.equals("Save"))
            {
               str=conobj.INSUPDEL("INSERT INTO `db_sec_tms`.`studentfeesdetail` (`StudentIdFK`, `TotalAmount`, `PaidAmount`, `RemainingAmount`, `DateOfFeePayment`, `PaymentDetail`, `PaymentMode`) VALUES ('"+dsid+"', '"+totalfees+"', '"+spamount+"', '"+remainingfees+"', '"+sdop+"', '"+spdetail+"', '"+dpmode+"'); "); 
                response.sendRedirect("Admin/DisplayStudentFee.jsp?resid=1&str="+str);
                if(str.equals("Success"))
                {
                     List<Object[]> rs1=null;
                    rs1=conobj.FetchData("SELECT `studentmaster`.`StudentParentContactNo`,`studentfeesdetail`.`PaidAmount`,`studentfeesdetail`.`PaymentDetail` FROM `studentfeesdetail`,`studentmaster` WHERE `studentmaster`.`StudentId`='"+dsid+"'");
                    for(Object rowObject:rs1)
                     {
                        Object[] row=(Object[]) rowObject;
                        if(row[0]!= null)
                        contect=row[0].toString();
                        if(row[1]!= null)
                        spamount=row[1].toString();
                        if(row[2]!= null)
                        spdetail=row[2].toString();
                     }
//                    str1="SELECT `studentmaster`.`StudentParentContactNo` FROM `studentfeesdetail`,`studentmaster` WHERE `studentmaster`.`StudentId`='"+dsid+"'";
//                    System.out.print("str1");
                      obj1.SMSSender("akash","9998596785","91"+contect,"Payment Done."+"\n"+"Amount is "+spamount+" Paid","WEBSMS","0");
                    //obj1.SMSSender("mehul","mehul12345","91"+contect,"Payment Done."+"\n"+"Amount is "+spamount+" Paid","WEBSMS","0");
                }
            }
            else if(btn.equals("Update"))
            {
                str=conobj.INSUPDEL("UPDATE `db_sec_tms`.`studentfeesdetail` SET  `StudentIdFK`='"+dsid+"', `TotalAmount`='"+totalfees+"', `PaidAmount`='"+spamount+"', `RemainingAmount`='"+remainingfees+"', `DateOfFeePayment`='"+sdop+"', `PaymentDetail`='"+spdetail+"', `PaymentMode`='"+dpmode+"' WHERE `StudentFeeId` ='"+sfid+"'; "); 
                response.sendRedirect("Admin/DisplayStudentFee.jsp?resid=2&str="+str);
                if(str.equals("Success"))
                {
                     List<Object[]> rs1=null;
                    rs1=conobj.FetchData("SELECT `studentmaster`.`StudentParentContactNo`,`studentfeesdetail`.`PaidAmount`,`studentfeesdetail`.`PaymentDetail` FROM `studentfeesdetail`,`studentmaster` WHERE `studentmaster`.`StudentId`='"+dsid+"'");
                    for(Object rowObject:rs1)
                     {
                        Object[] row=(Object[]) rowObject;
                        if(row[0]!= null)
                        contect=row[0].toString();
                        if(row[1]!= null)
                        spamount=row[1].toString();
                        if(row[2]!= null)
                        spdetail=row[2].toString();
                     }
//                    str1="SELECT `studentmaster`.`StudentParentContactNo` FROM `studentfeesdetail`,`studentmaster` WHERE `studentmaster`.`StudentId`='"+dsid+"'";
//                    System.out.print("str1");
                    obj1.SMSSender("akash","9998596785","91"+contect,"sorry wrong delivary."+"\n"+"Updated payment is"+spamount+"paid","WEBSMS","0");
                    //obj1.SMSSender("mehul","mehul12345","91"+contect,"sorry wrong delivary."+"\n"+"Updated payment is"+spamount+"paid","WEBSMS","0");
                }
            }
           else  if(btn.equals("Delete"))
            {
                str=conobj.INSUPDEL("DELETE FROM studentfeesdetail WHERE `StudentFeeId` = '"+sfid+"'; ");
                response.sendRedirect("Admin/DisplayStudentFee.jsp?resid=3&str="+str);
            }
            
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
