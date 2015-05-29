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
import com.oreilly.servlet.MultipartRequest;

/**
 *
 * @author STS
 */
public class StudentMaster extends HttpServlet {

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
            MultipartRequest mpr=new MultipartRequest(request,"F:\\project\\SEC\\mid sem\\PROJECT_SEC_TMS_2015\\web\\FileUpload\\StudentPhotos\\",1024*1024*10);        
            String sid= mpr.getParameter("StudentId");
            String sname= mpr.getParameter("txtStudentName");  
            String sadd= mpr.getParameter("txtStudentAddress");  
            String semail= mpr.getParameter("txtStudentEmail");  
            String scno= mpr.getParameter("txtStudentContactNo");  
            String sdob= mpr.getParameter("txtStudentDOB");  
            String spname= mpr.getParameter("txtStudentParentName");  
            String spcno= mpr.getParameter("txtStudentParentContactNo");  
            String spemail= mpr.getParameter("txtStudentParentEmail");  
            String sschool= mpr.getParameter("txtStudentSchool");  
            String sphoto="";
               String extphoto=mpr.getParameter("txtPhoto");
            if(mpr.getFile("flStudentPhoto")!=null)
                 sphoto= mpr.getFile("flStudentPhoto").getName().toString();
//            String suname=mpr.getParameter("txtStudentUserName");;
//            String spass=mpr.getParameter("txtStudentPassword");;;
            String sstatus= mpr.getParameter("drpStatus");  
            String stype= mpr.getParameter("radStudentType"); 
            String sstd= mpr.getParameter("drpStd"); 
            String str="";
            String btn= mpr.getParameter("btnProceed");
         
            
        try {
        DBCon conobj= new DBCon();
            if(btn.equals("Save"))
            {
               str=conobj.INSUPDEL("INSERT INTO `db_sec_tms`.`studentmaster` (`StudentName`, `StudentAddress`, `StudentEmail`, `StudentContactNo`, `StudentDOB`, `StudentParentName`, `StudentParentContactNo`, `StudentParentEmail`, `StudentSchool`,`StudentPhoto`, `DisplayStatus`, `StudentType`,`Std`) VALUES ('"+sname+"', '"+sadd+"', '"+semail+"', '"+scno+"', '"+sdob+"', '"+spname+"', '"+spcno+"', '"+spemail+"', '"+sschool+"', '"+sphoto+"', '"+sstatus+"', '"+stype+"','"+sstd+"'); "); 
               if(str.equals("Success"))
                str=conobj.INSUPDEL("INSERT INTO `db_sec_tms`.`login` (`UserName`,`Password`,`UserType`) VALUES ('"+spemail+"','"+spcno+"','S'); ");
               response.sendRedirect("Admin/DisplayStudent.jsp?resid=1&str="+str);
                //out.print("inserted");
            }
            else if(btn.equals("Update"))
            {
                  if( sphoto.toString()!="" && sphoto!=null)
                    {
                        
                        
                    }
                    else
                        sphoto=extphoto;
                
                str=conobj.INSUPDEL("UPDATE `db_sec_tms`.`studentmaster` SET `StudentName` = '"+sname+"', `StudentAddress`='"+sadd+"', `StudentEmail`='"+semail+"', `StudentContactNo`='"+scno+"', `StudentDOB`='"+sdob+"', `StudentParentName`='"+spname+"', `StudentParentContactNo`='"+spcno+"', `StudentParentEmail`='"+spemail+"', `StudentSchool`='"+sschool+"', `StudentPhoto`='"+sphoto+"', `DisplayStatus`='"+sstatus+"', `StudentType`='"+stype+"',`Std`='"+sstd+"' WHERE `StudentId` = '"+sid+"'; "); 
                response.sendRedirect("Admin/DisplayStudent.jsp?resid=2&str="+str);
            }
           else  if(btn.equals("Delete"))
            {
                str=conobj.INSUPDEL("DELETE FROM `db_sec_tms`.`studentmaster` WHERE `StudentId` = '"+sid+"'; ");        
                response.sendRedirect("Admin/DisplayStudent.jsp?resid=3&str="+str);
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
