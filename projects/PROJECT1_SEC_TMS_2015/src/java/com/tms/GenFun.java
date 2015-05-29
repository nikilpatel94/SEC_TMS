/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tms;

import java.util.List;


/**
 *
 * @author Stellans TechnoSoft
 */
public class GenFun {
 DBCon conobj=new DBCon();

    public String filldrp(String qry, String selvalue)
    {
        String builddrp="";
        String selected="";
         try
         {
         List<Object[]> rs=null;
                    rs=conobj.FetchData(qry);
                    String sid=null;
                    String sname=null;

                    for(Object rowObject : rs)
                    {
                    Object[] row=(Object[]) rowObject;
                    sid=row[0].toString();
                    sname=row[1].toString();
                    
                     if(sid.equals(selvalue))
                     {
                        selected="selected";
                        }
                    else
                     {
                      selected="";
                       }
                   builddrp=builddrp + "<option value=\""+sid+"\""+selected+">"+sname+"</option>";
                    }

        }
           catch(Exception ex)
         {
builddrp=ex.getMessage().toString();

         }

return builddrp;



    }
    
    public String fillCheck(String qry)
    {
        String buildchk="";
         try
         {
         List<Object[]> rs=null;
                    rs=conobj.FetchData(qry);
                    String sid=null;
                    String sname=null;
                    String sfee=null;

                    for(Object rowObject : rs)
                    {
                    Object[] row=(Object[]) rowObject;
                    sid=row[0].toString();
                    sname=row[1].toString();
                    sfee=row[2].toString();
                   buildchk=buildchk + " <div class=\"checkbox\"> <label> <input name=\""+sname+"\" type=\"checkbox\" value=\""+sname+"\"onChange=\"checkTotal("+sfee+",'"+sname+"')\"/>"+sname+"</label></div>";
                           }

        }
           catch(Exception ex)
         {
                buildchk=ex.getMessage().toString();

         }

return buildchk;



    }
    
     public String filltbl(String qry, int col,String redirectpagename)
    {    String buildtbl="";
         try
         {
    
         List<Object[]> rs=null;
                    rs=conobj.FetchData(qry);
                   
                    for(Object rowObject : rs)
                    {
                    Object[] row=(Object[]) rowObject;
                      String buildrw="";
                      if(redirectpagename.equals(""))
                      {
                           // buildrw+="<td>"+row[0].toString()+"</td><td>"+row[1].toString()+"</td><td>"+row[2].toString()+"</td><td>"+row[3].toString()+"</td></tr>";
                      }
                      else if(redirectpagename.equals("check"))
                      {
                         buildrw="<tr><td><input type=\"checkbox\" id=\"check"+row[0].toString()+"\"  name=\"check"+row[0].toString()+"\" value='"+row[0].toString()+"' style=\" width:30px ; height:35px\"></td>";
                       
                      }
                      else
                       buildrw=" <tr> <td><a href=\""+redirectpagename+".jsp?reqid="+row[0].toString()+"\">Edit</a></td>";
                        
                      for(int i=0;i<col-1;i++)
                        {
                            buildrw=buildrw+"<td>"+row[i].toString()+"</td>";
                        }
                       buildrw=buildrw+"</tr>";

                    buildtbl=buildtbl+buildrw;
                   }
        }

         catch(Exception ex)
         {
buildtbl=ex.getMessage().toString();

         }

return buildtbl;
    }





}
