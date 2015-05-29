/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.tms.DBCon;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nikil
 */
public class TestQuestionMaster extends HttpServlet {

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
//        Enumeration<String> parameterNames = request.getParameterNames();
//
//            while (parameterNames.hasMoreElements()) {
//
//String paramName = parameterNames.nextElement();
//out.write(paramName);
//out.write("n");
//
//String[] paramValues = request.getParameterValues(paramName);
//for (int i = 0; i < paramValues.length; i++) {
//String paramValue = paramValues[i];
//out.write("t" + paramValue);
//out.write("n");
//}
//
//}
        
        String ctr=request.getParameter("pgctr");        
        String btn="";
        String qno="";
        String str="";
        try {
            btn=request.getParameter("btnProceed");
            if(btn!=null && btn.equals("SetQuestions"))
            {
                
                if(ctr!=null && Integer.parseInt(ctr)==0 )
                {
                
                qno=request.getParameter("txtQuestionNo");
                HttpSession s=request.getSession();
                String testid=request.getParameter("drpTestId");
                System.out.println("\n\nTestId is:"+testid);
                s.setAttribute("totalq",qno );
                s.setAttribute("TestId",testid);
                response.sendRedirect("Faculty/TestQuestionMaster.jsp?pgctr="+(Integer.parseInt(ctr)+1));
                }
            }
            else if(btn!=null && btn.equals("Next Question")  )
            {
                String testid=((String)(request.getSession().getAttribute("TestId")));
                //int testid=0;//Integer.parseInt(tid);
                String pg=request.getParameter("pgctr");
                String question=request.getParameter("txtTestQuestion");
                String opA=request.getParameter("txtOptionA");
                String opB=request.getParameter("txtOptionB");
                String opC=request.getParameter("txtOptionC");
                String opD=request.getParameter("txtOptionD");
                String ans=request.getParameter("radioAns");
                String fid=(String)(request.getSession().getAttribute("fid"));
                DBCon conobj= new DBCon();
//                System.out.println(testid+" "+pg+" "+question+" "+opA+" "+opB+" "+opC+" "+opD+" "+ans+" "+fid);
//                out.print("Suceess!");
                    str=conobj.INSUPDEL("INSERT INTO `db_sec_tms`.`testquestionmaster` (`TestIdFK`, `FacultyIdFK`, `TestQuestion`,`TestOption_A`,`TestOption_B`,`TestOption_C`,`TestOption_D`,`TestAnswer`,`DisplayStatus`,`QuestionNumber`) VALUES ('"+testid+"', '"+fid+"', '"+question+"','"+opA+"','"+opB+"','"+opC+"','"+opD+"','"+ans+"','Yes','"+pg+"');"); 

                    response.sendRedirect("Faculty/TestQuestionMaster.jsp?str="+str+"&pgctr="+(Integer.parseInt(ctr)+1));
            }
            
            
            else if(btn!=null && btn.equals("Prev. Question")  )
            {
                
            }
        } 
            catch(Exception ex)
        {
            out.print(ex.toString());
        }finally {
            out.close();
            //response.sendRedirect("Faculty/TestQuestionMaster.jsp?pgctr=1");
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
