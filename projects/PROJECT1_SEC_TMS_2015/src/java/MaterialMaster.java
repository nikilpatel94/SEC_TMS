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
 * @author nikil
 */
public class MaterialMaster extends HttpServlet {

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
            MultipartRequest mpr=new MultipartRequest(request,"F:\\project\\SEC\\mid sem\\PROJECT1_SEC_TMS_2015\\web\\FileUpload\\FacultyMaterialUpload",1024*1024*200);        
            String mid= mpr.getParameter("MaterialId");
            String fid=mpr.getParameter("FacultyIdFK");
            String mname= mpr.getParameter("txtMaterialName");  
            String subid= mpr.getParameter("drpFacSubs");  
            String mtype= mpr.getParameter("txtMaterialType");  
            String mdec= mpr.getParameter("txtMaterialDescription");  
            String mdate= mpr.getParameter("txtMaterialDate");  
            String mstatus= mpr.getParameter("drpStatus");  
            int mstd;  
             mstd = Integer.parseInt(mpr.getParameter("drpStd"));
            String mcontent= "";  
            String str= "";
            if(mpr.getFile("flFile")!=null)
                 mcontent= mpr.getFile("flFile").getName().toString();
            String btn= mpr.getParameter("btnProceed");
         
            
        try {
        DBCon conobj= new DBCon();
            if(btn.equals("Save"))
            {
            str=conobj.INSUPDEL("INSERT INTO `db_sec_tms`.`materialmanagement`(`MaterialName`, `SubjectIdFK`, `FacultyIdFK`, `Material`, `UploadedDate`, `DisplayStatus`, `MaterialDiscription`, `MaterialType`,`Standard`) VALUES ('"+mname+"', '"+subid+"', '"+fid+"', '"+mcontent+"', '"+mdate+"', '"+mstatus+"', '"+mdec+"', '"+mtype+"','"+mstd+"'); ");
               response.sendRedirect("Faculty/DisplayMaterial.jsp?resid=1&str="+str);
                //out.print("inserted");
            }
            else if(btn.equals("Update"))
            {
//                  if( sphoto.toString()!="" && sphoto!=null)
//                    {
//                        
//                        
//                    }
//                    else
//                        sphoto=extphoto;
                
                str=conobj.INSUPDEL("UPDATE `db_sec_tms`.`materialmanagement` SET `MaterialName` = '"+mname+"' , `SubjectIdFK` = '"+subid+"' , `FacultyIdFK` = '"+fid+"' , `Material` = '"+mcontent+"' , `UploadedDate` = '"+mdate+"' , `DisplayStatus` = '"+mstatus+"' , `MaterialDiscription` = '"+mdec+"' , `MaterialType` = '"+mtype+"' ,`Standard`='"+mstd+"'  WHERE `MaterialId` = '"+mid+"'; ");
                response.sendRedirect("Faculty/DisplayMaterial.jsp?resid=1&str="+str);
            }
           else  if(btn.equals("Delete"))
            {
                   str=conobj.INSUPDEL("DELETE FROM `db_sec_tms`.`materialmanagement` WHERE `MaterialId` = '"+mid+"'; ");
                response.sendRedirect("Faculty/DisplayMaterial.jsp?resid=1&str="+str);
            }
            
        }catch(Exception ex) 
        {
            str=ex.toString();
            response.sendRedirect("Faculty/DisplayMaterial.jsp?resid=1&str="+str);
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
