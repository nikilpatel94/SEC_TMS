/*
 * To change this template, choose Tools | Templates
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
 * @author Stellans TechnoSoft
 */
public class FacultyMaster extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
        try {
            String facid=mpr.getParameter("FacultyId");
            String facname=mpr.getParameter("txtFacultyName");
            String facAdd=mpr.getParameter("txtFacultyAddress");
            String faccontct=mpr.getParameter("txtFacultyContact");
            String facemial=mpr.getParameter("txtFacultyEmail");
            String facqulification=mpr.getParameter("txtFacultyQulification");
            String facsal=mpr.getParameter("txtFacultySalary");
            String facex=mpr.getParameter("txtFacultyEx");
            String facstatus=mpr.getParameter("drpStatus");
            String facphoto="";
            String extphoto=mpr.getParameter("txtPhoto");
            if(mpr.getFile("flFacultyPhoto")!=null)
                 facphoto= mpr.getFile("flFacultyPhoto").getName().toString();
//            String funame=mpr.getParameter("txtFacultyUserName");;
//            String fpass=mpr.getParameter("txtFacultyPassword");;;
            String str="";
            String btn= mpr.getParameter("btnProceed");
            DBCon conobj= new DBCon();
            if(btn.equals("Save"))
            {
            str=conobj.INSUPDEL("INSERT INTO `db_sec_tms`.`facultymaster`(`FacultyName`, `FacultyAddress`, `FacultyEmail`, `FacultyContactNo`, `FacultyQualification`, `FacultyExperience`, `FacultyPhoto`, `DisplayStatus`, `Salary`) VALUES ('"+facname+"', '"+facAdd+"', '"+facemial+"', '"+faccontct+"', '"+facqulification+"', '"+facex+"', '"+facphoto+"', '"+facstatus+"', '"+facsal+"'); ");
            if(str.equals("Success"))
                str=conobj.INSUPDEL("INSERT INTO `db_sec_tms`.`login` (`UserName`,`Password`,`UserType`) VALUES ('"+facemial+"','"+faccontct+"','F'); ");
            response.sendRedirect("Admin/DisplayFaculty.jsp?resid=1&str="+str);
            }
            else  if(btn.equals("Update"))
            {

               if( facphoto.toString()!="" && facphoto!=null)
                    {
                        
                        
                    }
                    else
                        facphoto=extphoto;
            str=conobj.INSUPDEL("UPDATE `db_sec_tms`.`facultymaster` SET `FacultyName` = '"+facname+"' , `FacultyAddress` = '"+facAdd+"' , `FacultyEmail` = '"+facemial+"' , `FacultyContactNo` = '"+faccontct+"' , `FacultyQualification` = '"+facqulification+"' , `FacultyExperience` = '"+facex+"' , `FacultyPhoto` = '"+facphoto+"' , `DisplayStatus` = '"+facstatus+"' , `Salary` = '"+facsal+"' WHERE `FacultyId` = '"+facid+"'; ");
            response.sendRedirect("Admin/DisplayFaculty.jsp?resid=2&str="+str);

            }
            else  if(btn.equals("Delete"))
            {
               str=conobj.INSUPDEL("DELETE FROM `db_sec_tms`.`facultymaster` WHERE `FacultyId` = '"+facid+"'; ");
               response.sendRedirect("Admin/DisplayFaculty.jsp?resid=3&str="+str);

     
     
            }

 
           
          
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
