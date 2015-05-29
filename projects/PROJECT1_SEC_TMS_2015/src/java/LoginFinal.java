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
import javax.servlet.http.HttpSession;

/**
 *
 * @author STS1
 */
public class LoginFinal extends HttpServlet {

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

             DBCon conobj=new DBCon();
             String uid=request.getParameter("username");
             String upass=request.getParameter("password");
             String utype=null;
            List<Object[]> rs17=null;

             HttpSession hs=request.getSession();
             HttpSession hs1=request.getSession();
             
                    rs17=conobj.FetchData("select * from login where UserName = '"+uid+"' and Password='"+upass+"'");

                   for(Object rowObject17:rs17)
                     {
            Object[] row17=(Object[]) rowObject17;
                    if(rs17!=null)
                    {
                         utype=row17[2].toString();
                         hs.setAttribute("UserName", uid);
                         hs1.setAttribute("utype", utype);
                        if(utype.equals("A"))
                        {
                            response.sendRedirect("Admin/index.jsp");
                        }
                        else if(utype.equals("F"))
                        {
                    response.sendRedirect("Faculty/index.jsp");
                        }
                        else if(utype.equals("S"))
                        {
                            response.sendRedirect("Student/index.jsp");
                        }
                       
//                        else
//                        {
//                            response.sendRedirect("Login.jsp");
//                        }
                    }
                    else
                    {
                        response.sendRedirect("Admin/LoginFinal.jsp?resid=0");
                    }

                     }
                  response.sendRedirect("Admin/LoginFinal.jsp?resid=0");

                  


        } catch(Exception e)
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
