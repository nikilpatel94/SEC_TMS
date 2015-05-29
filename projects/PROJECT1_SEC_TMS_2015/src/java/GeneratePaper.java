
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
 * @author nikil
 */
public class GeneratePaper extends HttpServlet {

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
          
             try{
                DBCon conobj =new DBCon();
                String build="<div>";
                String fid=(String)request.getSession().getAttribute("fid");
                String fname=(String)request.getSession().getAttribute("fname");
                String testid=(String)request.getSession().getAttribute("TestId");
                String total=(String)request.getSession().getAttribute("totalq");
                String q="";
                String opA="";
                String opB="";
                String opC="";
                String opD="";
                int i;
                if(fid!=null &&fname!=null&& testid!=null) 
//                    && total!=null)
                {
                for(i=1;i<=Integer.parseInt(total);i++)
                {
                    List<Object[]> rs1=null;
                    rs1= conobj.FetchData("SELECT Distinct TestQuestion, TestOption_A, TestOption_B, TestOption_C, TestOption_D FROM db_sec_tms.testquestionmaster where TestIdFK='"+testid+"' AND FacultyIdFK='"+fid+"'AND DisplayStatus='Yes' AND QuestionNumber='"+i+"';");
                    for(Object rowObject:rs1)
                    {
                        build+="<div>";
                        Object[] row=(Object[]) rowObject;
                        if(row[0]!=null)
                        {
                        q=row[0].toString();
                        build+="<hr><ol type=\"A\">Question("+i+")"+q+"<li>";
                        opA=row[1].toString();
                        build+=opA+"</li>";
                        opB=row[2].toString();
                        build+="<li>"+opB+"</li>";
                        opC=row[3].toString();
                        build+="<li>"+opC+"</li>";
                        opD=row[4].toString();
                        build+="<li>"+opD+"</li></ol><hr>";
                        }
                    }
                    build+="</div>";                    
//                    System.out.print("\nQuestion "+i+":\n"+q+"\n"+opA+" "+opB+" "+opC+" "+opD);               
               }
               build+="</div>";
               request.getSession().setAttribute("TestId",testid);;
               response.sendRedirect("Faculty/GeneratePaper.jsp?val="+build);
                }
                else
                {
//                    out.print("Something is wrong!");
                    build="No question s available!";
                }
             }catch(Exception ex)
             {
                   System.out.print(ex.toString());
             } finally {
                 out.print("In finlly!");
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
