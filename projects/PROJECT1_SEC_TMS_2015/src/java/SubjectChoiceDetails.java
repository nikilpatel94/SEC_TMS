/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.tms.DBCon;
import com.tms.General;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author STS
 */
public class SubjectChoiceDetails extends HttpServlet {

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
        
        String scid=request.getParameter("SubjectChoiceId");
        String btn= request.getParameter("btnProceed");
        String dsbid= request.getParameter("drpSubjectId");
        String dstid= request.getParameter("drpStudentId");
        String str="";
        String stdfee="";
        String stid="";
        DBCon conobj= new DBCon();
        try {
           
            /*int sid=0;
            double totalfees=0.0;
            double subfee=0.0;
            
            
            List<Object[]> rs1=null;
            rs1= conobj.FetchData("SELECT StudentIdFK,TotalAmount FROM studentfeesdetail where StudentFeeId='"+dstid+"'  "); 
            for(Object rowObject:rs1)
            {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                    sid=Integer.parseInt(row[0].toString());
                    stdfee=row[1].toString();
            }
             
             
           if(stid!=null) 
           {
               totalfees=Double.parseDouble(stdfee);
           }
           
           rs1=null;
           rs1= conobj.FetchData("SELECT SubjectFees FROM SubjectFees where SubjectId='"+dsbid+"'  "); 
           for(Object rowObject:rs1)
            {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                        subfee=Double.parseDouble(row[0].toString());
            }
           
           totalfees=subfee+Double.parseDouble(stdfee);
           
           
           
           */
            if(btn.equals("Save"))
            {
                str=conobj.INSUPDEL("INSERT INTO `db_sec_tms`.`subjectchoicedetails` (`SubjectIdFK`, `StudentIdFK`) VALUES ('"+dsbid+"', '"+dstid+"'); "); 
                //out.print("insert");
               response.sendRedirect("Admin/DisplaySubjectChoice.jsp?resid=1&str="+str);
            }
            else if(btn.equals("Update"))
            {
                str=conobj.INSUPDEL("UPDATE `db_sec_tms`.`subjectchoicedetails` SET `SubjectChoiceId`='"+scid+"', `SubjectIdFK`='"+dsbid+"', `StudentIdFK`='"+dstid+"' WHERE `SubjectChoiceId` = '"+scid+"');"); 
                response.sendRedirect("Admin/DisplaySubjectChoice.jsp?resid=2&str="+str);
            }
           else  if(btn.equals("Delete"))
            {
                str=conobj.INSUPDEL("DELETE FROM `db_sec_tms`.`subjectchoicedetails` WHERE `SubjectChoiceId` = '"+scid+"'; ");        
                response.sendRedirect("Admin/DisplaySubject.jsp?resid=3&str="+str);
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
