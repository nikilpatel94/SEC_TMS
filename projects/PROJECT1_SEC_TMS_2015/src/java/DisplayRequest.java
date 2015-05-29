/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.tms.DBCon;
import com.tms.General;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author STS1
 */
public class DisplayRequest extends HttpServlet {

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
        try {
             String reqid=request.getParameter("ReqId");
            String reqname=request.getParameter("txtReqName");
            String reqmobile=request.getParameter("txtReqMobile");
  String reqemail=request.getParameter("txtReqEmail");
   String reqfor=request.getParameter("drpRequestFor");
    String reqdesc=request.getParameter("txtRequestDescription");
     String reqstatus=request.getParameter("drpReqStatus");
      String reqanswer=request.getParameter("txtReqAnswer");
       String str="";
        String btn= request.getParameter("btnProceed");
            DBCon conobj= new DBCon();
            General gobj=new General();
          String mailSub="Response from SEC ADMIN";
            if(btn.equals("Update"))
            {
              
            str=conobj.INSUPDEL("UPDATE `db_sec_tms`.`requestmaster` SET `Status` = '"+reqstatus +"' ,`Answer` = '"+reqanswer+"' WHERE `Id` = '"+reqid+"';");
            if(str.equals("Success") || str .equals("success"))
              {
                  str=gobj.sendMail(reqemail, mailSub, reqanswer,"A","");
              }
            response.sendRedirect("Admin/index.jsp?resid=2&str="+str);

            }
            else  if(btn.equals("Delete"))
            {
               str=conobj.INSUPDEL("DELETE FROM `db_sec_tms`.`requestmaster` WHERE `Id` = '"+reqid+"'; ");
               response.sendRedirect("Admin/index.jsp?resid=3&str="+str);
            }       
          
        } finally { 
            out.close();
        }
    }    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

    

   

