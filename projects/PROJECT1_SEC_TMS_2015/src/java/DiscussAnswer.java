/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.tms.DBCon;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LENOVO
 */
public class DiscussAnswer extends HttpServlet {

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
            String sid=request.getParameter("StudetIdFK");
            String ans=request.getParameter("txtAnswer");
             String btn= request.getParameter("btnProceed");
            String stdid=request.getParameter("StudentDiscussionId");
            String date=request.getParameter("txtStudentDate");
            String time=request.getParameter("DiscussionAnswerTime");
            String str="";
        try {
           DBCon conobj= new DBCon();
            if(btn.equals("Save"))
            {
                str=conobj.INSUPDEL("INSERT INTO `db_sec_tms`.`discussionanswer` (`StudentDiscussionIdFK`,`StudetIdFK`, `Answer`,`DiscussionAnswerDate`,`DiscussionAnswerTime`) VALUES ('"+stdid+"','"+sid+"','"+ans+"','"+date+"','"+time+"');"); 
                response.sendRedirect("Student/ViewDiscussion.jsp?resid=1&str="+str);
            }
//             else if(btn.equals("Update"))
//            {
//                 str=conobj.INSUPDEL("INSERT INTO `db_sec_tms`.`discussionanswer` (`StudentDiscussionIdFK`,`StudetIdFK`, `Answer`,`DiscussionAnswerDate`) VALUES ('"+stdid+"','"+sid+"','"+ans+"','"+stdid+"');"); 
//                response.sendRedirect("Student/DiscussAnswer.jsp?resid=2&str="+str);
//            }
//           else  if(btn.equals("Delete"))
//            {
//                str=conobj.INSUPDEL("DELETE FROM `db_sec_tms`.`studentdiscussion` WHERE `StudentDiscussionId` = '"+cdid+"';");        
//                response.sendRedirect("Student/DisaplayCreateDiscussion.jsp?resid=3&str="+str);
//            }
        
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
