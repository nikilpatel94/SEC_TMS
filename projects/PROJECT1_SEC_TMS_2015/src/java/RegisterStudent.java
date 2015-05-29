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
import javax.servlet.http.Part;

/**
 *
 * @author Nikil
 */
public class RegisterStudent extends HttpServlet {
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
            String sstandard=request.getParameter("drpStandard");
            String sname=request.getParameter("txtStudentName");
            String sadd=request.getParameter("txtStudentAddress");
            String scno=request.getParameter("txtStudentContactNo");
            String sdob=request.getParameter("txtStudentDOB");
            String semail=request.getParameter("txtStudentEmail");
            String sschool=request.getParameter("txtStudentSchool");
            Part sphoto=request.getPart("flStudentPhoto");
            String spname=request.getParameter("txtStudentParentName");
            String spemail=request.getParameter("txtStudentParentEmail");
            String spcno=request.getParameter("txtStudentParentContactNo");
            String sstatus="yes";
            String stype=request.getParameter("radStudentType");
            String btn= request.getParameter("btnProceed");
            String str="";
            
            DBCon conobj= new DBCon();
            if("Send".equals(btn))
            {
               str=conobj.INSUPDEL("INSERT INTO `db_sec_tms`.`studentmaster_temp` (`StudentName`, `StudentAddress`, `StudentEmail`, `StudentContactNo`, `StudentDOB`, `StudentParentName`, `StudentParentContactNo`, `StudentParentEmail`, `StudentSchool`, `StudentPhoto`, `DisplayStatus`, `StudentType`, `Std`) VALUES ('"+sname+"', '"+sadd+"', '"+semail+"', '"+scno+"', '"+sdob+"', '"+spname+"', '"+spcno+"', '"+spemail+"', '"+sschool+"', '"+sphoto+"', '"+sstatus+"', '"+stype+"','"+sstandard+"'); ");
               if(str=="Success")
                   response.sendRedirect("Home/Registration.jsp?resid=1&str="+str);
            }
        }catch(Exception ex)
        {
            out.println(ex.toString());
        }
        finally {
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
