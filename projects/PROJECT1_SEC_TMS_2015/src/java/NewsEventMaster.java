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
 * @author Nikil's Delly
 */
public class NewsEventMaster extends HttpServlet {

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
 //               MultipartRequest mpr=new MultipartRequest(request,"F:/Final Project Morning/Project_SEC_TMS/web/FileUpload/FacultyPhotos/");        
        try {
            /* TODO output your page here. You may use following sample code. */
            String eid=request.getParameter("EventId");
            String ename=request.getParameter("txtEventName");
            String esub=request.getParameter("txtEventSubject");
            String estart=request.getParameter("txtEventStartTime");
            String eend=request.getParameter("txtEventEndTime");
            String eloc=request.getParameter("txtEventLocation");
            String eexedate=request.getParameter("txtEventExeDate");
            String estatus=request.getParameter("drpStatus");
            String efac=request.getParameter("drpFacultyId");
            String str="";
           String btn= request.getParameter("btnProceed");
            DBCon conobj= new DBCon();
            if(btn.equals("Save"))
            {
            str=conobj.INSUPDEL("INSERT INTO `db_sec_tms`.`eventmaster`(`EventName`, `EventSub`, `EventStartTime`, `EventEndTime`, `EventLocation`, `EventExDate`, `FacultyIdFK`, `DisplayStatus`) VALUES ('"+ename+"', '"+esub+"', '"+estart+"', '"+eend+"', '"+eloc+"', '"+eexedate+"', '"+efac+"', '"+estatus+"'); ");
            response.sendRedirect("Admin/DisplayNewsEvent.jsp?resid=1&str="+str);
         }
            else  if(btn.equals("Update"))
            {
            str=conobj.INSUPDEL("UPDATE `db_sec_tms`.`eventmaster` SET `EventName` = '"+ename+"' , `EventSub` = '"+esub+"' , `EventStartTime` = '"+estart+"' , `EventEndTime` = '"+eend+"' , `EventLocation` = '"+eloc+"', `EventExDate`='"+eexedate+"'  ,`FacultyIdFK`='"+efac+"' , `DisplayStatus` = '"+estatus+"' WHERE `EventId` = '"+eid+"';"); 
            response.sendRedirect("Admin/DisplayNewsEvent.jsp?resid=2&str="+str);
            }
            
            else  if(btn.equals("Delete"))
            {
               str=conobj.INSUPDEL("DELETE FROM `db_sec_tms`.`eventmaster` WHERE `EventId` = '"+eid+"'; ");
               response.sendRedirect("Admin/DisplayNewsEvent.jsp?resid=3&str="+str);
            }

 else
            {
               response.sendRedirect("Admin/DisplayNewsEvent.jsp?resid=3&str="+str);
            }
           
          
        }
        catch(Exception ex){ 
             response.sendRedirect("Admin/DisplayNewsEvent.jsp?resid=3&str="+ex.toString());
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
