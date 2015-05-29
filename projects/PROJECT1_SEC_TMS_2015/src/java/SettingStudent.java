/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.oreilly.servlet.MultipartRequest;
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
public class SettingStudent extends HttpServlet {

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
      MultipartRequest mpr=new MultipartRequest(request,"F:/project/SEC/mid sem/PROJECT1_SEC_TMS_2015/web/FileUpload/StudentPhotos",1024*1024*10);        
        try {
            String sid=mpr.getParameter("StudentId");
            String sname=mpr.getParameter("txtStudentName");
           // String sAdd=mpr.getParameter("txtFacultyAddress");
            String scontct=mpr.getParameter("txtStudentContact");
            String semail=mpr.getParameter("txtStudentEmail");
            String sdob=mpr.getParameter("txtStudentDOB");
            String sparent=mpr.getParameter("txtStudentParentName");
            String spcontect=mpr.getParameter("txtStudentParentContactNo");
            String school=mpr.getParameter("txtStudentSchool");
            String sphoto="";
            String extphoto=mpr.getParameter("flStudentPhoto");
            if(mpr.getFile("flStudentPhoto")!=null)
                 sphoto= mpr.getFile("flStudentPhoto").getName().toString();
//            String sname=mpr.getParameter("txtFacultyUserName");;
//            String fpass=mpr.getParameter("txtFacultyPassword");;;
            String str="";
            String btn= mpr.getParameter("btnProceed");
            DBCon conobj= new DBCon();
            if(btn.equals("Update"))
        {
                sphoto=extphoto;
            str=conobj.INSUPDEL("UPDATE `db_sec_tms`.`studentmaster` SET `StudentEmail` = '"+semail+"' ,`StudentDOB`='"+sdob+"', `StudentSchool` = '"+school+"' , `StudentPhoto` = '"+extphoto+"' WHERE `StudentId` = '"+sid+"'; ");
//            if(str.equals("Success"))
//            {
//                str=conobj.INSUPDEL("UPDATE `db_sec_tms`.`facultysettings` SET FMailPassword='"+fpass+"' , FMailUserName='"+facemail+"' WHERE UserNameFK='"+funame+"';");
//                                response.sendRedirect("Faculty/index.jsp?resid=1&str="+str);
//
//            }
         }
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
