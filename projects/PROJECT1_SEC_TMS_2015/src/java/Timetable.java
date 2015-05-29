/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.tms.DBCon;
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
public class Timetable extends HttpServlet {

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
        
         String tid= request.getParameter("TimeTableId");  
         String fid= request.getParameter("drpFacultyId");  
         String sbid= request.getParameter("drpSubjectId");  
         String stime= request.getParameter("txtStartTime");  
         String etime= request.getParameter("txtEndTime");  
         String wday= request.getParameter("drpWeekDay");  
         String eday= request.getParameter("txtExecutingDay");  
         String dstatus= request.getParameter("drpStatus");  
         String str="";
         String std=request.getParameter("drpStd");  
         String btn= request.getParameter("btnProceed");
        try {
             DBCon conobj= new DBCon();
            if(btn.equals("Save"))
            {
              //   List<Object[]> rs17=null;
               //   rs17= conobj.FetchData("SELECT * FROM `db_sec_tms`.`timetable` where  FacultyIdFK='"+fid+"' AND WeekDay='"+wday+"' AND(StartTime='"+stime+"' OR EndTime='"+etime+"')");
               // for(Object rowObject17:rs17)
               // {
                     
                         
                 //         Object[] row17=(Object[]) rowObject17;
                   //         if(rs17!=null)
                     /*       {
                                tid=row17[0].toString();
                                str="This faculty is already occupied with Timetable ID "+tid+".";
                                response.sendRedirect("Admin/DisplayTimeTable.jsp?resid=1&str="+str);
                                break;
                            }
                            
                            else{
                  */
                                str=conobj.INSUPDEL("INSERT INTO `db_sec_tms`.`timetable` (`FacultyIdFK`, `SubjectIdFK`, `StartTime`, `EndTime`, `WeekDay`, `ExecutingDate`, `DisplayStatus`,`Std`) VALUES ('"+fid+"', '"+sbid+"', '"+stime+"', '"+etime+"', '"+wday+"', '"+eday+"', '"+dstatus+"','"+std+"'); "); 
                                response.sendRedirect("Admin/DisplayTimeTable.jsp?resid=1&str="+str);
                  
                           // }
                            
                    //}
                }
                
            
            else if(btn.equals("Update"))
            {
                str=conobj.INSUPDEL("UPDATE `db_sec_tms`.`timetable` SET `SubjectIdFK` = '"+sbid+"' , `StartTime` = '"+stime+"' , `EndTime` = '"+etime+"' , `WeekDay` = '"+wday+"' , `ExecutingDate` = '"+eday+"' , `DisplayStatus` = '"+dstatus+"', `Std`='"+std+"' WHERE `TimeTableId` = '"+tid+"';"); 
                response.sendRedirect("Admin/DisplayTimeTable.jsp?resid=2&str="+str);
            }
           else  if(btn.equals("Delete"))
            {
                str=conobj.INSUPDEL("DELETE FROM `db_sec_tms`.`timetable` WHERE `TimeTableId` = '"+tid+"'; ");        
                response.sendRedirect("Admin/DisplayTimeTable.jsp?resid=3&str="+str);
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
