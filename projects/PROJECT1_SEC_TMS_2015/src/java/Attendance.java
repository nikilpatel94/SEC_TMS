/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.List;
import com.tms.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nikil
 */
public class Attendance extends HttpServlet {

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
        String fid=request.getParameter("FacultyId");
        String sbid=request.getParameter("drpFacSubs");
        String[] paramkeys = null;
        String str="";
        try {
                Map params = request.getParameterMap();
                Iterator i = params.keySet().iterator();
                //String q="Insert into db_sec_tms.attendancemaster(FacultyIdFK,SubjectIdFK,StudentIdFK,AttendanceDay,AttendanceType) VALUES(";
                
//                 while ( i.hasNext() )
//                 {
//                     //out.print("\n");
//                     String key = (String) i.next();
//                     String value = ((String[]) params.get( key ))[ 0 ];
//                     if(key=="FacultyId" || key=="drpFacSubs")
//                     { 
//                         q+="'"+value+"',";
//                     }
//                     
//                 }
                
               DBCon conobj =new DBCon();
               Date now = new Date(); // java.util.Date, NOT java.sql.Date or java.sql.Timestamp!                
                 //String format1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ").format(now);
               String date_today = new SimpleDateFormat(" yyyy-MM-dd").format(now);
               String day=new SimpleDateFormat("EEEE").format(now);
               String q="";
                 while(i.hasNext())
                 {
                     String key = (String) i.next();
                     String value = ((String[]) params.get( key ))[ 0 ];
//                     for(int k=0;k<3;k++)
//                     {
//                            String key1 = (String) i.next();
//                            String value1 = ((String[]) params.get( key1 ))[ 0 ];
//                            if(k==1) continue;
//                            q+="'"+value1+"',";
//                            
//                     }
                       if(key.contains("check") )
                       {        
                         q="Insert into db_sec_tms.attendancemaster(FacultyIdFK,SubjectIdFK,AttendanceDate,AttendanceDay,StudentIdFK,AttendanceType) VALUES('"+fid+"','"+sbid+"','"+date_today+"','"+day+"',";
                         String sid=request.getParameter(key);
                         q+="'"+sid+"',"+"'P');";
                            
                         if(request.getParameter("btnProceed").equals("Submit"))
                         {
                             str=conobj.INSUPDEL(q);
                         }
                         
//                        while ( i.hasNext() )
//                        {
//                     //out.print("\n");
//                            String key1 = (String) i.next();
//                            String value1 = ((String[]) params.get( key1 ))[ 0 ];
//                            if(key1=="FacultyId" || key1=="drpFacSubs")
//                            {
//                                q+="'"+value1+"',";
//                            }
//                        }
//                         q+="'"+value+"',";
                     }
                       else
                       {
                       
                       }
                   
                     //out.print("\n"+q);
                // }
      
                     //out.print("\nkey:"+key+"\nval:"+value);
                     
               // GenFun genobj=new GenFun();
                
             
               // String format3 = new SimpleDateFormat("yyyyMMddHHmmss").format(now);
               
                 }   
                  if(str.equals("Success"))
                                response.sendRedirect("Faculty/Attendance.jsp?resid=1&str="+str);
                             else
                             {
                                 throw new Exception(str);
                             }
                 
                            
        } catch(Exception ex) {
           //response.sendRedirect("Attendance.jsp?resid=0&str="+str);
            out.print(ex.toString());
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
