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
import com.oreilly.servlet.MultipartRequest;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author akash
 */
public class FacultyProfileSettings extends HttpServlet {

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
        MultipartRequest mpr=new MultipartRequest(request,"F:\\project\\SEC\\mid sem\\PROJECT_SEC_TMS_2015\\web\\FileUpload\\FacultyPhotos",1024*1024*10);        
        try
        {
        DBCon conobj=new DBCon();
            String facid=mpr.getParameter("FacultyId");
            String funame=mpr.getParameter("FUId");
            String facname=mpr.getParameter("txtFacultyName");
            String facAdd=mpr.getParameter("txtFacultyAddress");
            String faccontct=mpr.getParameter("txtFacultyContact");
            String facemail=mpr.getParameter("txtFacultyEmail");
            String facqulification=mpr.getParameter("txtFacultyQulification");
            String facex=mpr.getParameter("txtFacultyEx");
            String fpass=mpr.getParameter("txtFacultyPassword");
            String str="";
            String facphoto="";
            String extphoto=mpr.getParameter("flFacultyPhoto");
            String btn= mpr.getParameter("btnProceed");

        if(btn.equals("Update"))
        {
                facphoto=extphoto;
            str=conobj.INSUPDEL("UPDATE `db_sec_tms`.`facultymaster` SET `FacultyName` = '"+facname+"' ,`FacultyEmail`='"+facemail+"', `FacultyAddress` = '"+facAdd+"' , `FacultyContactNo` = '"+faccontct+"' , `FacultyQualification` = '"+facqulification+"' , `FacultyExperience` = '"+facex+"' , `FacultyPhoto` = '"+extphoto+"'  WHERE `FacultyId` = '"+facid+"'; ");
            if(str.equals("Success"))
            {
                str=conobj.INSUPDEL("UPDATE `db_sec_tms`.`facultysettings` SET FMailPassword='"+fpass+"' , FMailUserName='"+facemail+"' WHERE UserNameFK='"+funame+"';");
                                response.sendRedirect("Faculty/index.jsp?resid=1&str="+str);

            }
         }
        }catch(Exception e)
        {
            out.print(e.toString());
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
